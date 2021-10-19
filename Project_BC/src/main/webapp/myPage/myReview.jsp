<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 리뷰보기</title>
<link rel="stylesheet" href="CSS/mys.css?t=20200406000000" type="text/css">
<link rel="stylesheet" href="CSS/common.css?v=20211011000" type="text/css">
<link rel="stylesheet" href="CSS/pc-main-common.css?v=20211011000" type="text/css">
<link rel="stylesheet" href="CSS/font.css?v=20211018180" type="text/css">

</head>
<body>
<%@include file="../inc/top.jsp" %>
<div id="content" class="content" style="padding-top: 269px;">
	<div class="wrap mys">
		<div class="mys_top_pc">
			<div class="mytbc">MY더반찬	</div>
		</div>

	<div id="mys_lnb" class="lnb">
		<ul>
			<li>
				<dl>
					<dt style="text-align:left;margin-bottom: 12px">주문정보</dt>
					<dd><a id="left_01" href="OrderCheck.my" onclick="">주문/배송 조회</a></dd>
					<dd><a id="left_02" href="Resell.my" onclick="" >취소/반품 내역</a></dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt style="text-align:left;margin-bottom: 12px">활동내역</dt>
					<dd><a id="left_07" href="Review.my" onclick="" class="on">고객후기</a></dd>
					<dd><a id="left_08" href="QnA.my" onclick="">1:1 상담내역</a></dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt style="text-align:left;margin-bottom: 12px">회원정보</dt>
					<dd><a id="left_11" href="Besong.my" onclick="">배송지 관리</a></dd>
					<!-- <dd><a id="left_12" href="#">주문정보 수신 설정</a></dd> -->
					
						<dd><a id="left_13" href="Mypage.my" onclick="">개인정보 수정</a></dd>
						<dd><a id="left_14" href="Delete.my" onclick="">회원탈퇴</a></dd>
					
				</dl>
			</li>
		</ul>
	
		<dl class="cst">
			<dt><a href="" onclick="">고객센터</a></dt>
			<dd><b>1644-0000</b></dd>
			<dd><div style="color:#5f99f0;">▲ 단체구매문의</div></dd>
			<dd>평일 08:00~20:00<br>(토/일/공휴일은 휴무)</dd>
		</dl>
	</div>


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