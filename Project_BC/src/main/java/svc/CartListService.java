package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import dao.BasketDAO;
import vo.BasketBean;

public class CartListService {

	public ArrayList<BasketBean> getCartList(String customer_id) {
		System.out.println("CartListService - getCartList()");
		
		Connection con = getConnection();
		
		BasketDAO dao = BasketDAO.getInstance();
		dao.setConnection(con);
		
		// 게시물 목록 조회를 수행하는 getArticleList() 메소드 호출
		// -> 파라미터 : 페이지번호(page), 게시물 개수(limit)   리턴타입 : ArrayList<BoardBean> 객체(articleList)
		ArrayList<BasketBean> cartList = null;
		cartList = dao.selectCartList(customer_id);
		
		
		close(con);
		
		return cartList;
	}

}
