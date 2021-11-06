package svc.dashBoardSvc;

import java.sql.Connection;
import java.util.ArrayList;

import dao.MemberDAO;

import static db.JdbcUtil.*;

import vo.MemberBean;

public class MemberListService {

	public ArrayList<MemberBean> getMemberList() {
		Connection con = getConnection();
		
		MemberDAO dao = MemberDAO.getInstance();
		
		dao.setConnection(con);
		
		ArrayList<MemberBean> memberList = dao.selectMemberList();
		
		
		close(con);
		
		return memberList;
	}

}
