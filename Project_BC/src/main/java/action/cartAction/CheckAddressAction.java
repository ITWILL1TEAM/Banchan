package action.cartAction;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import svc.cartSvc.CartListService;
import vo.ActionForward;

public class CheckAddressAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("CheckAddressAction");
		ActionForward forward = null;
		
		// 세션으로 커스터머 아이디 받아오기
        HttpSession session = request.getSession();
        String customer_id = (String)session.getAttribute("sId"); 
        String[] nums = request.getParameterValues("cart_checkbox");
        
        System.out.println(customer_id);
        
        CartListService cart = new CartListService();
        
        // 배송지가 입력됐는지 여부를 판단하기 위해 getAddressList() 메소드 호출
        boolean hasAddress = cart.getAddressInfo(customer_id);
        
        request.setAttribute("nums", nums);
        
        response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
        
        if(!hasAddress) {
        	out.println("<script>");
	        out.println("alert('배송지 입력이 필요합니다.')");
	        out.println("location.href='" + request.getContextPath() + "/DeliveryLocation.my'");
	        out.println("</script>");
        } else {
        	forward = new ActionForward();
            forward.setPath("OrderSheet.or");
            forward.setRedirect(true);
        }

		
		return forward;
	}

}
