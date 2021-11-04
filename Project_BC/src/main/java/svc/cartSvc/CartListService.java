package svc.cartSvc;

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
		
		// 장바구니 목록 조회를 수행하는 getCartList() 메소드 호출
		ArrayList<BasketBean> cartList = null;
		cartList = dao.selectCartList(customer_id);
		
		close(con);
		
		return cartList;
	}

}
