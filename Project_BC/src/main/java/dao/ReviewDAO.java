package dao;

import static db.JdbcUtil.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import vo.ReviewBean;

public class ReviewDAO {
	private ReviewDAO() {}
		
		private static ReviewDAO instance;
	
		public static ReviewDAO getInstance() {
			// 기존의 인스턴스가 존재하지 않을 경우에만 인스턴스를 생성
			if(instance == null) {
				instance = new ReviewDAO();
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
		
		public int insertReview(ReviewBean review) {
			System.out.println("insertReview");
			int insertCount = 0;
			
			PreparedStatement pstmt = null;
			
			
			try {
				
				// 글 등록 작업을 위한 INSERT 작업 수행
				// => 등록일(board_date)은 now() 함수 활용
				String sql = "INSERT INTO review VALUES (0,?,?,?,?,?,now())";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, review.getProduct_num()); 
				pstmt.setString(2, review.getReview_id());
				pstmt.setString(3, review.getReview_content());
				pstmt.setString(4, review.getReview_img());
				pstmt.setDouble(5, review.getReview_score());
				
				System.out.println(review.getProduct_num());
				System.out.println(review.getReview_id());
				System.out.println(review.getReview_content());
				System.out.println(review.getReview_img());
				System.out.println(review.getReview_score());
				
				// INSERT 구문 실행 및 결과 리턴받기 => insertCount 에 저장
				insertCount = pstmt.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("insertArticle() 오류 - " + e.getMessage());
			} finally {
				// 자원 반환(주의! Connection 객체는 DAO 에서 반환하지 않도록 해야한다!)
//				if(rs != null) try { rs.close(); } catch(Exception e) {}
//				if(pstmt != null) try { pstmt.close(); } catch(Exception e) {}
				
				close(pstmt);
			}
			
			return insertCount;
		}
		
		
		
}
