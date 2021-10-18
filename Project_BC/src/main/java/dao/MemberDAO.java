package dao;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.jasper.runtime.ProtectedFunctionMapper;

import vo.CustomerBean;
import vo.MemberBean;
import vo.SellerBean;

public class MemberDAO {

private MemberDAO() {}
	
private static MemberDAO instance;
	
	

	public static MemberDAO getInstance() {
		// 기존의 인스턴스가 존재하지 않을 경우에만 인스턴스를 생성
				if(instance == null) {
					instance = new MemberDAO();
				}
				// 인스턴스 리턴
				return instance;
	}
	
	Connection con;

	// Connection 객체를 외부로부터 전달받아 저장하기 위한 Setter 메서드 정의
	public void setConnection(Connection con) {
		this.con = con;
	}
	
	// DBCP 를 활용하여 Connection Pool 로부터 Connection 객체를 가져와서 리턴하는
	// getConnection() 메서드 정의
	private Connection getConnection() throws Exception {
		// 1, 2단계 작업을 수행하여 Connection 객체 리턴하기
		Context initCtx = new InitialContext();
//		Context envCtx = (Context)initCtx.lookup("java:comp/env");
//		DataSource ds = (DataSource)envCtx.lookup("jdbc/MySQL");
		// 위의 문장을 압축
		DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/MySQL");
		
		Connection con = ds.getConnection();
		
		return con;
	}
	
	// 회원 가입을 위한 insertMember() 메서드 정의
	// => 파라미터 : MemberBean 객체(member), 리턴타입 : int(insertCount)
	public int insertMember(MemberBean member) {
		int insertCount = 0; // INSERT 작업 결과를 저장할 변수
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			// 1, 2단계 작업은 getConnection() 메서드를 통해 수행한 후 Connection 객체 리턴받기
			con = getConnection();
			
			// 3, 4단계를 통해 MemberBean 객체에 저장된 데이터를 mvc_member 테이블에 INSERT
			String sql = "INSERT INTO member_BC VALUES(?,?,?,?,?,0,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getMember_id());
			pstmt.setString(2, member.getMember_pass());
			pstmt.setString(3,member.getMember_name());
			pstmt.setString(4, member.getMember_phone());
			pstmt.setString(5, member.getMember_email());
			pstmt.setString(6, member.getMember_personalData());
			pstmt.setInt(7, member.getMember_grand());
			
			// 4단계. SQL 구문 실행 및 결과 처리
			insertCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 자원 반환
			if(pstmt != null) try { pstmt.close(); } catch(Exception e) {}
			if(con != null) try { con.close(); } catch(Exception e) {}
		}
		
		return insertCount; // 작업 결과 리턴
	}
	
	
	// 로그인 작업을 수행하는 checkUser() 메서드 정의
	// => 파라미터 : 아이디, 패스워드    리턴타입 : boolean(isLoginSuccess)
	public boolean selectMember(String member_id, String member_pass) {
		boolean isLoginSuccess = false;
		
		// getConnection() 메서드를 호출하여 커넥션 풀로부터 Connection 객체 리턴받기
		Connection con = null; 
		PreparedStatement pstmt = null;
		ResultSet rs = null;
				
		try {
			// 1,2 단계 작업 수행
			con = getConnection();
			
			// 3단계. SQL 구문 작성 및 전달
			// => id 에 해당하는 레코드의 pass 컬럼 데이터 검색
			String sql = "SELECT * FROM member_BC WHERE member_id=? AND member_pass=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member_id);
			pstmt.setString(2, member_pass);
			// 4단계. SQL 구문 실행 및 결과 처리
			rs = pstmt.executeQuery();
			
			// if문을 사용하여 ResultSet 객체의 조회 결과 존재 여부 판별
			if(rs.next()) {
				isLoginSuccess = true; // 패스워드 일치
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 자원 반환
			if(rs != null) try { rs.close(); } catch(Exception e) {}
			if(pstmt != null) try { pstmt.close(); } catch(Exception e) {}
			if(con != null) try { con.close(); } catch(Exception e) {}
		}
		
		return isLoginSuccess;
	}

    public boolean selectMember(MemberBean member) {
        boolean isLoginSuccess = false;
        
        // SELECT 작업을 통해 회원 아이디, 패스워드 조회 후 로그인 결과 판별
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
            // 아이디, 패스워드를 모두 전달하여 결과가 조회되면 성공, 아니면 실패
            String sql = "SELECT id FROM member_BC WHERE id=? AND passwd=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, member.getMember_id());
            pstmt.setString(2, member.getMember_pass());
            
            rs = pstmt.executeQuery();
            
            if(rs.next()) { // 조회된 id 값이 있을 경우 로그인 성공
                isLoginSuccess = true;
            }
            
        } catch (SQLException e) {
            System.out.println("MemberDAO - selectMember() 오류 발생!");
            e.printStackTrace();
        } finally {
            close(pstmt);
        }
        
        return isLoginSuccess;
    }
    
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
					
			sql="INSERT INTO costomer VALUES(?,?,?,0,?)" ;
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

			String sql="UPDATE costomer SET recommend_id=recommend_id+1 WHERE costomer_id=?" ;
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
	
	
	
}













