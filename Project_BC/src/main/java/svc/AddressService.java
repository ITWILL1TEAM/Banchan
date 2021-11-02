package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import dao.AddressDAO;
import dao.MemberDAO;
import vo.CustomerAddress;

public class AddressService {

	public boolean isAddress(CustomerAddress add) {
		
		boolean isAddressSuccess = false;
		
		Connection con = getConnection();
		
		AddressDAO dao = AddressDAO.getInstance();
		int insertCount = 0;
	
		dao.setConnection(con);
		insertCount = dao.insertAddress(add);
		
		
		if(insertCount > 0) {
			commit(con);
			isAddressSuccess = true;
		}else {
			rollback(con);
		}
		
		close(con);
		
		return isAddressSuccess;
	}
	
	public ArrayList<CustomerAddress> getAddressList(String id) {
        // 공통작업-1. Connection Pool 로부터 Connection 객체 가져오기
//      Connection con = JdbcUtil.getConnection();
        Connection con = getConnection();
        
        // 공통작업-2. BoardDAO 클래스로부터 BoardDAO 객체 가져오기
        AddressDAO dao = AddressDAO.getInstance();
        
        // 공통작업-3. BoardDAO 객체에 Connection 객체 전달하기
        dao.setConnection(con);
        
        // 게시물 목록 조회를 수행하는 selectArticleList() 메서드 호출
        // => 파라미터 : 페이지번호(page), 게시물 갯수(limit)
        //    리턴타입 : ArrayList<BoardBean> 객체(articleList)
        ArrayList<CustomerAddress> addressList = dao.selectAddressList(id);
        // 공통작업-4. Connection 객체 반환
        close(con);
        
        return addressList;
    }

	public String getCustomerName(String customer_id) {
		 String customer_name = "";
		 
		 Connection con = getConnection();
	        
	        // 공통작업-2. BoardDAO 클래스로부터 BoardDAO 객체 가져오기
	     MemberDAO dao = MemberDAO.getInstance();
	        
	        // 공통작업-3. BoardDAO 객체에 Connection 객체 전달하기
	     dao.setConnection(con);
		 
	     customer_name = dao.getName(customer_id);
	     
	     close(con);
	     
		return customer_name;
	}
	
}
