<%@page import="vo.Productbean"%>
<%@page import="vo.orderProductBean"%>
<%@page import="vo.PageInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    ArrayList<orderProductBean> orderList = (ArrayList<orderProductBean>)request.getAttribute("orderList");
   
//     PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	
	double score = (Double)request.getAttribute("score");
	double avgScore = (Double)request.getAttribute("avgScore");
	double avgPercent = (Double)request.getAttribute("avgPercent");
	
// 	int nowPage = pageInfo.getPage();
// 	int maxPage = pageInfo.getMaxPage();
// 	int startPage = pageInfo.getStartPage();
// 	int endPage = pageInfo.getEndPage();
// 	int listCount = pageInfo.getListCount();
    %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div id="evalListBodydiv">
	
	<!-- REVIEW LIST -->
		<%
		if(orderList != null) {
		%>
				
			<div class="g_rv_lst">
				<h4 class="ir">결제완료 목록</h4>
			
				<table>
					<%
					for(int i = 0; i < orderList.size(); i++) {
					%>
					<tr onclick="location.href = ReviewForm.re?product_num=<%=orderList.get(i).getProduct_num()%>">
						<td>
							<img alt="" src="">
						</td>
						<td>
							<span class="user"><%=orderList.get(i).getOrder_num() %></span>
						</td>
						<td>	
							<span class="user"><%=orderList.get(i) %></span>
						</td>
					</tr>
				<% } %>
				</table>
			</div>	
		
		    <span class="txt">
				수취 완료 후 30일 이내  작성 가능한 후기가 없습니다.
			</span>
	 <% } %>
			      
	</div>
</body>
</html>