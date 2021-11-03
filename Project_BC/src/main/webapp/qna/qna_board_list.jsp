
<%@page import="vo.QnaPageInfo"%>
<%@page import="vo.QnaBoardBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 전달받은 request 객체로부터 데이터 가져오기
	// "pageInfo" 객체와 "articleList" 객체를 request 객체로부터 꺼내서 저장
	// "pageInfo" 객체로부터 페이지 관련 값들을 꺼내서 변수에 저장
	ArrayList<QnaBoardBean> articleList = (ArrayList<QnaBoardBean>)request.getAttribute("articleList");
	QnaPageInfo pageInfo = (QnaPageInfo)request.getAttribute("pageInfo");
	int nowPage = pageInfo.getPage();
	int maxPage = pageInfo.getMaxPage();
	int startPage = pageInfo.getStartPage();
	int endPage = pageInfo.getEndPage();
	int listCount = pageInfo.getListCount();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Qna 게시판</title>
<style type="text/css">
	#listForm {
		width: 1024px;
		max-height: 610px;
		border: 1p solid red;
		margin: auto;
	}
	
	h2 {
		text-align: center;
	}
	
	table {
		margin: auto;
		width: 1024px;
	}
	
	#tr_top {
		background: orange;
		text-align: center;
	}
	
	#pageList {
		margin: auto;
		width: 1024px;
		text-align: center;
	}
	
	#emptyArea {
		margin: auto;
		width: 1024px;
		text-align: center;
	}
	
	#buttonArea {
		margin: auto;
		width: 1024px;
		text-align: right;
	}
	
	
</style>
</head>
<body>
	<!-- 게시판 리스트 -->
	<section id="listForm">
		<h2>QnA게시판 글 목록</h2>
		<table>
			<%
			if(articleList != null && listCount > 0) {
			%>
				<tr id="tr_top">
					<td width="100px">번호</td>
					<td>제목</td>
					<td width="150px">작성자</td>
					<td width="150px">날짜</td>
					<td width="100px">조회수</td>
				</tr>
				<%
				for(int i = 0; i < articleList.size(); i++) {
				%>
				<tr>
					<td align="center"><%=articleList.get(i).getQna_idx() %></td>
					<td>
				
				
						<a href="QnaDetail.qa?board_num=<%=articleList.get(i).getQna_idx() %>&page=<%=nowPage %>">
						<%=articleList.get(i).getQna_subject() %>
						</a>
					</td>
					<td align="center"><%=articleList.get(i).getQna_subject() %></td>
			
				</tr>
				
			
		</table>
	</section>
	<section id="buttonArea">
		<input type="button" value="글쓰기" onclick="location.href='QnaWriteForm.qa'" />
	</section>
	<section id="pageList">
	<%if(nowPage <= 1) {%>
			<input type="button" value="이전">&nbsp;
	<%} else {%>
			<input type="button" value="이전" onclick="location.href=QnaList.qa?page=<%=nowPage - 1 %>'">&nbsp;
	<%} %>
	
	<%for(int i = startPage; i <= endPage; i++) { 
			if(i == nowPage) { %>
				[<%=i %>]
		<%} else { %>
				<a href="QnaList.qa?page=<%=i %>">[<%=i %>]</a>&nbsp;
		<%} %>
	<%} %>
	
	<%if(nowPage >= maxPage) { %>
			<input type="button" value="다음">
	<%} else{ %>
			<input type="button" value="다음" onclick="location.href='QnaList.bo?page=<%=nowPage + 1 %>'">
	<%} %>
	</section>
	<%else{ %>
	<section id="emptyArea">등록된 글이 없습니다</section>
	<%
	}
	%>
</body>
</html>