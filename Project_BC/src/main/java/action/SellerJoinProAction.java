package action;

import java.io.PrintWriter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import svc.SellerJoinProService;
import vo.ActionForward;
import vo.SellerBean;

public class SellerJoinProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("SellerJoinProAction 작동");
		ActionForward forward = null;

		
		String id = request.getParameter("member_id");
		String password = request.getParameter("member_pass");
		String name = request.getParameter("member_name"); 
		int grade = Integer.parseInt(request.getParameter("grade"));
		
		
		String seller_id = request.getParameter("member_id");
		int sNo = Integer.parseInt(request.getParameter("member_BRN"));
		String sName = request.getParameter("member_Cname"); 
		String adress = request.getParameter("address");
		String phone = request.getParameter("member_phone1")+"-"+request.getParameter("member_phone2")+"-"+
					   request.getParameter("member_phone3");
		String email = request.getParameter("member_email");
	
		System.out.println(sName);
		System.out.println(name);
		System.out.println(adress);
	
		SellerBean sBean = new SellerBean();
		sBean.setId(id);
		sBean.setPassword(password);
		sBean.setName(name);
		sBean.setGrade(grade);
	
		sBean.setSeller_id(seller_id);
		sBean.setsNO(sNo);
		sBean.setsName(sName);
		sBean.setAdress(adress);
		sBean.setPhone(phone);
		sBean.setEmail(email);
		
	
		SellerJoinProService service = new SellerJoinProService();
		boolean isJoinSuccess = service.joinSeller(sBean);
		
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
