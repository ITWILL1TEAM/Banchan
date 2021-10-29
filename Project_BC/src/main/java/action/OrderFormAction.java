package action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.OrderFormService;
import vo.ActionForward;
import vo.BasketBean;
import vo.CustomerAddress;
import vo.CustomerBean;
import vo.MemberBean;


public class OrderFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("OrderFormAction!");
		ActionForward forward = null;
//		HttpSession session = request.getSession();
		String customer_id = "lee1234";
				//(String) session.getAttribute("customer_id");
//		
//		response.setContentType("text/html; charset=UTF-8");
//		PrintWriter out = response.getWriter();
//		if(customer_id == null) {
//			out.println("<script>");
//			out.println("alert('로그인이 필요합니다.')");
//			out.println("</script>");
//			
//			forward.setPath("MemberLoginForm");
//		} else {
		
	//}=>나중에 위에 주석풀면 포워드 위로 ㅇ옮기기
		int[] nums = {2,3,4};// 체크박스 항목에서 넘값
		
		for(int num : nums) {
			System.out.println("액션에서의 : "+num);
			System.out.println(num);
		}
		OrderFormService orderService = new OrderFormService();
		
		ArrayList<BasketBean> cartList = new ArrayList<BasketBean>();
		cartList = orderService.getSelectCart(nums);
		
		
		request.setAttribute("cartList", cartList);
		
		
//		ArrayList<MemberBean> memberInfo = new ArrayList<MemberBean>();
//		memberInfo =  orderService.getMemberInfo(customer_id);
//		
//		for(int i = 0 ; i <memberInfo.size() ; i++) {
//			
//			System.out.println("도로명 : "+memberInfo.get(i).getRoadAddress());
//			System.out.println("우편번호 : "+memberInfo.get(i).getZonecode());
//			System.out.println("상세주소 : "+memberInfo.get(i).getDtl_addr());
//			System.out.println("커스터머 이메일 : "+memberInfo.get(i).getEamil());
//			System.out.println("커스터머 네임 : "+memberInfo.get(i).getName());
//			System.out.println("커스터머 폰 : "+memberInfo.get(i).getPhone());
//		}
		
//		ArrayList<MemberBean> memberInfo = new ArrayList<MemberBean>();
//		memberInfo =  orderService.getMemberInfo(customer_id);
//		
//		for(int i = 0 ; i <memberInfo.size() ; i++) {
//			System.out.println("Action List : "+memberInfo.get(i).getName());
//		}
		
		
		ArrayList<CustomerAddress> memberAddress = new ArrayList<CustomerAddress>();
		memberAddress = orderService.getMemberAddress(customer_id);
		
		for(int i = 0 ; i <memberAddress.size() ; i++) {
			System.out.println("도로명 : "+memberAddress.get(i).getRoadAddress());
			System.out.println("우편번호 : "+memberAddress.get(i).getZonecode());
			System.out.println("상세주소 : "+memberAddress.get(i).getDtl_addr());
		}
		

		
		forward = new ActionForward();
		forward.setPath("/order/orderSheet.jsp");
		
		ArrayList<CustomerBean> customerInfo = new ArrayList<CustomerBean>();
		customerInfo = orderService.getCustomerAddress(customer_id);
		
		for(int i = 0 ; i <customerInfo.size() ; i++) {
			System.out.println("커스터머 이메일 : "+customerInfo.get(i).getEmail());
			System.out.println("커스터머 네임 : "+customerInfo.get(i).getName());
			System.out.println("커스터머 폰 : "+customerInfo.get(i).getPhone());
		}

//		request.setAttribute("memberInfo", memberInfo);
		request.setAttribute("memberAddress", memberAddress);
		request.setAttribute("customerInfo", customerInfo);
		
		return forward;
	}

}
