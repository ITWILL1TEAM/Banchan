package action.dashBoardAction;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import svc.dashBoardSvc.ChartDataService;
import vo.ActionForward;

public class ChartDataAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward=null;
		
		ChartDataService service = new ChartDataService();
		
		ArrayList mData =  service.monthData();
		ArrayList dData = service.dayData();
		ArrayList categoryData = service.categoryData();
		
		
		
		
		
		
		forward = new ActionForward();
		forward.setPath("Chart.ad");
		forward.setRedirect(false);
		
		return forward;
	}

}
