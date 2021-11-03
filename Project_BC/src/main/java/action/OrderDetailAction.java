package action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.OrderDetailService;
import svc.OrderFormService;
import svc.OrderListService;
import vo.ActionForward;
import vo.BasketBean;
import vo.CustomerInfo;
import vo.OrderBean;
import vo.Productbean;
import vo.orderProductBean;

public class OrderDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("OrderDetailAction!");
		ActionForward forward = null;
		HttpSession session = request.getSession();

		String customer_id = (String)session.getAttribute("sId");  
		int order_num = Integer.parseInt(request.getParameter("order_num"));
		System.out.println(order_num);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(customer_id == null) {
			out.println("<script>");
			out.println("alert('로그인이 필요합니다.')");
			out.println("window.open('MemberLoginForm.me','_blank','height=500,width=500, status=yes,toolbar=no,menubar=no,location=no')");
			
			out.println("</script>");
			
			
		} else {
		
		
		OrderListService orderListService = new OrderListService();
		
		ArrayList<OrderBean> orderList = new ArrayList<OrderBean>();
		orderList = orderListService.getSelectOrder(order_num);
		
		
		request.setAttribute("orderList", orderList);
		

		
		forward = new ActionForward();
		forward.setPath("/order/orderDetail.jsp");
		
		//----------------------------------------------프로덕트 정보를 가져오는 객체
		ArrayList<orderProductBean> orderProduct = new ArrayList<orderProductBean>();
		orderProduct = orderListService.getOrderProduct(order_num);
		
		for(int i = 0 ; i <orderProduct.size() ; i++) {
			System.out.println("커스터머 이메일 : "+orderProduct.get(i).getOrder_num());
			System.out.println("커스터머 네임 : "+orderProduct.get(i).getCustomer_id());
			System.out.println("커스터머 폰 : "+orderProduct.get(i).getProduct_num());
			System.out.println("도로명 : "+orderProduct.get(i).getProduct_stock());
			
		}
//		int product_nums[] = new int[orderProduct.size()];
//		
//		for(int i = 0; i < orderProduct.size(); i++) {
//			product_nums[i] = orderProduct.get(i).getProduct_num();
//			
//		}
//		for(int product_num : product_nums) {
//			System.out.println("액션에서의 : "+product_num);
//			System.out.println(product_num);
//		}
//		OrderDetailService orderService = new OrderDetailService();
//		
//		ArrayList<Productbean> orderInfo = new ArrayList<Productbean>();
//		orderInfo = orderService.getSelectProduct(product_nums);
//		
//		
//		request.setAttribute("orderInfo", orderInfo);
		

		request.setAttribute("orderProduct", orderProduct);
				
		
		
		}
		
		return forward;
	}

}
