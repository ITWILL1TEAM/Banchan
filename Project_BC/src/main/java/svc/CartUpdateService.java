package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.BasketDAO;

public class CartUpdateService {

	public boolean cartUpdate(int product_num, int product_qty, String customer_id) {
		System.out.println("CartUpdateService - cartUpdate()");
		boolean isUpdated = false;
		
		Connection con = getConnection();
		
		BasketDAO dao = BasketDAO.getInstance();
		dao.setConnection(con);
		
		int updateCount = dao.updateCart(product_num, product_qty, customer_id);
		
		if(updateCount > 0) {
			commit(con);
			isUpdated = true;
		} else {
			rollback(con);
		}
		
		close(con);
		
		return isUpdated;
	}

}
