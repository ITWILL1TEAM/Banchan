<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="vo.NoticeBean"%>
<%@page import="java.util.ArrayList"%>
<%

// 	ArrayList<NoticeBean> articleList = (ArrayList<NoticeBean>)request.getAttribute("articleList");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집밥선생_AdminPage</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="CSS/styles.css" rel="stylesheet" />
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
      
</head>
<body class="sb-nav-fixed">
 
  <jsp:include page="../inc/admin_top.jsp"/>

 <div id="layoutSidenav_content">
                <main>
                
                
                <section id="writeForm">
      <h1>공지사항 글 등록</h1>
      <form action="NoticeWritePro.ad" method="post" name="NoticeBoard">
      <!-- 파일 업로드 기능을 사용하려면 cos.jar 라이브러리 등록 필수 -->
         <table>
            <tr>
               <td class="td_left"><label for="board_subject">제목</label></td>
               <td class="td_right"><input type="text" name="board_subject" required="required" /></td>
            </tr>
            <tr>
               <td class="td_left"><label for="board_content">내용</label></td>
               <td class="td_right">
                  <textarea id="board_content" name="board_content" cols="40" rows="15" required="required"></textarea>
               </td>
            </tr>
         </table>
         <section id="commandCell">
            <input type="submit" value="등록">&nbsp;&nbsp;
            <input type="reset" value="다시쓰기">
         </section>
      </form>
   </section>
   
   
                </main>








   <jsp:include page="../inc/admin_bottom.jsp"/>
            
         
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/assets/demo/scripts2.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="js/assets/demo/chart-area-demo.js"></script>
        <script src="js/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/assets/demo/datatables-simple-demo.js"></script>
    </body>

</html>