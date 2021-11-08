package action.mainAction;

import java.util.*;

import javax.servlet.http.*;

import action.*;
import svc.productSvc.*;
import vo.*;

public class MainAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;				
		
		BoardListService service = new BoardListService();
		int listCount = service.getListCount();//글갯수 불러옴.			
		
		ArrayList<BoardBean> productList = service.getBoardList();
		
		
		request.setAttribute("productList", productList);
	
		
		
		forward = new ActionForward();
		forward.setPath("/main.jsp");
		forward.setRedirect(false);
		
		// ActionForward 객체 리턴
		return forward;
	}

}
