package svc.productSvc;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import dao.SideDAO;
import vo.Productbean;

public class SaleService {
	
	public ArrayList<Productbean> isSale(){
		
		Connection con = getConnection();
		
		SideDAO dao = SideDAO.getInstance();
	
		dao.setConnection(con);
		
		ArrayList<Productbean> saleList = dao.selectSale();
		
		close(con);
		
		return saleList;
		
	}

}
