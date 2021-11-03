package dao;

import static db.JdbcUtil.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.BasketBean;
import vo.CustomerAddress;
import vo.CustomerBean;
import vo.CustomerInfo;
import vo.MemberBean;
import vo.OrderBean;
import vo.ReviewBean;
import vo.orderProductBean;

public class OrderDAO {
	private OrderDAO() {}
	
	private static OrderDAO instance;

	public static OrderDAO getInstance() {
		// 기존의 인스턴스가 존재하지 않을 경우에만 인스턴스를 생성
		if(instance == null) {
			instance = new OrderDAO();
		}
		
		// 인스턴스 리턴
		return instance;
	}
	// ========================================================================
	// DB 작업을 수행하기 위해 사용하는 Connection 타입 멤버변수 선언
	Connection con;

	// Connection 객체를 외부로부터 전달받아 저장하기 위한 Setter 메서드 정의
	public void setConnection(Connection con) {
		this.con = con;
	}
//
//-------------------장바구니에서 상품번호와 일치하는 	
	public BasketBean selectBasket(int num) {
		System.out.println("orderDAO - selectCart()!");
		BasketBean basket = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from basket where product_num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			basket = new BasketBean();
			
			while(rs.next()) {
				basket.setBasket_idx(rs.getInt("basket_idx"));
				basket.setCutomer_id(rs.getString("customer_id"));
				basket.setProduct_num(rs.getInt("product_num"));
				basket.setProduct_name(rs.getString("product_name"));
				basket.setProduct_price(rs.getInt("product_price"));
				basket.setProduct_qty(rs.getInt("product_qty"));
				basket.setProduct_discount(rs.getInt("product_discount"));
				basket.setProduct_img(rs.getString("product_img"));
				
			}
		} catch (Exception e) {
			System.out.println("selectCart() 오류! - "+e.getMessage());
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		
		
		return basket;
	}
	
	
	public ArrayList<CustomerInfo> selectCustomerInfo(String customer_id) {
		System.out.println("orderDAO - selectMemberInfo()!");
		ArrayList<CustomerInfo> customerInfo =null;
		
		PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    
	    try {
			String sql ="select m.id, m.name, c.phone, c.email, ca.customer_roadAddress, ca.customer_zonecode, ca.customer_dtl_addr from member m left join customer c on m.id= c.customer_id join customer_address ca on m.id=ca.customer_id where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, customer_id);
			
			rs = pstmt.executeQuery();
			
			customerInfo = new ArrayList<CustomerInfo>();
			
			while(rs.next()) {
			      // BoardBean 객체를 생성하여 1개 레코드 정보를 BoardBean 객체에 저장
			      // -> 글번호, 작성자, 제목, 날짜, 조회수만 필요
				CustomerInfo customer = new CustomerInfo();         
			      
				customer.setName(rs.getString("name"));
				customer.setEmail(rs.getString("email"));
				customer.setPhone(rs.getString("phone"));
				customer.setRoadAddress(rs.getString("customer_roadAddress"));
				customer.setZonecode(rs.getString("customer_zonecode"));
				customer.setDtl_addr(rs.getString("customer_dtl_addr"));
				
				customerInfo.add(customer); 
			}
	    
	    } catch (Exception e) {
			System.out.println("selectMemberInfo() 오류! - "+e.getMessage());
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return customerInfo;
	}
//--------------------------------------멤버 객체 가져오기 끝
	public int insertOrder(OrderBean order, String[] nums) {
		System.out.println("OrderDAO - insertOrder()!");
		int insertCount = 1;
		
		PreparedStatement pstmt = null;
		int num = 1;
		ResultSet rs = null;
		try {
			// => 만약, 조회된 게시물이 하나도 없을 경우 새 글 번호는 1번 그대로 사용
			String sql = "SELECT MAX(order_num) FROM order_list";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			// 조회된 글 번호가 하나라도 존재할 경우
			if(rs.next()) {
				num = rs.getInt(1) + 1;
				order.setOrder_num(num);
			}
			
			// 다음 작업을 위해 PreparedStatement 객체 반환
			// 하나의 메서드에서 복수개의 PreparedStatement 가 생성되는 것을 방지
			close(pstmt);
			
			sql = "INSERT INTO order_list VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, order.getCustomer_id());
			pstmt.setString(3, order.getShipping_name());
			pstmt.setString(4, order.getShipping_phone());
			pstmt.setString(5, order.getShipping_zonecode());

			pstmt.setString(6, order.getShipping_address());
			pstmt.setString(7, order.getShipping_memo());
			pstmt.setInt(8, order.getOrder_price());
			pstmt.setString(9, order.getPay_method());
			pstmt.setTimestamp(10, order.getOrder_date());
			pstmt.setString(11, order.getOrder_status());
			pstmt.setString(12, order.getTrans_num());
				
			
			
			int insertOrderCount = pstmt.executeUpdate();
			
			if(insertOrderCount>0) {
				sql = "SELECT MAX(order_num) FROM order_product";
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				// 조회된 글 번호가 하나라도 존재할 경우
				if(rs.next()) {
					num = rs.getInt(1) + 1;
					order.setOrder_num(num);
				}
				close(pstmt);
				for(String str : nums) {
					sql = "select * from basket where product_num = ?";
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, Integer.parseInt(str));
					rs = pstmt.executeQuery();
					 
					if(rs.next()) {
						System.out.println("OrderDAO - insertDetailOrder()-2!");

						int qty =  rs.getInt("product_qty");
						
							sql = "insert into order_product values(?,?,?,?)";
							pstmt = con.prepareStatement(sql);
							pstmt.setInt(1, num);
							pstmt.setString(2, order.getCustomer_id());
							
							pstmt.setInt(3, Integer.parseInt(str));
							pstmt.setInt(4, qty);
							
							
							
							insertCount = pstmt.executeUpdate();
						}
						
					}
				}
			
		}
			catch (Exception e) {
			System.out.println("OrderDAO insertOrder() 오류! - " +e.getMessage());
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return insertCount;
		
	}
	
//오더넘에 해당하는 오더리스트 출력

	public OrderBean selectOrderList(int order_num) {
		System.out.println("orderDAO - selectOrderList()!");
		OrderBean order = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from order_list where order_num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, order_num);
			
			rs = pstmt.executeQuery();
			
			order = new OrderBean();
			
			while(rs.next()) {
				order.setOrder_num(rs.getInt("order_num"));
				order.setCustomer_id(rs.getString("customer_id"));
				order.setShipping_name(rs.getString("shipping_name"));
				order.setShipping_phone(rs.getString("shipping_phone"));
				order.setShipping_zonecode(rs.getString("shipping_zonecode"));
				order.setShipping_address(rs.getString("shipping_address"));
				order.setOrder_price(rs.getInt("order_price"));
				order.setPay_method(rs.getString("pay_method"));
				order.setOrder_date(rs.getTimestamp("order_date"));
				order.setOrder_status(rs.getString("order_status"));
				order.setTrans_num(rs.getString("trans_num"));
				
			}
		} catch (Exception e) {
			System.out.println("selectCart() 오류! - "+e.getMessage());
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		
		
		return order;
	}
	
	
	public ArrayList<orderProductBean> selectOrderDetail(int order_num) {
		System.out.println("orderDAO - selectMemberInfo()!");
		ArrayList<orderProductBean> orderProduct =null;
		
		PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    
	    try {
			String sql ="select * from order_product where order_num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, order_num);
			
			rs = pstmt.executeQuery();
			
			orderProduct = new ArrayList<orderProductBean>();
			
			while(rs.next()) {
			      // BoardBean 객체를 생성하여 1개 레코드 정보를 BoardBean 객체에 저장
			      // -> 글번호, 작성자, 제목, 날짜, 조회수만 필요
				orderProductBean order = new orderProductBean();         
			      
				order.setOrder_num(rs.getInt("order_num"));
				order.setCustomer_id(rs.getString("customer_id"));
				order.setProduct_num(rs.getInt("product_num"));
				order.setProduct_stock(rs.getInt("product_stock"));
				
				
				orderProduct.add(order); 
			}
	    
	    } catch (Exception e) {
			System.out.println("selectMemberInfo() 오류! - "+e.getMessage());
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return orderProduct;
	
	}
	
	

}



