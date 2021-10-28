package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;

import dao.BasketDAO;
import vo.BasketBean;


public class AddCartProService {
	
	public boolean AddCart(BasketBean basket) {
		System.out.println("AddCartProService - AddCart()");
		boolean isInsertSuccess = false;
		
		Connection con = getConnection();
		
		BasketDAO dao = BasketDAO.getInstance();
		dao.setConnection(con);
		
		// BasketDAO 객체의 insertBasket() 메소드를 호출하여 장바구니 디비에 추가 작업 수행
		int insertCount = dao.insertBasket(basket);
		
		if(insertCount > 0) {
			commit(con);
			isInsertSuccess = true;
		} else {
			rollback(con);
		}
		
		close(con);
		
		return isInsertSuccess;
	}

}
