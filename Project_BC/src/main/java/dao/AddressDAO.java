package dao;

import static db.JdbcUtil.close;

import java.sql.Connection;
import java.sql.PreparedStatement;

import vo.CustomerAddress;
import vo.CustomerBean;

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
				String sql="INSERT INTO customer_address VALUES (?,?,?,?)";
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
	
}
