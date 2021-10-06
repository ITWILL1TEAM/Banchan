<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1상담 내역</title>
<link href="${pageContext.request.contextPath}/CSS/custCss.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/CSS/default.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
				//세션 아이디가 존재하지 않으면 로그인 페이지로 이동
				//자바스크립트로 로그인필수를 출력 후 이동처리
				String id =(String)session.getAttribute("id");
				if(id==null){
					%>
					<script type="text/javascript">
						alert('로그인 필수');
					</script>
					<%
					response.sendRedirect("../member/login.jsp");//로그인 폼 페이지로 이동 로그인팀 후에 하기ㅡㅡ
					
				}
				
%>

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
		<h2>1:1상담</h2>
	<footer>
		commit test
		footer
		</footer>
		

	<!-- 푸터 들어가기 -->


	
	</div>

		
			
</body>
</html>