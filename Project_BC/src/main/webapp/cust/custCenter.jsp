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
			alert('현재 로그인 상태입니다.');
		}
	}
});
</script>



<!-- CONTENT -->
<div id="content" class="content">
	<!-- WRAP -->
	<div class="wrap cst">
		<!-- SKIP NAVI -->
		<div id="skip_nav"><a href="#cst_content">고객센터 본문 바로가기</a></div>
		<!-- //SKIP NAVI -->
		<!-- LOCATION SELECT -->
			
<dl class="location_slt">
	<dt><a href="javascript:overpass.link('MAIN');" >Home</a></dt>
	<dd><a href="javascript:overpass.custcenter.goMain();" >고객센터</a></dd>
</dl>
		<!--// LOCATION SELECT -->
		
		<!-- LNB -->
		
<script type="text/javascript" src="//www.thebanchan.co.kr/fo/js/overpass.custcenter.js"></script>
<div id="cst_lnb" class="lnb">
	<a href="CustCenterMain.co"><h2>고객센터</h2></a>
	<ul>
		<li><a id="left_01" href="CustCenterFAQ.co" onclick="overpass.custcenter.goFAQList()">자주하는 질문</a></li>
		<li><a id="left_02" href="CustCenterQNA.co" onclick="overpass.custcenter.goCounsel()">1:1 친절상담</a></li>
		<li><a id="left_03" href="CustCenterQNAList.co" onclick="overpass.custcenter.goCounselList()">1:1 상담내역</a></li>
		<li><a id="left_04" href="CustCenterNotice.co" onclick="overpass.custcenter.goNoticeList()">공지사항</a></li>
	</ul>
	<dl class="cst">
		<dt><a href="CustCenterMain.co" onclick="overpass.custcenter.goMain();">고객센터</a></dt>
		<dd><b>1644-6844</b></dd>
		<dd>평일 08:00~20:00<br/>(토/일/공휴일은 휴무)</dd>
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
					<input type="text" id="sch_faq" title="검색어 입력" placeholder="궁금하신 사항을 입력해 주세요">
					<button type="button" id="topSearchBtn" class="bt_sch"><em>검색</em></button>
				</dd>
			</dl>
			<form id="topForm" method="post">
				<input type="hidden" id="faq" name="faq" />
			</form>
			<ul class="fav_word">
				<li><a href="">쿠폰</a></li>
				<li><a href="">배송</a></li>
				<li><a href="">회원</a></li>
				<li><a href="">적립금</a></li>
				<li><a href="">이벤트</a></li>
			</ul>
		</div>
		<!-- //Cst Main Top -->

		<!-- SUB CONTENT -->
		<div id="cst_content" class="sub_cont">
			<ul class="cst_quick">
				<li class="q01"><a href="javascript:void(0);" onclick="loginCheck('MBFIND')">아이디/비밀번호 찾기</a></li>
				<li class="q02"><a href="javascript:void(0);" onclick="overpass.link('ORDER')">주문/배송 조회</a></li>
				<li class="q03"><a href="javascript:void(0);" onclick="overpass.mypage.goClaimList()">취소/반품 내역</a></li>
				<li class="q04"><a href="javascript:void(0);" onclick="loginCheck('NMBLOGIN')">비회원 주문조회</a></li>
			</ul>
			<div class="cst_faq">
				<h3 class="thm">자주 하는 질문 <span>TOP5</span></h3>

				<dl>
					<dt><a href="javascript:;" data-counsel_faq_no="0000000876"><span class="icon">Q</span>언제배송되나요?</a></dt>
					<dd><span class="icon">A</span>더반찬은 <strong>지정하신 희망배송일에 </strong>일반택배배송, 새벽직배송 두가지 방법으로 배송해드리고 있습니다.
