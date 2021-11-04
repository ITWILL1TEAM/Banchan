package action.memberAction;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import svc.memberSvc.CustomerJoinProService;
import vo.ActionForward;
import vo.CustomerBean;
import vo.MemberBean;

public class customerJoinProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("여기로 넘어옴");
		ActionForward forward = null;
		
		String id = request.getParameter("member_id");
		String password = request.getParameter("member_pass");
		String name = request.getParameter("member_name"); 
		int grade = Integer.parseInt(request.getParameter("grade"));
		
		
		String customer_id = request.getParameter("member_id");
		String phone = request.getParameter("member_phone1")+"-"+request.getParameter("member_phone2")+"-"+
					   request.getParameter("member_phone3");
		String email = request.getParameter("member_email");
		String recommendId = request.getParameter("member_recommendID");
		int personal_data = Integer.parseInt(request.getParameter("member_personalData")); // customerBean

	
		CustomerBean cBean = new CustomerBean();
		cBean.setId(id);
		cBean.setPassword(password);
		cBean.setName(name);
		cBean.setGrade(grade);
	
		cBean.setCustomer_id(customer_id);
		cBean.setPhone(phone);
		cBean.setEmail(email);
		cBean.setRecommend_id(recommendId);
		cBean.setPersonal_data(personal_data);
		
		
		
		CustomerJoinProService service = new CustomerJoinProService();
		boolean isJoinSuccess = service.joinCustomer(cBean);
		
		if(!isJoinSuccess) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('회원가입실패!')");
			out.println("history.back()");
			out.println("</script>");
		} else { 
			forward = new ActionForward();
			forward.setPath("MemberLoginForm.me");
			forward.setRedirect(true);
		}
	
		
		
		return forward;
	}

	
}
