package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import action.memberAction.AddAddressAction;
import action.memberAction.ShowAddressAction;
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
		
		HttpSession session = request.getSession();
		int grade;
		if (session.getAttribute("grade")!=null) {
			grade = (int)session.getAttribute("grade");
		}else {
			grade = 5;
		}
		System.out.println(grade);
		if (grade!=3) {
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('잘못된 접근입니다')");
			out.println("location.href='./'");
			out.println("</script>");
			
		}else {
			
			if(command.equals("/DeliveryLocation.my")) {
				action = new ShowAddressAction();
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
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
			}else if(command.equals("/myPage/AddAddress.my")) {
				action = new AddAddressAction();
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
	    
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