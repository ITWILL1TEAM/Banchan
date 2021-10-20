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
 
        System.out.println("action");
        
        
        ActionForward forward = null;
        
        BoardBean boardBean = new BoardBean();
        
        
        boardBean.setProduct_name(request.getParameter("Product_name"));
        boardBean.setSname(request.getParameter("Sname"));
        boardBean.setProduct_category(request.getParameter("Product_category"));
        boardBean.setProduct_price(Integer.parseInt(request.getParameter("Product_price")));
        boardBean.setProduct_weight(Integer.parseInt(request.getParameter("Product_weigh")));
        boardBean.setProduct_discount(Integer.parseInt(request.getParameter("Product_name")));
        boardBean.setProduct_count(Integer.parseInt(request.getParameter("Product_name")));
        boardBean.setProduct_stock(Integer.parseInt(request.getParameter("Product_stock")));
        boardBean.setProduct_expiration_date(request.getParameter("Product_expiration_date"));
        boardBean.setProduct_handling(request.getParameter("Product_handling"));
        boardBean.setProduct_material(request.getParameter("Product_material"));
        
        
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
            forward.setPath("BoardList.do");
            forward.setRedirect(true);
        }
        

        
        
        return forward;
    }

}
