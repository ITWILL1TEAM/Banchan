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
			<h3 class="tit">배송지 관리</h3>
			
			<div class="mys_summ">
				<div class="txt"><b>조정민</b> 님의 배송지 목록에 총 <b>0</b> 곳이 저장되어 있습니다.</div>
				<button type="button" class="bx" title="배송지 추가 새창" name="modifyBtn" data-modify-yn="N">배송지 추가</button>
			</div>
			

			<div class="mys_none">
				<span class="txt">등록된 배송지가 없습니다.<br>배송지 추가 버튼을 통해 배송지를 입력해 주세요.</span>
			</div>
		</div>
	</div>
</div>
</body>
</html>