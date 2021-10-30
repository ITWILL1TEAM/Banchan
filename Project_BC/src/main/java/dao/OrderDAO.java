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
	
	//------------------------------멤버 정보 가져오기
//	public ArrayList<MemberBean> selectMemberInfo(String customer_id) {
//		System.out.println("orderDAO - selectMemberInfo()!");
//		ArrayList<MemberBean> memberInfo =null;
//		
//		PreparedStatement pstmt = null;
//	    ResultSet rs = null;
//	    
//	    try {
//			String sql ="select m.id, m.name, c.phone, c.email, ca.customer_roadAddress, ca.customer_zonecode, ca.customer_dtl_addr from member m left join customer c on m.id= c.customer_id join customer_address ca on m.id=ca.customer_id where id=?";
//			pstmt = con.prepareStatement(sql);
//			pstmt.setString(1, customer_id);
//			
//			rs = pstmt.executeQuery();
//			
//			memberInfo = new ArrayList<MemberBean>();
//			while(rs.next()) {
//			      // BoardBean 객체를 생성하여 1개 레코드 정보를 BoardBean 객체에 저장
//			      // -> 글번호, 작성자, 제목, 날짜, 조회수만 필요
//			      MemberBean member = new MemberBean();         
//			      
//			      member.setName(rs.getString("name"));
//			      
//			      memberInfo.add(member);
//			      
//			     }
//	    } catch (Exception e) {
//			System.out.println("selectMemberInfo() 오류! - "+e.getMessage());
//			e.printStackTrace();
//		}finally {
//			close(rs);
//			close(pstmt);
//		}
//		
//		return memberInfo;
//	}
	
//	public ArrayList<CustomerAddress> selectMemberAddress(String customer_id) {
//		System.out.println("orderDAO - selectMemberInfo()!");
//		ArrayList<CustomerAddress> memberAddress =null;
//		
//		PreparedStatement pstmt = null;
//	    ResultSet rs = null;
//	    
//	    try {
//			String sql ="Select * from customer_address where customer_id =?";
//			pstmt = con.prepareStatement(sql);
//			pstmt.setString(1, customer_id);
//			
//			rs = pstmt.executeQuery();
//			
//			memberAddress = new ArrayList<CustomerAddress>();
//			
//			while(rs.next()) {
//			      // BoardBean 객체를 생성하여 1개 레코드 정보를 BoardBean 객체에 저장
//			      // -> 글번호, 작성자, 제목, 날짜, 조회수만 필요
//				CustomerAddress address = new CustomerAddress();         
//			      
//			      address.setRoadAddress(rs.getString("customer_roadAddress"));
//			      address.setZonecode(rs.getString("customer_zonecode"));
//			      address.setDtl_addr(rs.getString("customer_dtl_addr"));
//			      
//			      memberAddress.add(address); 
//			}
//	    } catch (Exception e) {
//			System.out.println("selectMemberInfo() 오류! - "+e.getMessage());
//			e.printStackTrace();
//		}finally {
//			close(rs);
//			close(pstmt);
//		}
//		
//		return memberAddress;
//	}
	
	
	
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
}
//--------------------------------------멤버 객체 가져오기 끝



