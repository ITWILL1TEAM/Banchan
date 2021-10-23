package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.ProductDetailService;
import vo.ActionForward;
import vo.BoardBean;

public class ProductDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("BoardDetailAction");
		
		ActionForward forward = null;
		
		// request 객체를 통해 전달받은 파라미터(board_num, page) 가져오기
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		String page = request.getParameter("page");
		// -> page는 현재 불필요하며, 다음페이지로 전달만 하므로 문자열 그대로 사용 가능
		
		// BoardDetailService 클래스 인스턴스 생성 후 
		ProductDetailService service = new ProductDetailService();
		
		// increaseReadcount() 메소드를 호출하여 board_num에 대한 게시물 조회수 1 증가 요청
		// -> 파라미터 : 글번호(board_num)  리턴타입 : void
		service.increaseReadcount(board_num);
		
		// getArticle() 메소드 호출하여 board_num에 대한 게시물 상세 정보 리턴받기
		// -> 파라미터 : 글번호(board_num)  리턴타입 : Boardbean(article)
		BoardBean article = service.getArticle(board_num);
		
		
		// 다음 페이지로 전달하기 위한 객체를(article, page) request 객체에 저장
		request.setAttribute("article", article);
		request.setAttribute("page", page);
		
		// ActionForward 객체를 생성하여 /board/qna_board_view.jsp 페이지로 포워딩
		// -> request 객체를 유지해야하므로 Dispatcher 방식으로 포워딩
		forward = new ActionForward();
		forward.setPath("/board/qna_board_view.jsp");
		forward.setRedirect(false); // 생략 가능
		
		return forward;
	}

}
