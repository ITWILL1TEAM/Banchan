package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import static db.JdbcUtil.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import vo.CustomerBean;
import vo.MemberBean;
import vo.SellerBean;

public class MemberDAO {
	
	private static MemberDAO instance = new MemberDAO();
	
	private MemberDAO() {}

	public static MemberDAO getInstance() {

		return instance;
	}

	Connection con = null;

	public void setConnection(Connection con) {
		this.con = con;
	}

	
	//==================================================================================================
	
	public int insertMember(CustomerBean cBean) {
		
	int insertCount = 0;
		
		PreparedStatement pstmt = null;
		
		try {

			String sql="INSERT INTO member VALUES(?,?,?,?)" ;
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, cBean.getId());
			pstmt.setString(2, cBean.getPassword());
			pstmt.setString(3, cBean.getName());
			pstmt.setInt(4, cBean.getGrade());

			pstmt.executeUpdate();

			close(pstmt);	
					
			sql="INSERT INTO customer VALUES(?,?,?,0,?)" ;
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, cBean.getCostomer_id());
			pstmt.setString(2,cBean.getPhone());
			pstmt.setString(3, cBean.getEamil());
			pstmt.setInt(4, cBean.getPersonal_data());

			insertCount = pstmt.executeUpdate();
	
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			//자원 반환
			close(pstmt);	
		}
		return insertCount;
		
	}

	public int foundRecommandID(String recommendId) {
		PreparedStatement pstmt = null;
		 
		int isFoundSuccess = 0;
		try {

			String sql="UPDATE customer SET recommend_id=recommend_id+1 WHERE customer_id=?" ;
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, recommendId);

			isFoundSuccess = pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			//자원 반환
			close(pstmt);	
		}
		
		
		
		return isFoundSuccess;
	}

	public int insertSeller(SellerBean sBean) {
	int insertCount = 0;
		
		PreparedStatement pstmt = null;
		
		try {

			String sql="INSERT INTO member VALUES(?,?,?,?)" ;
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, sBean.getId());
			pstmt.setString(2, sBean.getPassword());
			pstmt.setString(3, sBean.getName());
			pstmt.setInt(4, sBean.getGrade());

			pstmt.executeUpdate();

			close(pstmt);	
	
					
			sql="INSERT INTO seller VALUES(?,?,?,?,?,?,0)" ;
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, sBean.getSeller_id());
			pstmt.setInt(2,sBean.getsNO());
			pstmt.setString(3, sBean.getsName());
			pstmt.setString(4, sBean.getAdress());
			pstmt.setString(5, sBean.getPhone());
			pstmt.setString(6, sBean.getEmail());

			insertCount = pstmt.executeUpdate();
	
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			//자원 반환
			close(pstmt);	
		}
		return insertCount;
	}

	public boolean dupCheckId(String id) {
		boolean isDuplicate = false;
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = getConnection();
			
			String sql="SELECT id FROM member WHERE id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				// 아이디 붕복 체크 변수값을 true(중복)으로 변경
				isDuplicate = true;
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			//자원 반환
			close(rs);
			close(pstmt);
			close(con);
			
		}
		
		
		return isDuplicate;
	}
	public boolean selectMember(MemberBean member) {
		boolean isLoginSuccess = false;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			// 아이디, 패스워드 모두 전달하여 결과가 조회되면 성공 , 아니면 실패 
			String sql = "SELECT id FROM member WHERE id=? AND password=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,member.getId());
			pstmt.setString(2,member.getPassword());
			
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
					isLoginSuccess = true;
					System.out.println("selectMember - 정상작동");
			}
	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			//자원 반환
			close(rs);
			close(pstmt);
			
		}

		
		
		return isLoginSuccess;
	}
}
