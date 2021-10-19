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


@WebServlet("*.my")
public class MyPageController extends HttpServlet {
       
    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("MyPageController");
		request.setCharacterEncoding("UTF-8");
		
		String command = request.getServletPath();
		System.out.println("command : " + command);
		
		ActionForward forward = null;
		Action action = null;
		
		
		if(command.equals("/Besong.my")) {
			forward = new ActionForward();
			forward.setPath("/myPage/besong.jsp");
			forward.setRedirect(false); // Dispatcher 방식(기본값이므로 생략 가능)
		}else if(command.equals("/Resell.my")) {
			forward = new ActionForward();
			forward.setPath("/myPage/resell.jsp");
		}else if(command.equals("/OrderCheck.my")) {
			forward = new ActionForward();
			forward.setPath("/myPage/orderCheck.jsp");
		}else if(command.equals("/Mypage.my")) {
			forward = new ActionForward();
			forward.setPath("/myPage/myPage.jsp");
		}else if(command.equals("/Mypage2.my")) {
			forward = new ActionForward();
			forward.setPath("/myPage/myPage2.jsp");
		}else if(command.equals("/QnA.my")) {
			forward = new ActionForward();
			forward.setPath("/myPage/qNa.jsp");
		}else if(command.equals("/Delete.my")) {
			forward = new ActionForward();
			forward.setPath("/myPage/deleteMydata.jsp");
		}else if(command.equals("/Review.my")) {
			forward = new ActionForward();
			forward.setPath("/myPage/myReview.jsp");
		}else if(command.equals("/admin.my")) {
			forward = new ActionForward();
			forward.setPath("/adminPage/admin_main.jsp");
		}
    
    if(forward != null) {
		if(forward.isRedirect()) { 
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
