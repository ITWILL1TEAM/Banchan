package controller;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.*;
import vo.*;
@WebServlet("*.ad")
public class AdminController extends HttpServlet {
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String command = request.getServletPath();
//		System.out.println("command : " + command);
		
		Action action = null;
		ActionForward forward = null;
		
		if(command.equals("/main.ad")) {			
			forward = new ActionForward();
			forward.setPath("/adminPage/admin_main.jsp");
			forward.setRedirect(false); // Dispatcher 방식(기본값이므로 생략 가능)
		}else if(command.equals("/Chart.ad")) {			
			forward = new ActionForward();
			forward.setPath("/adminPage/charts.jsp");
			forward.setRedirect(false); // Dispatcher 방식(기본값이므로 생략 가능)
		}else if(command.equals("/CustomerInfo.ad")) {			
			forward = new ActionForward();
			forward.setPath("/adminPage/customerInfo.jsp");
			forward.setRedirect(false); // Dispatcher 방식(기본값이므로 생략 가능)
		}else if(command.equals("/SellerInfo.ad")) {			
			forward = new ActionForward();
			forward.setPath("/adminPage/sellerInfo.jsp");
			forward.setRedirect(false); // Dispatcher 방식(기본값이므로 생략 가능)

		}else if(command.equals("/side.ad")) {			
			forward = new ActionForward();
			forward.setPath("/category/sidedish.jsp");

		}else if(command.equals("/ProductList.ad")) {			
			forward = new ActionForward();
			forward.setPath("/adminPage/productList.jsp");
			forward.setRedirect(false); // Dispatcher 방식(기본값이므로 생략 가능)
		}else if(command.equals("/Notice.ad")) {			
			forward = new ActionForward();
			forward.setPath("/adminPage/Notice.jsp");

			forward.setRedirect(false); // Dispatcher 방식(기본값이므로 생략 가능)
		}else if(command.equals("/ProductRegister.ad")) {			
			forward = new ActionForward();
			forward.setPath("/adminPage/productRegister.jsp");
			forward.setRedirect(false); // Dispatcher 방식(기본값이므로 생략 가능)
		}else if (command.equals("/ProductWritePro.ad")) {
			action = new BoardWriteProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// 위임받은 Exception 예외처리 필요..!
		}
		
		
		if(forward != null) {
			if(forward.isRedirect()) { // true = Redirect 방식
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
		
	}

}
