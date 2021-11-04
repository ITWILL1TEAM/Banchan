package action.dashBoardAction;

import java.util.*;

import javax.servlet.http.*;

import action.Action;
import svc.*;
import svc.dashBoardSvc.NoticeListService;
import svc.productSvc.BoardListService;
import vo.*;

public class sellerDashBoardAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = null;

		int page = 1; // 현재 페이지 번호를 저장할 변수(기본값 1)
		int limit = 10; // 한 페이지에 표시할 게시물 수를 저장할 변수(최대 10개 설정)

		BoardListService service = new BoardListService();
		NoticeListService noticeListService = new NoticeListService();
		int listCount = service.getListCount();// 글갯수 불러옴.
		ArrayList<BoardBean> articleList = service.getArticleList(page, limit);
		ArrayList<NoticeBean> noticeList = noticeListService.getArticleList();
		// 계산된 페이지 정보를 PageInfo 객체에 저장
		PageInfo pageInfo = new PageInfo(page, 0, 0, 0, listCount);
		
		
		
		
		request.setAttribute("pageInfo", pageInfo);//셀러메인으로 넘어갈값
		request.setAttribute("articleList", articleList);
		request.setAttribute("noticeList", noticeList);
		
		forward = new ActionForward();
		forward.setPath("/sellerPage/seller_main.jsp");
		forward.setRedirect(false);

		return forward;
	}

}
