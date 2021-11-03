<%@page import="vo.QnaBoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// page, BoardBean 객체 파라미터 가져오기
	String nowPage = (String)request.getAttribute("page");
	QnaBoardBean article = (QnaBoardBean)request.getAttribute("article");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 게시판</title>
<style type="text/css">
	#articleForm {
		width: 500px;
		height: 550px;
		border: 1px solid red;
		margin: auto;
	}
	
	h2 {
		text-align: center;
	}
	
	table {
		border: 1px solid black;
		border-collapse: collapse; 
	 	width: 500px;
	}
	
	th {
		text-align: center;
	}
	
	td {
		width: 150px;
		text-align: center;
	}
	
	#basicInfoArea {
		height: 70px;
		text-align: center;
	}
	
	#articleContentArea {
		background: orange;
		margin-top: 20px;
		height: 350px;
		text-align: center;
		overflow: auto;
		white-space: pre-line;
	}
	
	#commandList {
		margin: auto;
		width: 500px;
		text-align: center;
	}
</style>
</head>
<body>
	<!-- 게시판 상세내용 보기 -->
	<section id="articleForm">
		<h2>글 상세내용 보기</h2>
		<section id="basicInfoArea">
			<table border="1">
			<tr><th width="70">제 목</th><td colspan="3" ><%= article.getQna_subject() %></td></tr>
			<tr>
				<th width="70">작성자</th><td><%= article.getCustomer_id() %></td>
			</tr>
			
			</table>
		</section>
		<section id="articleContentArea">
			<%= article.getQna_content()%>
		</section>
	</section>
	<section id="commandList">
		<input type="button" value="답변" onclick="location.href='QnaReplyForm.qa?board_num=<%=article.getQna_idx() %>&page=<%=nowPage%>'">
		<input type="button" value="수정" onclick="location.href='QnaModifyForm.qa?board_num=<%=article.getQna_idx()%>&page=<%=nowPage%>'">
		<input type="button" value="삭제" onclick="location.href='QnaDeleteForm.qa?board_num=<%=article.getQna_idx()%>&page=<%=nowPage%>'">
		<input type="button" value="목록" onclick="location.href='QnaList.qa?page=<%=nowPage%>'">
	</section>
</body>
</html>





