package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import vo.ActionForward;

/**
 * Servlet implementation class CustomerController
 */
@WebServlet("*.do")
public class CustomerController extends HttpServlet {
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String command = request.getServletPath();
		System.out.println("command : " + command);
		
		Action action = null;
		ActionForward forward = null;
		
		if(command.equals("/CustCenter.do")) {
			// 글쓰기 작업을 위한 뷰페이지로 포워딩
			forward = new ActionForward();
			forward.setPath("/cust/custCenter.jsp");
			forward.setRedirect(false); // Dispatcher 방식(기본값이므로 생략 가능)
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
