<%@page import="vo.PageInfo"%>
<%@page import="vo.ReviewBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%	ArrayList<ReviewBean> reviewList = (ArrayList<ReviewBean>)request.getAttribute("reviewList");
	PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	
	double score = (Double)request.getAttribute("score");
	double avgScore = (Double)request.getAttribute("avgScore");
	double avgPercent = (Double)request.getAttribute("avgPercent");
	
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
<title>Insert title here</title>
</head>
<body>
				<div id="evalListBodydiv">

				<!-- REVIEW LIST -->
				<%
				if(reviewList != null && listCount > 0) {
				%>
				
				<div class="g_rv_lst">
					<h4 class="ir">작성된 후기 목록</h4>
				
					<ul>
						<%
						for(int i = 0; i < reviewList.size(); i++) {
						%>
						<li class="noPhoto">
							<dl>
								<dt>
									<span class="pho"><img src="<%if(reviewList.get(i).getReview_img()!=null){ %>//www.thebanchan.co.kr/fo/images/gds/ico_picture.png<% }%>" width="18" height="14" ></span>

									<span class="star_rate05"><b class="ir"><%=reviewList.get(i).getReview_score() %></b><em style="width:<%=reviewList.get(i).getReview_score()/5*100 %>%;"><%=reviewList.get(i).getReview_score() %></em></span>


									<span class="user"><%=reviewList.get(i).getReview_id() %></span>
									<span class="date"><%=reviewList.get(i).getReview_date()%></span>
								</dt>
								<dd class="off">
									<div class="rcmt">
										<%=reviewList.get(i).getReview_content()%>
									</div>

								</dd>
							</dl>
						</li>

						<%} %>
					</ul>
					
				</div>	

				<!-- PAGING -->
				<div class="paging" id="page_nav">
					<section id="pageList">
						<%if(nowPage > 1) {%>
			      		<a href="ReviewList.re?page=<%=nowPage -1 %>">Prev</a>&nbsp;
				      		<%
				      	}else{
				      		%>
				      		Prev&nbsp;
				      		<%
				      	}
				      	
				      	for(int i = startPage; i<=endPage; i++){
				      		if(nowPage == i){
				      			%><%=i %>&nbsp;<%
				      		} else{
				      			%>
				      			<a href="ReviewList.re?page=<%=i %>"><%=i %></a>&nbsp;
				      			<%
							}
						} 
						
				      	if(nowPage < maxPage){ %>
				      		<a href="ReviewList.re?page=<%=nowPage +1 %>">Next</a>&nbsp;
				      		<%
				      	}else{
				      		 %>Next&nbsp;<%
				      	}
				}else{%>
				    
					 	<span class="txt">
							작성 한 후기가 없습니다.
						</span>

			 <% } %>
				      
					</section>
				</div>
			</div>
</body>
</html>