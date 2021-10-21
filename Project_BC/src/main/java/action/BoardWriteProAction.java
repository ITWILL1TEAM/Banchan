package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.BoardWriteProService;
import vo.ActionForward;
import vo.BoardBean;

public class BoardWriteProAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
 
        System.out.println("Board(현Product)WritePro - action");
        ActionForward forward = null;
        
        BoardBean boardBean = new BoardBean();
        

        String name = request.getParameter("product_name");
        String Sname = request.getParameter("Sname");
        String category = request.getParameter("product_category")+request.getParameter("product_category2");      
        int price = Integer.parseInt(request.getParameter("product_price"));        
        int weight = Integer.parseInt(request.getParameter("product_weight"));  
        int discount = Integer.parseInt(request.getParameter("product_discount"));
        int stock = Integer.parseInt(request.getParameter("product_stock"));
        String expiration = request.getParameter("product_expiration_date");
        String handling = request.getParameter("product_handling");
        String material = request.getParameter("product_material");

        
        System.out.println(name+"|"+Sname+"|"+category+"|"+price+"|"+weight+"|"+discount+"|"+stock+"|"+expiration+"|"+handling+"|"+material);
        
        
        
        boardBean.setProduct_name(name);
        boardBean.setSname(Sname);
        boardBean.setProduct_category(category);
        boardBean.setProduct_price(price);
        boardBean.setProduct_weight(weight);
        boardBean.setProduct_discount(discount);
        boardBean.setProduct_stock(stock);
        boardBean.setProduct_expiration_date(expiration);
        boardBean.setProduct_handling(handling);
        boardBean.setProduct_material(material);       
        
        
    BoardWriteProService service = new BoardWriteProService();
        
        // 2) BoardWriteProService 인스턴스의 registArticle() 메서드 호출하여 게시물 등록 요청
        //    => 파라미터 : BoardBean 객체, 리턴타입 : boolean(isWriteSuccess)
        boolean isWriteSuccess = service.registArticle(boardBean);
        
        // 글쓰기 결과(isWriteSuccess)를 판별 
        if(!isWriteSuccess) { // 작업 결과가 false 일 경우
            // 1) 실패 시 자바스크립트를 사용하여 "게시물 등록 실패!" 출력 후 이전페이지로 돌아가기
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('게시물 등록 실패!')");
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
