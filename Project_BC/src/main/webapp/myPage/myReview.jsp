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
<script type="text/javascript">
	
	document.getElemntsByClassName("on")[0].value = "";
	
	

</script>

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
			<h3 class="tit">고객후기</h3>
			
			<!-- MY SUMMARY -->
			<div class="mys_summ">
				<div class="txt"><b>조정민</b> 고객님께서 구매하신 제품에 고객후기를 남겨 주시면 다양한 혜택을 드립니다. </div>
			</div>
			<!-- //MY SUMMARY -->

			<!-- DATE SEARCH -->
			
<div class="mys_sch">
	<div class="txt" id="guide_text">※최대 1년 이내의 고객후기 내역이 확인됩니다.</div>	
	
	<!-- CALENDER LAYER -->
	<div class="show_calendar" id="show_calendar"></div>
	<!--// CALENDER LAYER -->			
</div>
<!-- //DATE SEARCH -->


			<!-- MY TAB -->
			<div class="tab_menu">
				<ul id="tabUl">
					<li class="on" data-review-yn="Y">
						<a href="" id="#tab_con1" class="tab t1">작성 가능한 고객후기</a>
						<!-- MY LIST -->							
						<div id="reviewNoBodyDiv">
							

	<!-- LIST NONE -->
	<div class="mys_none">
		<span class="txt">
			수취 완료 후 30일 이내  작성 가능한 후기가 없습니다.
		</span>
	</div>
	<!-- //LIST NONE -->




						</div>
						<!-- //MY LIST -->	
					</li>
					<li data-review-yn="N">
						<a href="" id="#tab_con2" class="tab t2">작성한 고객후기</a>
						<!-- MY LIST -->	
						<div id="reviewBodyDiv">
							
						</div>	
						<!-- //MY LIST -->	
					</li>
				</ul>			
					
			</div>				
			<!-- //MY TAB -->	

			<!-- MY NOTICE -->
			<div class="mys_notice">
				<h4>고객후기쓰기 혜택 <b>TIP</b></h4>
				<ul>
					<li>포토고객후기 100원/일반 고객후기 50원/세븐데이세트 제품1개당 10원의 적립금을 드립니다.</li>
					<li>작성하신 고객후기가 BEST로 선정 시  5,000원 자동지급 해드립니다.<br><em>(TIP. Life Style을 담은 퀄리티 있는 사진을 어둡지 않게 흔들리지 않게 올리시면 당첨확률 UP UP!)</em></li>
					<li>고객후기는 구매 후 30일 이내 작성 가능하며, 제품과 무관한 사진이나 사이트 제품사진을 캡쳐한 사진, 고객후기의 성격에 맞지 않는 내용은 관리자에 의해 노출제한, 비공개, 삭제 될 수 있으며 지급된 적립금이 회수 될 수 있습니다.</li>
				</ul>
			</div>
			<!-- //MY NOTICE -->
		</div>
	</div>
</div>
</body>
</html>