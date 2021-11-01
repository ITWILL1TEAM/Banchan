package action;

import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.OrderProService;
import vo.ActionForward;
import vo.OrderBean;

public class OrderProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("OrderProAction!");
		ActionForward forward = null;
		Timestamp date = new Timestamp(System.currentTimeMillis());
		PrintWriter out = response.getWriter();
		
		String id =request.getParameter("imp_uid");
		System.out.println(id);
		String customer_id =request.getParameter("customer_id");
		System.out.println(customer_id);
		String shipping_name =request.getParameter("shipping_name");
		System.out.println(shipping_name);
		String shipping_phone =request.getParameter("shipping_phone");
		System.out.println(shipping_phone);
		String postcode =request.getParameter("postcode");
		System.out.println(postcode);
		String shipping_addr =request.getParameter("shipping_addr");
		System.out.println(shipping_addr);
		String shipping_memo =request.getParameter("shipping_memo");
		System.out.println(shipping_memo);
		String pay_method =request.getParameter("pay_method");
		System.out.println(pay_method);
		String paid_amount =request.getParameter("paid_amount");
		System.out.println(paid_amount);
		
		
		
		
		OrderBean order = new OrderBean();
		
		order.setCode(request.getParameter("imp_uid"));
		order.setCustomer_id(request.getParameter("customer_id"));
		order.setShipping_name(request.getParameter("shipping_name"));
		order.setShipping_phone(request.getParameter("shipping_phone"));
		
		order.setShipping_zonecode(request.getParameter("postcode"));
		order.setShipping_address(request.getParameter("shipping_addr"));
		order.setShipping_memo(request.getParameter("shipping_memo"));
		order.setOrder_date(date);
		order.setPay_method(request.getParameter("pay_method"));
		order.setOrder_status("결제완료");
		order.setOrder_price(Integer.parseInt(request.getParameter("paid_amount")));
		order.setTrans_num("운송장 번호");
		
		
		OrderProService orderService = new OrderProService();
		
		boolean isInsertSuccecc = orderService.InsertOrder(order);
		
		if(!isInsertSuccecc) {
			out.println("<script>");
			out.println("alert('주문 등록 실패");
			out.println("history.back()");
			out.println("</script>");

		} else {
			forward = new ActionForward();
			forward.setPath("OrderDetail.or");
		}
		
		
		return forward;
	}
		
	

}
