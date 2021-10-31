package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.BoardDAO;
import vo.*;

public class ProductDetailService {

	// 게시물 1개 상세 정보를 조회를 요청하는 getArticle() 메소드 정의
	public BoardBean getArticle(int product_num) {
		
		BoardBean article = new BoardBean();
		
		Connection con = getConnection();
		
		BoardDAO dao = BoardDAO.getInstance();
		dao.setConnection(con);
		
		// 글 상세 정보 조회를 위해 BoardDAO 객체의 selectArticle() 메소드 호출
		// -> 파라미터 : 글번호(board_num)  리턴타입 : BoardBean(article)
		article = dao.selectArticle(product_num);
		
		close(con);
		
		return article;
	}

	public ProductImg getArticleImg(int product_num) {
	ProductImg article = new ProductImg();
		
		Connection con = getConnection();
		
		BoardDAO dao = BoardDAO.getInstance();
		dao.setConnection(con);
		
		// 글 상세 정보 조회를 위해 BoardDAO 객체의 selectArticle() 메소드 호출
		// -> 파라미터 : 글번호(board_num)  리턴타입 : BoardBean(article)
		article = dao.selectArticleImg(product_num);
		
		close(con);
		
		return article;
	}

}
