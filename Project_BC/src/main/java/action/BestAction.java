package action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.BestService;
import vo.ActionForward;
import vo.Productbean;

public class BestAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		BestService service = new BestService();
		ArrayList<Productbean> bestList = service.isBest();
		
		request.setAttribute("bestList", bestList);
		
		if(bestList.size()==0) {
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('목록이 없습니다')");
			out.println("window.history.back();");
			out.println("</script>");
		}else {
			forward = new ActionForward();
			forward.setPath("/side/best.jsp");
			forward.setRedirect(false);
		}
		
	
		return forward;
	}

}
