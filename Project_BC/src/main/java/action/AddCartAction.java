package action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.AddCartService;
import svc.CartListService;
import svc.DupProdCheckService;
import vo.ActionForward;
import vo.BasketBean;

public class AddCartAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	
        System.out.println("AddCartAction");
        
        ActionForward forward = null;
        
        BasketBean basket = new BasketBean();
        
        // 세션으로 커스터머 아이디 받아오기
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
        
        // BasketBean 객체에 파라미터 받아서 저장
        basket.setCutomer_id(customer_id);
        basket.setProduct_num(num);
        basket.setProduct_name(name);
        basket.setProduct_price(price);
        basket.setProduct_qty(product_qty);
        basket.setProduct_discount(discount);
        basket.setProduct_img(product_img); 
        basket.setSname(Sname);
        
        // DupProdCheckService 인스턴스의 DupProdCheckService() 메서드를 호출하여 사용자의 장바구니에 해당 상품이 존재하는지 확인
        // 존재(true)할 경우 수량만 업데이트
        DupProdCheckService dupProd = new DupProdCheckService();
        boolean isDupProduct = dupProd.dupProductCheck(basket);
        
        // 존재하지 않을 경우 새로 장바구니에 담기
        boolean isInsertSuccess = false;
        if(!isDupProduct) {
        	AddCartService addCart = new AddCartService();
        	isInsertSuccess = addCart.AddCart(basket);
        }
        
        forward = new ActionForward();
        forward.setPath("Cart.ca");
        forward.setRedirect(true);
        
        return forward;
    }

}
