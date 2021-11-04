package svc.productSvc;

import static db.JdbcUtil.*;


import java.sql.Connection;
import java.util.ArrayList;

import dao.SideDAO;
import vo.BoardBean;

public class BestService {
	public ArrayList<BoardBean> isBest(){
		
		Connection con = getConnection();
		
		SideDAO dao = SideDAO.getInstance();
		
		dao.setConnection(con);
		
		ArrayList<BoardBean> bestList = dao.selectBest();
		
		close(con);
		
		return bestList;
	}
}
