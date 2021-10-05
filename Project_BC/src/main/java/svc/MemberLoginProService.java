package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.MemberDAO;
import vo.MemberBean;

public class MemberLoginProService {

    public boolean loginMember(MemberBean member) {
//      System.out.println("MemberLoginProService - joinMember()");
        boolean isLoginSuccess = false;
        
        // 공통작업-1. Connection Pool 로부터 Connection 객체 가져오기
        Connection con = getConnection();
        
        // 공통작업-2. MemberDAO 클래스로부터 MemberDAO 객체 가져오기
        MemberDAO dao = MemberDAO.getInstance();
        
        // 공통작업-3. BoardDAO 객체에 Connection 객체 전달하기
        dao.setConnection(con);
        
        
        // MemberDAO 객체의 selectMember() 메서드를 호출하여 회원 등록 작업 수행
        // => 파라미터 : MemberBean 객체    리턴타입 : boolean(isLoginSuccess)
        isLoginSuccess = dao.selectMember(member);
        
        // 공통작업-4. Connection 객체 반환
        close(con);
        
        return isLoginSuccess;
    }
    
}
