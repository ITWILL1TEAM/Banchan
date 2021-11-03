package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.BasketDAO;

public class CartDeleteService {
	
	// 선택 삭제 버튼을 통해 여러 개를 삭제할 경우
	public boolean cartDelete(String[] nums, String customer_id) {
		System.out.println("CartDeleteService - cartDelete()");
		boolean isDeleted = false;
		
		Connection con = getConnection();
		
		BasketDAO dao = BasketDAO.getInstance();
		dao.setConnection(con);
		
		int deleteCount = 0;
		
		for(String i : nums) {		
			deleteCount += dao.deleteCart(Integer.parseInt(i), customer_id);
		}
		
		if(deleteCount > 0) {
			commit(con);
			isDeleted = true;
		} else {
			rollback(con);
		}
		
		close(con);
		
		return isDeleted;
	}
	
	// 특정 제품의 삭제 버튼을 클릭해 하나의 제품만 삭제할 경우
	public boolean cartDelete(String product_num, String customer_id) {
		System.out.println("CartDeleteService - cartDelete()");
		boolean isDeleted = false;
		
		Connection con = getConnection();
		
		BasketDAO dao = BasketDAO.getInstance();
		dao.setConnection(con);
		
		int deleteCount = dao.deleteCart(Integer.parseInt(product_num), customer_id);
		
		if(deleteCount > 0) {
			commit(con);
			isDeleted = true;
		} else {
			rollback(con);
		}
		close(con);
		return isDeleted;
	}

}
