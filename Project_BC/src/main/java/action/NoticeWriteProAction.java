package action;

import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import svc.BoardWriteProService;
import svc.NoticeWriteProService;
import vo.ActionForward;
import vo.BoardBean;
import vo.NoticeBean;

public class NoticeWriteProAction implements Action {

    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        
        
        ActionForward forward = null;
        
   
        
        // BoardBean 객체에 전달받은 파라미터 저장
        NoticeBean board = new NoticeBean();
        board.setBoard_subject("board_subject");
        board.setBoard_content("board_content");

       
       NoticeWriteProService service = new NoticeWriteProService();
        
        // 2) BoardWriteProService 인스턴스의 registArticle() 메서드 호출하여 게시물 등록 요청
        //    => 파라미터 : BoardBean 객체, 리턴타입 : boolean(isWriteSuccess)
        boolean isWriteSuccess = service.registArticle(board);
        
  
        if(!isWriteSuccess) { 
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('게시물 등록 실패!')");
            out.println("history.back()");
            out.println("</script>");
        } else { 
            forward = new ActionForward();
            forward.setPath("Notice.ad");
            forward.setRedirect(true);
        }
        
        return forward;
    }

}
