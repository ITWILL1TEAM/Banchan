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
	public int insertOrder(OrderBean order) {
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
			}
			
			// 다음 작업을 위해 PreparedStatement 객체 반환
			// 하나의 메서드에서 복수개의 PreparedStatement 가 생성되는 것을 방지
			close(pstmt);
			
			sql = "INSERT INTO order_list VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, order.getCode());
			pstmt.setInt(2, num);
			pstmt.setString(3, order.getCustomer_id());
			pstmt.setString(4, order.getShipping_name());
			pstmt.setString(5, order.getShipping_phone());
			pstmt.setString(6, order.getShipping_zonecode());
//			pstmt.setString(6, "12345");
			pstmt.setString(7, order.getShipping_address());
			pstmt.setString(8, order.getShipping_memo());
			pstmt.setInt(9, order.getOrder_price());
			pstmt.setString(10, order.getPay_method());
			pstmt.setTimestamp(11, order.getOrder_date());
			pstmt.setString(12, order.getOrder_status());
			pstmt.setString(13, order.getTrans_num());
			
			
			insertCount = pstmt.executeUpdate();
			System.out.println("insertCount : " +insertCount);
		} catch (Exception e) {
			System.out.println("OrderDAO insertOrder() 오류! - " +e.getMessage());
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return insertCount;
	}
	
	
	
	public int insertDetailOrder(int[] nums, String code) {
		System.out.println("OrderDAO - insertDetailOrder()-1!");
		int insertCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int num1=0;

		try {
			String sql = "select * from order_product where order_num=?";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				num1 =  rs.getInt(1)+1;
			}
			for(int str : nums) {
			sql = "select * from basket where num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, str);
			rs = pstmt.executeQuery();
			 
			if(rs.next()) {
				System.out.println("OrderDAO - insertDetailOrder()-2!");
				String customer_id = rs.getString("customer_id");
				String name = rs.getString("product_name");
				int price =  rs.getInt("product_price");
				int cnt =  rs.getInt("product_qty");
		
				String product_num = rs.getString("product_num");
				String main_img = rs.getString("product_img");
				sql = "select * from order_list where code = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setNString(1, code);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					System.out.println("OrderDAO - insertDetailOrder()-3!");

					sql = "insert into order_product values(?,?,?,?,?)";
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, num1);
					pstmt.setString(2, product_num);
					pstmt.setString(3, customer_id);

					pstmt.setInt(4, cnt);
					pstmt.setString(5, main_img);
				
					num1+=1;
					
					
					insertCount = pstmt.executeUpdate();
				}
				
			}
			}
		} catch (Exception e) {
			System.out.println("OrderDAO insertDetailOrder() 오류! - " +e.getMessage());
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return insertCount;
	}
}



