package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;

import dao.BasketDAO;
import dao.OrderDAO;
import dao.cart.CartDAO;
import vo.OrderBean;

public class OrderProService {

	public boolean InsertOrder(OrderBean order) {
		System.out.println("OrderProService - InsertOrder!");
		boolean isInsertSuccess = false;
		
		Connection con = getConnection();
		
		OrderDAO orderDAO = OrderDAO.getInstance();
		
		orderDAO.setConnection(con);
		
		int insertCount = orderDAO.insertOrder(order);
		
		if(insertCount > 0) {
			commit(con);
			isInsertSuccess = true;
		} else {
			rollback(con);
		}
		
		close(con);
		
		return isInsertSuccess;
	}

	public boolean insertDetailOrder(int[] nums, String code) {
		System.out.println("OrderProService - InsertDetailOrder!");
		boolean isInsertSuccess = false;
		
		Connection con = getConnection();
		
		OrderDAO orderDAO = OrderDAO.getInstance();
		
		orderDAO.setConnection(con);
		
		for(int str : nums) {
			System.out.println("orderPro : "+str);
		}
		int insertCount = orderDAO.insertDetailOrder(nums,code);
		
		if(insertCount > 0) {
			commit(con);
			int deleteCount = 0;
			BasketDAO basket = BasketDAO.getInstance();
			basket.setConnection(con);
			deleteCount = basket.cartDelete(nums);
			if(deleteCount > 0) {
				commit(con);
				isInsertSuccess = true;
			}
		} else {
			rollback(con);
		}
		
		close(con);
		return isInsertSuccess;
	}

}
