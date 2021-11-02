package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import dao.SideDAO;
import vo.Productbean;

public class BrandNewService {
	public ArrayList<Productbean> isBrandNew(){
		
		Connection con = getConnection();
		
		SideDAO dao = SideDAO.getInstance();
	
		dao.setConnection(con);
		
		ArrayList<Productbean> brandNewList = dao.selectBrandNew();
		
		close(con);
		
		return brandNewList;
		
		
		
	}

}
