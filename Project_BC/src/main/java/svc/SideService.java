package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import dao.SideDAO;
import vo.Productbean;


public class SideService {
	
public ArrayList<Productbean> isSide(String category) {
				
		Connection con = getConnection();
		
		SideDAO dao = SideDAO.getInstance();
	
		dao.setConnection(con);
		
		ArrayList<Productbean> sideList = dao.selectCategory(category);
		
		close(con);
		
		return sideList;
	}

}
