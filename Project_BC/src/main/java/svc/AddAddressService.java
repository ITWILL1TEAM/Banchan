package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;

import dao.AddressDAO;
import vo.CustomerAddress;

public class AddAddressService {

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
	
}
