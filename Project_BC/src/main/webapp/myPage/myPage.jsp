<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../CSS/mys.css" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/common.css?v=20211011000" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/pc-main-common.css?v=20211011000" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/mys.css?t=20200406000000" type="text/css">
</head>
<body>
<%@include file="../inc/top.jsp" %>
<div id="content" class="content" style="padding-top: 269px;">
	<input type="hidden" id="checkPeriod">
	<!-- WRAP -->
	<div class="wrap mys">

		<div id="skip_nav"><a href="#mys_content">MY더반찬 본문 바로가기</a></div>
		
<dl class="location_slt">
	<dt><a href="">Home</a></dt>
	<dd><a href="">MY더반찬</a></dd>
</dl>


<%@include file="quick.jsp" %>

<div id="mys_content" class="sub_cont">
			<h3 class="tit">개인정보 수정</h3>
			
			  <form id="confirmForm" onsubmit="return false">
				<input type="hidden" name="target" value="memmodify">
				<div class="mys_cfm">
					<h3>본인 확인</h3>
					<div class="txt">개인정보 수정을 위해서는 본인 확인이 필요합니다.<br>비밀번호를 다시 한번 입력해 주세요.</div>
					<dl>
						<dt class="ir"><label for="m_pw">비밀번호</label></dt>
						<dd>
							<span class="inp"><input type="password" id="m_pw" class="input" name="temp_pw" placeholder="비밀번호"></span>
							<div id="faildiv">
							
							</div>
						</dd>
					</dl>
					<div class="btn"><button id="saveBtn" type="button" onclick=""><em>확인</em></button></div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>