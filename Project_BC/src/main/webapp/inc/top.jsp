<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header id="headerWrap" class="header-wrap">
	<!-- header top -->
	<div class="header-top">
		<div class="inner-box">
			<h1 class="logo">
				<a href=""
					style="width: 184px; height: 50px; background-image: url(&quot;../fo/images/ico/logo.png&quot;);">더반찬&amp;</a>
			</h1>
			<!-- 검색 영역 [S] -->
			<div class="search-wrap">
				<div class="search-form">
					<input type="text" id="hd_sch" class="sch_input" autocomplete="off"					
						placeholder="검색해보세요"
						style="color: rgb(127, 127, 127);">
					<button type="submit" id="btnSearch" class="btn-search">검색</button>					
									
				</div>
			</div>
			<!-- 검색 영역 [E] -->


			<div class="util-wrap">
				<ul>

					<li><a id="head_login_a" href="">로그인</a></li>
					<li><a id="head_login_b" href="Member.me">회원가입</a></li>

					<li><a href="">고객센터</a></li>
				</ul>
			</div>
			<div id="myWrap" class="my-wrap">
				<ul>
					<li><a href="" style="padding-right: 30px;"><i
							class="ico-my"></i>마이페이지</a></li>
					<li><a href=" " onclick=" " class="link-cart"> <i
							class="ico-cart"></i>장바구니 <strong class="cart-count"> 0
						</strong>
					</a>
				</ul>
			</div>

		</div>
	</div>
	<!-- //header top -->

	<!-- 카테고리 [S] -->
	<!-- gnb 2020-07-09 아이콘 수정 -->
	<nav class="gnb-area">
		<h2 class="hidden">전체메뉴</h2>
		<div class="gnb-wrap">
			<div class="inner-box">
				<ul>
					<li class="mnu-all"><a href=""> <span class="icon">
								<img src="//www.thebanchan.co.kr/fo/images/ico/ico_category.png"
								class="off"> <img
								src="//www.thebanchan.co.kr/fo/images/ico/ico_category_on.png"
								class="on">
						</span> 카테고리
					</a></li>

					<li><a href="" onclick="">신상품</a></li>
					<li class="gbnLine"><a href="" onclick="">베스트</a></li>
					<li class="gbnLine"><a href="" onclick=""> 상품보기 </a></li>


					<li class=""><a href="" onclick="">정기배송</a></li>

				</ul>
				<ul class="gnb-right">

					<li><a href=" ">TEST1</a></li>
					<li><a href=" ">TEST2</a></li>
				</ul>
			</div>
		</div>
	</nav>

</header>

