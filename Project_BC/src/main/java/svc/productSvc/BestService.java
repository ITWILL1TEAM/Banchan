package svc.productSvc;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import dao.SideDAO;
import vo.Productbean;

public class BestService {
	public ArrayList<Productbean> isBest(){
		
		Connection con = getConnection();
		
		SideDAO dao = SideDAO.getInstance();
		
		dao.setConnection(con);
		
		ArrayList<Productbean> bestList = dao.selectBest();
		
		close(con);
		
		return bestList;
	}
}