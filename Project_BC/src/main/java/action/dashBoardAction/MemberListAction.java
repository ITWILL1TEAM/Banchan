package action.dashBoardAction;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import svc.dashBoardSvc.MemberListService;
import vo.ActionForward;
import vo.MemberBean;

public class MemberListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward=null;
		
		MemberListService service = new MemberListService();
		ArrayList<MemberBean> memberList = service.getMemberList();
		
		
		return forward;
	}

}
