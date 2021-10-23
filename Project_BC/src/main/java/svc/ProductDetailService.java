package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.BoardDAO;
import vo.BoardBean;

public class ProductDetailService {

	// 게시물 1개 상세 정보를 조회를 요청하는 getArticle() 메소드 정의
	public BoardBean getArticle(int board_num) {
		
		BoardBean article = new BoardBean();
		
		Connection con = getConnection();
		
		BoardDAO dao = BoardDAO.getInstance();
		dao.setConnection(con);
		
		// 글 상세 정보 조회를 위해 BoardDAO 객체의 selectArticle() 메소드 호출
		// -> 파라미터 : 글번호(board_num)  리턴타입 : BoardBean(article)
		article = dao.selectArticle(board_num);
		
		close(con);
		
		return article;
	}
	
	
	public void increaseReadcount(int board_num) {
		Connection con = getConnection();
		
		BoardDAO dao = BoardDAO.getInstance();
		dao.setConnection(con);
		
		// 글번호에 대한 조회수 증가를 위해 BoardDAO 객체의 updateReadcount() 메소드 호출
		// -> 파라미터 : 글번호(board_num)  리턴타입 : int(updateCount)
		dao.updateReadcount(board_num);
		
		// 조회수 증가 작업 후 리턴받은 결과값이 0보다 크면 commit, 아니면 roolback 수행
		
		close(con);		
	}
	
	

}
