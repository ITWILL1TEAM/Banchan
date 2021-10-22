package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.MemberLoginProService;
import vo.ActionForward;
import vo.MemberBean;

public class MemberLoginProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("MemberLoginProAction");
		ActionForward forward = null;
		
		
		
		boolean isLoginSuccess = false;
		MemberLoginProService service = new MemberLoginProService();
		MemberBean member = new MemberBean();
		member.setId(request.getParameter("login_id"));
		member.setPassword(request.getParameter("login_pass"));
		
		isLoginSuccess = service.loginMember(member);
		
		
		if(!isLoginSuccess) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('로그인실패!')");
			out.println("history.back()");
			out.println("</script>");
		} else { // 로그인 성공 시 
			// 세션 객체에 로그인 아이디 정보를 저장(속성명 sId)
			// 1. request 객체로부터 HttpSession 객체 가져오기
			HttpSession session = request.getSession();
			// 2. 세션 객체의 setAttribute() 메서드를 호출하여 세션 정보 저장하기
			session.setAttribute("sId", member.getId());
			
			System.out.println("로그인 성공");
			forward = new ActionForward();
			forward.setPath("./main.jsp");
			forward.setRedirect(true);
			// Redirect 방식으로 포워딩 할 경우 request 객체는 유지되지 않지만 
			// session 객체는 웹브라우저 종료 시까지 유지되므로 포워딩 방식과 무관함
			
		}
		
		return forward;
		
	}

}
