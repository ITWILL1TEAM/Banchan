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
        
        // 선택된 제품의 제품번호를 우선 String 변수에 저장
		String num = request.getParameter("chk");
		String[] nums = null;
		
		// 선택삭제의 경우 여러 개를 삭제했을 땐 제품번호가 2개 이상이므로 두 개가 붙어서 넘어와서 길이가 1 이상이 된다.
		// 그러므로 num의 길이가 1 이상일 경우 선택된 제품이 여러 개일 것이기 때문에 split을 통해 번호를 분리하여 nums 배열에 저장한다.
		if(num.length() > 1) {
			nums = num.split("/");
		}
        
//        String[] nums = request.getParameterValues("chk");
		
		System.out.println("customer_id : " + customer_id);
//		System.out.println("product_num : ");
		
//		if(nums.length > 0) {
//			for(int i = 0; i < nums.length; i++) {
//				System.out.print(nums[i] + " | ");
//			}
//		}
		
		CartDeleteService delete = new CartDeleteService();
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(customer_id == null) {
			// 사용자가 로그인하지 않았을 경우
			out.println("<script>");
	        out.println("alert('로그인이 필요합니다.')");
	        out.println("window.open('MemberLoginForm.me','_blank','height=500,width=500, status=yes,toolbar=no,menubar=no,location=no')");
	        out.println("</script>");
		} else {
			// 로그인 했을 경우 업데이트 작업 진행 
			boolean isDeleted = false;
			
			// 오버로딩을 해놨으나... 선택된 제품 개수가 1개일 경우는 num에, 2개 이상일 경우엔 nums에 저장되기 때문에 
			// 똑같은 변수를 쓸 수가 없다... 그래서 if문으로 num의 길이가 1보다 길 경우에는 배열을 파라미터로 갖는 삭제 메소드를,
			// 1개일 경우엔 String 파라미터를 갖는 삭제 메소드를 호출하게 한다. 이보다 나은 방법을 생각 못하겠음..........
			if(num.length() > 1) {
				isDeleted = delete.cartDelete(nums, customer_id);
			} else {
				isDeleted = delete.cartDelete(num, customer_id);
			}
			
			if(!isDeleted) { // 장바구니 삭제가 실패할 경우
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
