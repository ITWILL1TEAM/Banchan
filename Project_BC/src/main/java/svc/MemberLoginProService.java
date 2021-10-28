package svc;

import java.sql.Connection;

import dao.MemberDAO;
import vo.MemberBean;

import static db.JdbcUtil.*;

public class MemberLoginProService {

	public boolean loginMember(MemberBean member) {
		System.out.println("MemberLoginProService");
		boolean isLoginSuccess = false;
		
		
		Connection con = getConnection();
		
		MemberDAO dao = MemberDAO.getInstance();
		
		dao.setConnection(con);
		
		
		isLoginSuccess = dao.selectMember(member);
		
		
		
		
		close(con);
	
		
		
		
		return isLoginSuccess;
	}

}

