<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link href="${pageContext.request.contextPath}/CSS/custCss.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/CSS/default.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrapper">
		<header>
			<div class="main_title">
				<jsp:include page="../inc/top.jsp"></jsp:include><!-- top페이지 인클루드 -->
			</div>
		
		</header>
		<nav id="cst" class="lnb">
			<a href="CustCenterMain.co"><h2>고객센터</h2></a><!-- 눌렀을때 고객센터 페이지 들어가기 -->
			<ul>
				<li><a href="CustCenterFAQ.co">자주하는 질문</a></li> 
				<li><a href="CustCenterQNA.co">1:1 친절상담</a></li>
				<li><a href="CustCenterQNAList.co">1:1 상담내역</a></li>
				<li><a href="CustCenterNotice.co">공지사항</a></li>
			</ul>
			<dl class="cst">
				<dt><a href="CustCenterMain.co" >  고객센터 ></a></dt>
				
				<dd><b>1644-6844</b></dd>
				<dd>평일 08:00~20:00<br>(토/일/공휴일은 휴무)</dd>
			</dl>
		</nav>
		
		<section>
			<h3>공지사항</h3>
		
		</section>
	
	</div>
</body>
</html>