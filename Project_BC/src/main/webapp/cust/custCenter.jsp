<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="//www.thebanchan.co.kr/fo/images/common/favicon.ico?v=2" type="image/x-icon">
<link rel="icon" href="//www.thebanchan.co.kr/fo/images/common/favicon.ico?v=2" type="image/x-icon">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/common.css?v=20211010170" type="text/css">   
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/pc-main-common.css?v=20211010170" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/sub.css?v=20211010170" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/asset/css/font.css?v=20211010170" type="text/css">
<script type="text/javascript" src="//www.thebanchan.co.kr/common/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="//www.thebanchan.co.kr/fo/js/jquery.plugin.js"></script>

<script type="text/javascript" src="//www.thebanchan.co.kr/common/js/ui.js"></script>
</head>
<body>


<!--// HEADER -->
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/cst.css" type="text/css">

<script type="text/javascript">
$(document).ready(function(){

	$('.cst_faq dt a').click(function(){
		var $dl=$(this).parent().parent('dl');
		$dl.toggleClass('on').siblings('dl').removeClass('on');
		
		overpass.custcenter.faqHitUpdate($(this));
	});

	 goNotice = function(noti_no){
		location.href='/cust/initCustCenterNotice.action?noti_no='+noti_no;
	}
	 
	fn_btn_top()
	
	$(".fav_word a").click(function () {
		$("#faq", topForm).val($(this).text());
		$('#topForm').attr("action","/cust/initCustCenterFAQ.action").submit();
	});
	
	$("#topSearchBtn").click(function () {
		$("#faq", topForm).val($("#sch_faq").val());
		$('#topForm').attr("action","/cust/initCustCenterFAQ.action").submit();
	});
	
	$('.cst_top').on("keydown", "#sch_faq", function(){
		if (window.event.keyCode == 13) {
			$(this).next("button").click();
		}
	});
	
	loginCheck = function(str){
		if('false' == 'false' && str == 'MBFIND'){
			overpass.link(str);
		}else if('false' == 'false' && str == 'NMBLOGIN'){
			overpass.link(str);
		}else{
			alert('?????? ????????? ???????????????.');
		}
	}
});
</script>



<!-- CONTENT -->
<div id="content" class="content">
	<!-- WRAP -->
	<div class="wrap cst">
		<!-- SKIP NAVI -->
		<div id="skip_nav"><a href="#cst_content">???????????? ?????? ????????????</a></div>
		<!-- //SKIP NAVI -->
		<!-- LOCATION SELECT -->
			
<dl class="location_slt">
	<dt><a href="javascript:overpass.link('MAIN');" >Home</a></dt>
	<dd><a href="javascript:overpass.custcenter.goMain();" >????????????</a></dd>
</dl>
		<!--// LOCATION SELECT -->
		
		<!-- LNB -->
		
<script type="text/javascript" src="//www.thebanchan.co.kr/fo/js/overpass.custcenter.js"></script>
<div id="cst_lnb" class="lnb">
	<a href="CustCenterMain.co"><h2>????????????</h2></a>
	<ul>
		<li><a id="left_01" href="CustCenterFAQ.co" onclick="overpass.custcenter.goFAQList()">???????????? ??????</a></li>
		<li><a id="left_02" href="CustCenterQNA.co" onclick="overpass.custcenter.goCounsel()">1:1 ????????????</a></li>
		<li><a id="left_03" href="CustCenterQNAList.co" onclick="overpass.custcenter.goCounselList()">1:1 ????????????</a></li>
		<li><a id="left_04" href="CustCenterNotice.co" onclick="overpass.custcenter.goNoticeList()">????????????</a></li>
	</ul>
	<dl class="cst">
		<dt><a href="CustCenterMain.co" onclick="overpass.custcenter.goMain();">????????????</a></dt>
		<dd><b>1644-6844</b></dd>
		<dd>?????? 08:00~20:00<br/>(???/???/???????????? ??????)</dd>
	</dl>
</div>
		<!-- //LNB -->

		<!-- Cst Main Top -->
		<div class="cst_top">
			<dl>
				<dt>
					<label for="sch_faq"><img src="//www.thebanchan.co.kr/fo/images/cst/tit_faq.png" alt="FAQ" /></label>
				</dt>
				<dd>
					<input type="text" id="sch_faq" title="????????? ??????" placeholder="???????????? ????????? ????????? ?????????">
					<button type="button" id="topSearchBtn" class="bt_sch"><em>??????</em></button>
				</dd>
			</dl>
			<form id="topForm" method="post">
				<input type="hidden" id="faq" name="faq" />
			</form>
			<ul class="fav_word">
				<li><a href="">??????</a></li>
				<li><a href="">??????</a></li>
				<li><a href="">??????</a></li>
				<li><a href="">?????????</a></li>
				<li><a href="">?????????</a></li>
			</ul>
		</div>
		<!-- //Cst Main Top -->

		<!-- SUB CONTENT -->
		<div id="cst_content" class="sub_cont">
			<ul class="cst_quick">
				<li class="q01"><a href="javascript:void(0);" onclick="loginCheck('MBFIND')">?????????/???????????? ??????</a></li>
				<li class="q02"><a href="javascript:void(0);" onclick="overpass.link('ORDER')">??????/?????? ??????</a></li>
				<li class="q03"><a href="javascript:void(0);" onclick="overpass.mypage.goClaimList()">??????/?????? ??????</a></li>
				<li class="q04"><a href="javascript:void(0);" onclick="loginCheck('NMBLOGIN')">????????? ????????????</a></li>
			</ul>
			<div class="cst_faq">
				<h3 class="thm">?????? ?????? ?????? <span>TOP5</span></h3>

				<dl>
					<dt><a href="javascript:;" data-counsel_faq_no="0000000876"><span class="icon">Q</span>??????</a></dt>
					<dd><span class="icon">A</span>??????</dd>
				</dl>

				<dl>
					<dt><a href="javascript:;" data-counsel_faq_no="0000000876"><span class="icon">Q</span>??????</a></dt>
					<dd><span class="icon">A</span>??????</dd>
				</dl>


				<dl>
					<dt><a href="javascript:;" data-counsel_faq_no="0000000876"><span class="icon">Q</span>??????</a></dt>
					<dd><span class="icon">A</span>??????</dd>
				</dl>

			</div>
			<div class="cst_noti_main">
				<h3>????????????</h3>
				<ul class="list">
				
					<li><a href="javascript:goNotice('20211005699');" >????????????<span class="date thm">????????????</span></a></li><!--????????? ???????????? ???????????? ?????? ???????????? ?????? -->
				
					<li><a href="javascript:goNotice('20211005698');" >[??????] ???????????????????????? ?????? ?????? (10??? 13??? ??????)<span class="date thm">2021-10-06</span></a></li>
				
					<li><a href="javascript:goNotice('20210905678');" >[??????] 10??? 4??? ????????? ??????????????? ?????? ??????<span class="date thm">2021-09-24</span></a></li>
				
				</ul>
				<a href="javascript:;" onclick="overpass.custcenter.goNoticeList()" class="arrow_btn01">????????????</a>
			</div>
		</div>
		<!-- //SUB CONTENT -->
	</div>
	<!-- WRAP -->
</div>
<!-- //CONTENT -->







<!-- FOOTER -->


</body>
</html>