package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.CartDeleteService;
import svc.CartUpdateService;
import vo.ActionForward;

public class CartDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		System.out.println("CartDeleteAction");
		
		// 세션으로 커스터머 아이디 받아오기
        HttpSession session = request.getSession();
        String customer_id = (String)session.getAttribute("sId"); 
        
        // 선택된 제품의 제품번호를 배열에 저장
		String[] nums = request.getParameter("chbox").toString().split(",");
		
		System.out.println("customer_id : " + customer_id);
		System.out.println("product_num : ");
		
		for(int i = 0; i < nums.length; i++) {
			System.out.print(nums[i] + " | ");
			
		}
		
		CartDeleteService delete = new CartDeleteService();
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(customer_id == null) {
			// 사용자가 로그인하지 않았을 경우
			out.println("<script>");
			out.println("alert('로그인이 필요합니다!')");
			out.println("history.back()");
			out.println("</script>");
		} else {
			// 로그인 했을 경우 업데이트 작업 진행 
			boolean isDeleted = delete.cartDelete(nums, customer_id);
			
			if(!isDeleted) { // 수량 업데이트가 실패할 경우
				out.println("<script>");
				out.println("alert('장바구니 삭제 실패!')");
				out.println("history.back()");
				out.println("</script>");
			} else { // 성공했을 경우 장바구니 페이지로 이동
				forward = new ActionForward();
				forward.setPath("Cart.ca");
				forward.setRedirect(true);
			}
			
		}
		
		
		return forward;
	}

}
