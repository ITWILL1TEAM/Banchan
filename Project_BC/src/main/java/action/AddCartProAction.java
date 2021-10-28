package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.AddCartProService;
import vo.ActionForward;
import vo.BasketBean;

public class AddCartProAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	
        System.out.println("AddCartProAction");
        
        ActionForward forward = null;
        
        // 세션으로 커스터머 아이디 받아오기
        
        BasketBean basket = new BasketBean();
        
        int num = Integer.parseInt(request.getParameter("product_num"));
        String name = request.getParameter("product_name");
        String Sname = request.getParameter("Sname");
        int price = Integer.parseInt(request.getParameter("product_price"));        
        int discount = Integer.parseInt(request.getParameter("product_discount"));
        int product_qty = Integer.parseInt(request.getParameter("ord_qty"));
        int total_amt = Integer.parseInt(request.getParameter("total_amt"));

        System.out.println("제품번호 : "  + num);
        System.out.println("제품명 : " + name);
        System.out.println("회사명 : " + Sname);
        System.out.println("제품가격 : " + price);
        System.out.println("할인율 : " + discount);
        System.out.println("주문 수량 : " + product_qty);
        System.out.println("총 주문 금액 : " + total_amt);
        
        basket.setProduct_num(num);
        basket.setProduct_name(name);
        basket.setProduct_price(price);
        basket.setProduct_qty(product_qty);
        basket.setProduct_discount(discount);
        // 이미지도 해야하나?
        
        // 2) AddCartProService 인스턴스의 AddCart() 메서드 호출하여 장바구니 데이터베이스에 등록 요청
        AddCartProService service = new AddCartProService();
        boolean isInsertSuccess = service.AddCart(basket);


        // 등록 결과(isInsertSuccess)를 판별 
        if(!isInsertSuccess) { // 작업 결과가 false 일 경우
            // 1) 실패 시 자바스크립트를 사용하여 "게시물 등록 실패!" 출력 후 이전페이지로 돌아가기
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('장바구니 담기 실패!')");
            out.println("history.back()");
            out.println("</script>");
        } else { // 작업 결과가 true 일 경우
            // 2) 성공 시 ActionForward 객체를 통해 BoardList.bo 경로, Redirect 방식 포워딩 설정
            // ActionForward 객체를 생성하여 BoardList.bo 서블릿 주소 요청
            // => request 객체 유지 불필요, 주소 유지 불필요
            // => 새로운 요청을 발생시키므로 Redirect 방식 포워딩
            forward = new ActionForward();
            forward.setPath("productList.ad");
            forward.setRedirect(true);
        }
        
        return forward;
    }

}
