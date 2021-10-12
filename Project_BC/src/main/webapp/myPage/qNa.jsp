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
	<h3 class="tit2">1:1 상담내역  <span class="btn"><a class="go" href="" onclick="">1:1 친절상담 등록</a></span></h3>
			
<div class="mys_sch">
	<div class="txt" id="guide_text">※최대 1년이내의 1:1상담 내역이 확인됩니다.</div>	
	
	<!-- CALENDER LAYER -->
	<div class="show_calendar" id="show_calendar"></div>
	<!--// CALENDER LAYER -->			
</div>
			
							
	<!-- LIST NONE -->
	<div class="mys_none">
		<span class="txt">1:1 친절상담 내역이 없습니다.</span>
	</div>
	<!-- //LIST NONE-->

			<!-- //MY LIST -->			
			
		</div>
	</div>
</div>
</body>
</html>