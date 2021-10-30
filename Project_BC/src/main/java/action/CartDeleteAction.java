package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.ActionForward;

public class CartDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		System.out.println("CartDeleteAction");
		
		int basket_idx = Integer.parseInt(request.getParameter("data-cart-seq"));
		
		
		
		return forward;
	}

}
