package svc.cartSvc;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import dao.AddressDAO;
import dao.BasketDAO;
import dao.BoardDAO;
import vo.BasketBean;
import vo.CustomerAddress;
import vo.ProductImg;

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

	public boolean getAddressInfo(String customer_id) {
		System.out.println("CartListService - getAddressInfo()");
		boolean hasAddress = false;
		
		Connection con = getConnection();
        
        AddressDAO dao = AddressDAO.getInstance();
        
        dao.setConnection(con);
        
        ArrayList<CustomerAddress> addressList = dao.selectAddressList(customer_id);
        
        System.out.println(addressList.size());
        
        if(addressList.size() > 0) {
        	hasAddress = true;
        }
        // 공통작업-4. Connection 객체 반환
        close(con);
		
		
		return hasAddress;
	}

	public int getCartCount(String customer_id) {
		int count =0;
		Connection con = getConnection();
		BasketDAO dao = BasketDAO.getInstance();
		dao.setConnection(con);		
		
		
		count = dao.CartCount(customer_id);
		
		close(con);
		
		
		return count;
	}


}
