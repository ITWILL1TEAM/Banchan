package dao;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.CustomerAddress;

public class AddressDAO {

private static AddressDAO instance = new AddressDAO();
	
	private AddressDAO() {}

	public static AddressDAO getInstance() {

		return instance;
	}

	Connection con = null;

	public void setConnection(Connection con) {
		this.con = con;
	}
	
	public int insertAddress(CustomerAddress ca) {
		
		int insertCount = 0;
			
			PreparedStatement pstmt = null;
			
			try {
				System.out.println(ca.toString());
				String sql="INSERT INTO customer_address VALUES (?,?,?,?,0)";
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, ca.getCustomerId());
				pstmt.setString(2, ca.getRoadAddress());
				pstmt.setString(3, ca.getZonecode());
				pstmt.setString(4, ca.getDtl_addr());
				
				insertCount = pstmt.executeUpdate();
				
			} catch (Exception e) {
				System.out.println("insertArticle() 오류 - " + e.getMessage());
			}finally {
				//자원 반환
				close(pstmt);	
			}
			return insertCount;
			
		}

	public ArrayList<CustomerAddress> selectAddressList(String id) {
		ArrayList<CustomerAddress> addressList = new ArrayList();

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = getConnection();

			// 3단계. SQL 구문 작성 및 전달
			// -> 글번호(num)에 해당하는 게시물 상세 정보 조회 후 BoardBean 객체에 저장
			String sql = "SELECT * FROM customer_address WHERE customer_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				// 조회된 상세 정보를 BoardBean 객체에 저장
				CustomerAddress address = new CustomerAddress();
				
				address.setCustomerId(rs.getString("customer_id"));
				address.setRoadAddress(rs.getString("customer_roadAddress"));
				address.setZonecode(rs.getString("customer_zonecode"));
				address.setDtl_addr(rs.getString("customer_dtl_addr"));
				address.setAddress_priority(rs.getInt("address_priority"));
				
				addressList.add(address);
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 자원 반환
			close(rs);
			close(pstmt);
		}

		return addressList;
	}
	
}
