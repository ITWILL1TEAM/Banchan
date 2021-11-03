package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import dao.OrderDAO;
import vo.BasketBean;
import vo.Productbean;

public class OrderDetailService {

	public ArrayList<Productbean> getSelectProduct(int[] product_nums) {
//		System.out.println("orderService - getSelectCart()");
//		// 공통작업-1. Connection Pool 로부터 Connection 객체 가져오기
//		Connection con = getConnection();
//		// 공통작업-2. BoardDAO 클래스로부터 BoardDAO 객체 가져오기
//		OrderDAO dao = OrderDAO.getInstance();
//		// 공통작업-3. BoardDAO 객체에 Connection 객체 전달하기
//		dao.setConnection(con);
//		
//		
//		ArrayList<Productbean> orderInfo = new ArrayList<Productbean>();
//		Productbean orderInfo = null;
//		
//		orderInfo = new Productbean();
//		
//		while(cartList.size()!=nums.length) {
//			for(String num : nums) {
//				basket = dao.selectBasket(Integer.parseInt(num));
//				
//				cartList.add(basket);
//				}
//			}
//			
//			close(con);
//		
		
//		return orderInfo;
		
	}

}
