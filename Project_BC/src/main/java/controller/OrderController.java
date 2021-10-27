package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.OrderFormAction;


import vo.ActionForward;

/**
 * Servlet implementation class OrderController
 */
@WebServlet("*.or")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	request.setCharacterEncoding("UTF-8");
			
			String command = request.getServletPath();
			Action action = null;
			ActionForward forward = null;
			
			if(command.equals("/OrderSheet.or")) {			
				action = new OrderFormAction();
				//업캐스팅 후에도 공통메서드(상속받음 메서드)는 호출이 가능하므로 
				//Action 차입으로 execute() 메서드 호출 가능함
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
//			}else if(command.equals("/ReviewList.re")) {
//	//			
//				action = new ReviewListAction();
//				
//				try {
//					forward =action.execute(request, response);
//				} catch (Exception e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
				
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
