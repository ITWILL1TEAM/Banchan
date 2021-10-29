package action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.AddCartProService;
import svc.CartListService;
import vo.ActionForward;
import vo.BasketBean;

public class CartListAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	
        System.out.println("CartListAction");
        
        ActionForward forward = null;
        
        // 세션으로 커스터머 아이디 받아오기
        
        BasketBean basket = new BasketBean();
        
        HttpSession session = request.getSession();
        String customer_id = (String)session.getAttribute("sId");
        
        int num = Integer.parseInt(request.getParameter("product_num"));
        String name = request.getParameter("product_name");
        String Sname = request.getParameter("Sname");
        int price = Integer.parseInt(request.getParameter("product_price"));        
        int discount = Integer.parseInt(request.getParameter("product_discount"));
        int product_qty = Integer.parseInt(request.getParameter("ord_qty"));
        int total_amt = Integer.parseInt(request.getParameter("total_amt"));
        String product_img = "yang_thum.jpg";
        
        
        System.out.println("아이디 : " + customer_id);
        System.out.println("제품번호 : "  + num);
        System.out.println("제품명 : " + name);
        System.out.println("제품가격 : " + price);
        System.out.println("주문 수량 : " + product_qty);
        System.out.println("할인율 : " + discount);
        System.out.println("총 주문 금액 : " + total_amt);
        System.out.println("이미지 : " + product_img);
        System.out.println("회사명 : " + Sname);
        
        basket.setCutomer_id(customer_id);
        basket.setProduct_num(num);
        basket.setProduct_name(name);
        basket.setProduct_price(price);
        basket.setProduct_qty(product_qty);
        basket.setProduct_discount(discount);
        basket.setProduct_img(product_img); 
        basket.setSname(Sname);
        
        
        CartListService cart = new CartListService();
        ArrayList<BasketBean> cartList = cart.getCartList(customer_id);
        
        request.setAttribute("cartList", cartList);

        forward = new ActionForward();
        forward.setPath("/cart/cart.jsp");
        forward.setRedirect(false);
        
        return forward;
    }

}
