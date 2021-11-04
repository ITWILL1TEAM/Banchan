package svc.oderSvc;
import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import dao.OrderDAO;
import vo.BasketBean;

import vo.OrderBean;
import vo.orderProductBean;


public class OrderListService {

	public ArrayList<OrderBean> getSelectOrder(int order_num) {

		System.out.println("orderService - getSelectOrder()");
		// 공통작업-1. Connection Pool 로부터 Connection 객체 가져오기
		Connection con = getConnection();
		// 공통작업-2. BoardDAO 클래스로부터 BoardDAO 객체 가져오기
		OrderDAO dao = OrderDAO.getInstance();
		// 공통작업-3. BoardDAO 객체에 Connection 객체 전달하기
		dao.setConnection(con);
		
		
		ArrayList<OrderBean> orderList = new ArrayList<OrderBean>();
		OrderBean order = new OrderBean();
		
		order = dao.selectOrderList(order_num);
		
		
		orderList.add(order);
		
		close(con);
		
		return orderList;
		
		
	}

	public ArrayList<orderProductBean> getOrderProduct(ArrayList<orderProductBean> orderProduct) {
		// TODO Auto-generated method stub
		return null;
	}
		

}
