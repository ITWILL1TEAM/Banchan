<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 관리</title>
<link rel="stylesheet" href="CSS/mys.css?t=20200406000000" type="text/css">
<link rel="stylesheet" href="CSS/common.css?v=20211011000" type="text/css">
<link rel="stylesheet" href="CSS/pc-main-common.css?v=20211011000" type="text/css">
<link rel="stylesheet" href="CSS/font.css?v=20211018180" type="text/css">
<script type="text/javascript">
	$(function() {
		$('.modifyBtn').on('click', function() {
			document.open("addAddress.jsp","","width=300,height=100");
		});

</script>

</head>
<body>
<%@include file="../inc/top.jsp" %>
<div id="content" class="content" style="padding-top: 100px;">
	<!-- WRAP -->
	<div class="wrap mys">
		<div class="mys_top_pc">
			<div class="mytbc">MY더반찬	</div>
		</div>

	<div id="mys_lnb" class="lnb">
		<ul>
			<li>
				<dl>
					<dt style="text-align:left;margin-bottom: 12px">주문정보</dt>
					<dd><a id="left_01" href="OrderCheck.my" onclick="" >주문/배송 조회</a></dd>
					<dd><a id="left_02" href="Resell.my" onclick="" >취소/반품 내역</a></dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt style="text-align:left;margin-bottom: 12px">활동내역</dt>
					<dd><a id="left_07" href="Review.my" onclick="">고객후기</a></dd>
					<dd><a id="left_08" href="QnA.my" onclick="">1:1 상담내역</a></dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt style="text-align:left;margin-bottom: 12px">회원정보</dt>
					<dd><a id="left_11" href="Besong.my" onclick="" class="on">배송지 관리</a></dd>
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
			<h3 class="tit">배송지 관리</h3>
			
			<div class="mys_summ">
				<div class="txt"><b>조정민</b> 님의 배송지 목록에 총 <b>0</b> 곳이 저장되어 있습니다.</div>
				<button type="button" class="bx" title="배송지 추가 새창" name="modifyBtn" >배송지 추가</button>
			</div>
			

			<div class="mys_none">
				<span class="txt">등록된 배송지가 없습니다.<br>배송지 추가 버튼을 통해 배송지를 입력해 주세요.</span>
			</div>
		</div>
	</div>
</div>
</body>
</html>