<br>
<br>1) 일반택배(한진택배)배송의 경우 해당 지역의 당일 택배 물량과 배송기사님의 당일 이동노선에 따라 배송시간은 상이합니다. 항상 동일시간대에 배송되지 않는점 참고를 바랍드립니다.
<br>
<br>2) 새벽직배송은 희망배송일 전일 오후 10시 ~ 희망배송일 오전 7시 사이에 고객님이 지정해주신 주소지로 배송해 드리고 있습니다.<br />
<br>&nbsp;당일 물량과 배송기사님의 이동노선에 따라 배송되고 있어, 시간 지정은 불가합니다.
<br>
<br>① 새벽직배송은 별도의 공동출입문 비밀번호가 필요합니다. 미기재시 배송지연, 미배송 될수 있으며 이로 인한 책임은 더반찬이 지지 않습니다.<br />
<br>새벽직배송시 공동 출입문을 출입하지 못하면 제시간에 배송이 불가능합니다.
<br>
<br>② 새벽직배송은 희망배송일 전일 오후10시 ~ 희망배송일 오전7시 사이 주무시는 동안에도 배송될수 있기에 고객님의 숙면을 위하여 별도의 문자 및 유선 연락을 드리고 있지 않습니다. 별도의 연락을 원하시는 경우 주문서 작성시 주변장소 정보 혹은 특이 요청사항에 남겨주시기 바랍니다.
<br>
<br><br />
<br>※ 일반택배배송, 새벽직배송은 교통상황, 명절 및 연휴기간, 기상상황, 천재지변 등으로 배송지연이 발생될 수 있습니다.
<br>
<br>&nbsp;
<br></dd>
				</dl>

				<dl>
					<dt><a href="javascript:;" data-counsel_faq_no="0000000875"><span class="icon">Q</span>배송비는 얼마인가요?</a></dt>
					<dd><span class="icon">A</span>실결제금액 45,000원 이상 주문 시 무료배송<br />
<br>실결제금액 45,000원 미만 주문 시 일반택배배송 2,500원 / 새벽직배송 2,900원 배송비 부과
<br>
<br>※ 최소 주문금액 : 10,000원 이상
<br>
<br>※ 실결제금액 = 주문합계금액 - 쿠폰/할인금액
<br>
<br>&nbsp;
<br></dd>
				</dl>

				<dl>
					<dt><a href="javascript:;" data-counsel_faq_no="0000000873"><span class="icon">Q</span>새벽배송이 완료되면 문자나 유선(전화) 연락을 주나요?</a></dt>
					<dd><span class="icon">A</span>새벽직배송은 고객님께서 주무시는 희망배송일 전일 오후 10시에서 희망배송일 오전 7시 사이 배송되고 있기에 고객님의 편안한 숙면을 위하여 별도 연락은 드리지 않습니다.<br />
<br>별도의 연락을 원하시는 경우 주문서 작성시 [주변장소 정보 혹은 특이 요청사항]에 남겨주시기 바랍니다.
<br>
<br>ex) 경비실에 맡겨주세요. 무인택배함에 보관해 주세요, 배송완료 시 문자 부탁드려요. 등
<br></dd>
				</dl>

				<dl>
					<dt><a href="javascript:;" data-counsel_faq_no="0000000895"><span class="icon">Q</span>아이스박스는 수거 하시나요?</a></dt>
					<dd><span class="icon">A</span>포장재인&nbsp;아이스박스는 수거하지 않습니다.
<br>
<br>아이스박스 수거 및 폐기시 발생되는 제반환경 및 법적조치 등 사전에 해결해야 할 사안들이 많다 보니,&nbsp; 당장의 회수 약속을 드리기에 어려움이 있습니다.<br />
<br>더반찬에서도 적극적인 대안마련과 다양한 방법을 찾기 위해 최선을 다하고 있습니다. 번거로우시겠지만, 당분간은 자체 폐기를 부탁드립니다.
<br></dd>
				</dl>

				<dl>
					<dt><a href="javascript:;" data-counsel_faq_no="0000000872"><span class="icon">Q</span>신선식품인데 택배로 받아도 안전한가요?</a></dt>
					<dd><span class="icon">A</span>더반찬의 제품은 배송시 선도 유지를 위해 얼린 샘물을&nbsp;동봉하여 아이스박스에 포장하고 있습니다. 얼린 샘물의 수량은 기온에 따라 수량이 변경되고 있습니다. 신선하고 안전하게 배송하겠습니다
<br></dd>
				</dl>

			</div>
			<div class="cst_noti_main">
				<h3>공지사항</h3>
				<ul class="list">
				
					<li><a href="javascript:goNotice('20211005699');" >[공지] 10월 11일 한글날 대체공휴일 배송 안내<span class="date thm">2021-10-06</span></a></li>
				
					<li><a href="javascript:goNotice('20211005698');" >[공지] 개인정보처리방침 개정 안내 (10월 13일 시행)<span class="date thm">2021-10-06</span></a></li>
				
					<li><a href="javascript:goNotice('20210905678');" >[공지] 10월 4일 개천절 대체공휴일 배송 안내<span class="date thm">2021-09-24</span></a></li>
				
				</ul>
				<a href="javascript:;" onclick="overpass.custcenter.goNoticeList()" class="arrow_btn01">전체보기</a>
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