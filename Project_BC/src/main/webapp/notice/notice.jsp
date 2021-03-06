<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>

<h1>공지사항</h1>
 <section id="writeForm">
      <h1>공지사항 글 등록</h1>
      <form action="Notice.bo" method="post" enctype="multipart/form-data" name="NoticeBoard">
      <!-- 파일 업로드 기능을 사용하려면 cos.jar 라이브러리 등록 필수 -->
         <table>
            <tr>
               <td class="td_left"><label for="board_name">글쓴이</label></td>
               <td class="td_right"><input type="text" name="board_name" required="required" /></td>
            </tr>
            <tr>
               <td class="td_left"><label for="board_pass">비밀번호</label></td>
               <td class="td_right"><input type="password" name="board_pass" required="required" /></td>
            </tr>
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
            <tr>
               <td class="td_left"><label for="board_file">파일 첨부</label></td>
               <td class="td_right"><input type="file" name="board_file" required="required" /></td>
            </tr>
         </table>
         <section id="commandCell">
            <input type="submit" value="등록">&nbsp;&nbsp;
            <input type="reset" value="다시쓰기">
         </section>
      </form>
   </section>
</body>

</html>