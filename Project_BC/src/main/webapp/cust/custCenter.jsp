<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터 | 더반찬 짭</title>
<link href="../CSS/custCss.css" rel="stylesheet" type="text/css">
<link href="../CSS/default.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrapper">
		<header>
			<div class="main_title">
				<jsp:include page="../inc/top.jsp"></jsp:include><!-- top페이지 인클루드 -->
			</div>
		
		</header>
		<nav id="cst" class="lnb">
			<a href="../CustCenter.do"><h2>고객센터</h2></a><!-- 눌렀을때 고객센터 페이지 들어가기 -->
			<ul>
				<li><a href="">자주하는 질문</a></li> 
				<li><a href="">1:1 친절상담</a></li>
				<li><a href="">1:1 상담내역</a></li>
				<li><a href="">공지사항</a></li>
			</ul>
			<dl class="cst">
				<dt><a href="" >  고객센터 ></a></dt>
				
				<dd><b>1644-6844</b></dd>
				<dd>평일 08:00~20:00<br>(토/일/공휴일은 휴무)</dd>
			</dl>
		</nav>
		
		<section class="cst_top">
			<article class="faq_search">
				<dl>
					<dt><b>FAQ</b></dt>
					<dd><input type="text" id="cstSearch" title="검색어 입력" placeholder="궁금하신 사항을 입력해 주세요"> 
						<button id="searchBtn">검색</button>
					</dd>
				</dl>
				<ul class="faq_word">
					<li><a href="">쿠폰</a></li>
					<li><a href="">배송</a></li>
					<li><a href="">회원</a></li>
					<li><a href="">적립금</a></li>
					<li><a href="">이벤트</a></li>
				</ul>
	
			</article>
			<article class="sub_content">	
		
				<ul class="cst_quick">
					<li class="q01"><a href="">아이디/비밀번호 찾기</a></li>
					<li class="q02"><a href="">주문/배송 조회</a></li>
					<li class="q03"><a href="">취소/반품 내역</a></li>
					<li class="q04"><a href="">비회원 주문조회</a></li>
				</ul>
			</article>
			</section>
			<section class="faq_cont">
				<h3 class="question">자주하는 질문 <b>TOP5</b></h3>
				<hr>
				<dl>
					<dt><a href="" data-counsel_faq_no="0000000876"><span class="icon">Q</span>언제배송되나요?</a></dt>
					<dd></dd>
					<br>
					<dt><a href="" data-counsel_faq_no="0000000876"><span class="icon">Q</span>배송비는 얼마인가요?</a></dt>
					<dd></dd>
					<br>
					<dt><a href="" data-counsel_faq_no="0000000876"><span class="icon">Q</span>아이스박스는 수거하시나요?</a></dt>
					<dd></dd>
					<br>
					<dt><a href="" data-counsel_faq_no="0000000876"><span class="icon">Q</span>신선식품인데 택배로 받아도 안전한가요?</a></dt>
					<dd></dd>
					<br>
				</dl>
				<h3 class="notice">공지사항</h3>
				<hr>
				<ul class="list">
					<li><a href="">[공지] 10월 4일 개천절 대체공휴일 배송 안내<span class="date thm">2021-09-24</span></a></li>
					<li><a href="">[공지] 추석 주문 폭주로 인한 18일 새벽배송 일부 지연<span class="date thm">2021-09-17</span></a></li>
					<li><a href="">[공지] 영업 양도에 따른 개인 정보 이전(예정) 안내<span class="date thm">2021-09-17</span></a></li>
				</ul>
			</section>
			
	
		
		<footer>
		commit test
		footer
		</footer>
		

	<!-- 푸터 들어가기 -->


	</div>
	
	
	
	




</body>
</html>