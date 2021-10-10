<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>장바구니</title>
	<link rel="shortcut icon" href="//www.thebanchan.co.kr/fo/images/common/favicon.ico?v=2" type="image/x-icon">
	<link rel="icon" href="//www.thebanchan.co.kr/fo/images/common/favicon.ico?v=2" type="image/x-icon">
	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/common.css?v=20211010170" type="text/css">	
	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/pc-main-common.css?v=20211010170" type="text/css">
	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/sub.css?v=20211010170" type="text/css">
	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/asset/css/font.css?v=20211010170" type="text/css">
	<script type="text/javascript" src="//www.thebanchan.co.kr/common/js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="//www.thebanchan.co.kr/fo/js/jquery.plugin.js"></script>

	<script type="text/javascript" src="//www.thebanchan.co.kr/common/js/ui.js"></script>
	<script type="text/javascript" src="//www.thebanchan.co.kr/common/js/slick.min.js"></script>
	<script type="text/javascript" src="//www.thebanchan.co.kr/common/js/TweenMax.min.js"></script>

</head>
<body>

<!-- ACCESSIBILITY -->
<div id="accessibility" class="accessibility">
	<dl>
		<dt class="ir"><strong>바로가기 메뉴</strong></dt>
		<dd><a href="#content">본문 바로가기</a></dd>
		<dd><a href="#header">메인메뉴 바로가기</a></dd>
		<dd><a href="#footer">하단메뉴 바로가기</a></dd>
	</dl>
</div>
<!-- //ACCESSIBILITY -->

<!-- HEADER -->
<header id="headerWrap" class="header-wrap">
	<div class="banner-area"></div>
 	<!-- header top -->
	<div class="header-top">
		<div class="inner-box">
			<h1 class="logo">
				<a href="./main.jsp">더반찬&</a>
			</h1>
			<!-- 검색 영역 [S] -->
			<div class="search-wrap">
				<div class="search-form">
					<input type="text" id="hd_sch" class="sch_input" autocomplete="off" >
					<button type="submit" id="btnSearch" class="btn-search">검색</button>
					<button type="button" class="btn-clear hidden">지우기</button>
					<div class="sch-box">
						<p class="title">최근검색어</p>
						<div class="nodata-wrap">
							<p>최근 검색어가 없습니다.</p>
						</div>
					</div>
					<button class="sch_bt" type="button"><em class="ir">검색하기</em></button>
				</div>
			</div>
			<!-- 검색 영역 [E] -->
			
			<!-- 2020.07.10	MAIN 수정  -->
			<div class="util-wrap">
				<ul>
					 
					<li><a href="javascript:overpass.link('ORDER');" class="link-mypage"><span>
					WELCOME 회원</span>님</a></li>
			 		
					<li><a href="javascript:overpass.logout();">로그아웃</a></li>
					
					<li><a href="javascript:overpass.link('CUSTCENTER');">고객센터</a></li>
					<li><a href="javascript:overpass.link('DAWNDELI');">배송지역 검색</a></li>
					
				</ul>
			</div>
			<div id="myWrap" class="my-wrap">
				<ul>
					<li>
						<a href="javascript:void(0);" class="link-mypage"><i class="ico-my"></i>마이더반찬</a>
						<div class="user-info-box">
							<div class="btn-box">
								<a href="javascript:overpass.link('ORDER');">마이더반찬</a>
							</div>
							<div class="name-box">
								 
								<p class="name" onclick="overpass.link('ORDER');"><span>WELCOME 회원</span>님</p>
								
								<p>
									<a href="javascript:overpass.mypage.goGradeInfo();">
									다음달 FREINDS  까지 <strong>50,000원</strong> 구매 필요
									</a>
								</p>
								
							</div>
							<ul class="list" style="box-sizing: border-box;">
								<li>                 
									<strong>
										<a href="/mypage/initOrderList.action">주문/배송</a>
									</strong>
									<span><em>0</em>건</span>
								</li>
								<li>
									<strong>
										<a href="/mypage/initCouponList.action">쿠폰</a>
									</strong>
									<span><em>1</em>장</span>
								</li>
								<li>
									<strong>
										<a href="/mypage/initSaveMoney.action">적립금</a>
									</strong>
									<span><em>0</em>원</span>
								</li>
							</ul>
							
							<div class="view-box" id="goodsImgBox" style="box-sizing: border-box;">
								<p>최근 본 제품<span>(<em>16</em>)</span></p>			
								<div class="todayview-slider">

			<div class="item">
				<a href="javascript:void(0);" onclick="overpass.goods.goDetail({goods_no :'0000014285', vir_vend_no : 'VV17002724'});">
					<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/64/624/200715000025624.jpg" alt="오이소박이(800g)" onerror="this.src='/common/images/common/noimg_64.jpg'" />
				</a>
			</div>			

			<div class="item">
				<a href="javascript:void(0);" onclick="overpass.goods.goDetail({goods_no :'0000014985', vir_vend_no : 'VV17002724'});">
					<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/64/764/200721000025764.jpg" alt="양장피" onerror="this.src='/common/images/common/noimg_64.jpg'" />
				</a>
			</div>			

			<div class="item">
				<a href="javascript:void(0);" onclick="overpass.goods.goDetail({goods_no :'0000013801', vir_vend_no : 'VV17002724'});">
					<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/64/568/200714000025568.jpg" alt="뚝배기불고기(550g)" onerror="this.src='/common/images/common/noimg_64.jpg'" />
				</a>
			</div>			

			<div class="item">
				<a href="javascript:void(0);" onclick="overpass.goods.goDetail({goods_no :'1708009849', vir_vend_no : 'VV17002724'});">
					<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/64/570/200714000025570.jpg" alt="광주별미소고기육전" onerror="this.src='/common/images/common/noimg_64.jpg'" />
				</a>
			</div>			

			<div class="item">
				<a href="javascript:void(0);" onclick="overpass.goods.goDetail({goods_no :'1712010310', vir_vend_no : 'VV17002724'});">
					<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/64/571/200714000025571.jpg" alt="두메산나물비빔밥재료" onerror="this.src='/common/images/common/noimg_64.jpg'" />
				</a>
			</div>			

			<div class="item">
				<a href="javascript:void(0);" onclick="overpass.goods.goDetail({goods_no :'2107015727', vir_vend_no : 'VV17002724'});">
					<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/64/610/210917000027610.jpg" alt="더반찬& 집밥만찬 2종 골라담기 (5,000원 부터~)" onerror="this.src='/common/images/common/noimg_64.jpg'" />
				</a>
			</div>			

			<div class="item">
				<a href="javascript:void(0);" onclick="overpass.goods.goDetail({goods_no :'2103015236', vir_vend_no : 'VV17002724'});">
					<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/64/972/210322000026972.jpg" alt="[열혈주방] 치즈 큐브불족발" onerror="this.src='/common/images/common/noimg_64.jpg'" />
				</a>
			</div>			

			<div class="item">
				<a href="javascript:void(0);" onclick="overpass.goods.goDetail({goods_no :'2012014831', vir_vend_no : 'VV17002724'});">
					<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/64/440/201203000026440.jpg" alt="[비비드팜] 쉬림프소바포케" onerror="this.src='/common/images/common/noimg_64.jpg'" />
				</a>
			</div>			

			<div class="item">
				<a href="javascript:void(0);" onclick="overpass.goods.goDetail({goods_no :'2106015494', vir_vend_no : 'VV17002724'});">
					<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/64/962/210319000026962.jpg" alt="[내일한정] [심방골주부X더반찬] 시골 돼지짜글이(600g)" onerror="this.src='/common/images/common/noimg_64.jpg'" />
				</a>
			</div>			

			<div class="item">
				<a href="javascript:void(0);" onclick="overpass.goods.goDetail({goods_no :'2007014380', vir_vend_no : 'VV17002724'});">
					<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/64/804/200722000025804.jpg" alt="[미트Q] 금천한돈 칼집 삼겹살(구이용/570g)" onerror="this.src='/common/images/common/noimg_64.jpg'" />
				</a>
			</div>			

			<div class="item">
				<a href="javascript:void(0);" onclick="overpass.goods.goDetail({goods_no :'2106015510', vir_vend_no : 'VV17002724'});">
					<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/64/782/210216000026782.jpg" alt="[내일한정] [일호식X더반찬] 일호식소반세트" onerror="this.src='/common/images/common/noimg_64.jpg'" />
				</a>
			</div>			

			<div class="item">
				<a href="javascript:void(0);" onclick="overpass.goods.goDetail({goods_no :'1911013538', vir_vend_no : 'VV17002724'});">
					<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/64/673/200717000025673.jpg" alt="도라지오이무침(185g)" onerror="this.src='/common/images/common/noimg_64.jpg'" />
				</a>
			</div>			

			<div class="item">
				<a href="javascript:void(0);" onclick="overpass.goods.goDetail({goods_no :'2106015434', vir_vend_no : 'VV17002724'});">
					<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/64/570/200714000025570.jpg" alt="[내일한정] 광주별미소고기육전" onerror="this.src='/common/images/common/noimg_64.jpg'" />
				</a>
			</div>			

			<div class="item">
				<a href="javascript:void(0);" onclick="overpass.goods.goDetail({goods_no :'2109015848', vir_vend_no : 'VV17002724'});">
					<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/64/590/210913000027590.jpg" alt="더반찬& 돼지고추장불고기 (4개)" onerror="this.src='/common/images/common/noimg_64.jpg'" />
				</a>
			</div>			

			<div class="item">
				<a href="javascript:void(0);" onclick="overpass.goods.goDetail({goods_no :'0000013665', vir_vend_no : 'VV17002724'});">
					<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/64/656/200716000025656.jpg" alt="코다리간장조림(250g)" onerror="this.src='/common/images/common/noimg_64.jpg'" />
				</a>
			</div>			

			<div class="item">
				<a href="javascript:void(0);" onclick="overpass.goods.goDetail({goods_no :'2012014905', vir_vend_no : 'VV17002724'});">
					<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/64/533/210820000027533.jpg" alt="프리미엄 전세트(냉동)" onerror="this.src='/common/images/common/noimg_64.jpg'" />
				</a>
			</div>			

		</div>
							</div>
							
						</div>
						
					</li>
					<li>
						<a href="javascript:void(0);" onclick="overpass.link('CART')" class="link-cart">
							<i class="ico-cart"></i>장바구니
							<strong class="cart-count"> 3 </strong>
						</a>
						<div class="cart-box">
							<p class="title">장바구니에 담겼습니다.</p>
							<div class="cart-item">
								<div class="item">
									<dl>
										<dt>
											<a href="javascript:void(0);">
												<img id="cartBoxGoodsImg" src=""/>
											</a>
										</dt>
										<dd>
											<p id="cartBoxGoodsNm"></p>
										</dd>
									</dl>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			
		</div>
	</div>
	<!-- //header top -->
 	
 	<!-- 카테고리 [S] -->
	<nav class="gnb-area">
		<h2 class="hidden">전체메뉴</h2>
		<div class="gnb-wrap">
			<div class="inner-box">
				<ul>
					<li class="mnu-all">
						<a href="javascript:void(0);">
							<span class="icon">
								<img src="//www.thebanchan.co.kr/fo/images/ico/ico_category.png" class="off"/>
								<img src="//www.thebanchan.co.kr/fo/images/ico/ico_category_on.png" class="on"/>
							</span>
						카테고리</a>
					</li>
					
					
						<li><a href="javascript:void(0);" onclick="overpass.link('LIGHTINGDEAL')" class="ani ani2">
							<i class="ico-up"> </i><i class="flash">번</i><i class="flash">쩍</i><i class="flash">딜</i>
							</a>
						</li>
					
					<li><a href="javascript:void(0);" onclick="overpass.link('SALE')"        >할인특가</a></li>
					<li><a href="javascript:void(0);" onclick="overpass.link('NEW')"         >신상품</a></li>
					<li class="gbnLine"><a href="javascript:void(0);" onclick="overpass.link('BEST')">베스트</a></li>
					<li class="gbnLine"><a href="javascript:void(0);" onclick="overpass.link('THEMEAT')"><i class="ico-up"></i>더신선정육관</a></li>
					<li class="gbnLine"><a href="javascript:void(0);" onclick="overpass.link('THISGOURMET')"><i class="ico-up"></i>이달의맛집</a></li>
					<li><a href="javascript:void(0);" onclick="overpass.link('7DAY')"        >7데이</a></li>
					<li><a href="javascript:void(0);" onclick="overpass.link('REGULARMENU')" >정기식단</a></li>

				</ul>
				<ul class="gnb-right">
               		<li><a href="javascript:overpass.dispctg.goCtgList({disp_type : 'BRAND'});">프렌즈스토어</a></li>
					<li><a href="/event/initEventAndCoupon.action">이벤트/혜택</a></li>
				</ul>
			</div>
		</div>
		<div class="gnb-sub-wrap">
			<div class="inner-box">
				<ul class="mnu-type">
					
				</ul>
			</div>
		</div>
	</nav>
	<!-- //gnb -->
 	<!-- 카테고리 [E] --> 	
</header>

<!--// HEADER -->
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/odr.css?t=20200406000000" type="text/css">


	<script type="text/javascript" src="//www.thebanchan.co.kr/common/js/order/overpass.cart.base.js?v=1633854217145"></script>
	<script type="text/javascript" src="//www.thebanchan.co.kr/fo/js/order/overpass.cart.js?v=1633854217145"></script>
	<script type="text/javascript">
	<!--
		window.CART.data = {"return_values":[],"deli":{"10":{"0000001":{"r_deli_cost_form_cd":"10","r_deli_cost_poli_no":"0000363181","st_amt":30000,"r_deli_coupon_rsc_no":"","r_city_exp_deli_cost":0,"goods":["0","1","4"],"r_deli_coupon_promo_nm":"","r_deli_coupon_aval_end":"","r_deli_coupon_promo_no":"","deli_cost_amt":2500,"coupon_yn":"N","d_r_goods_deli_sale_prc":38100,"r_deli_cost_amt":0,"dawn_deli_cost_amt":2900,"deli_cost_limit_amt":0,"r_dawn_deli_cost_amt":0,"r_dawn_deli_cost_amt2":0,"r_deli_cost_amt2":0}}},"member":{"site_no":"1300001","client_no":"C00001","staff_yn":"N","login":true},"goods":{"0":{"svd_frs_poli_cd":"","svd_frs_except_price":0,"goods_dc_amt":0,"benefits":[{"select_yn":"N","sess":[{"ord_cnt":1,"benefit_session_idx":2,"dc_price":0,"apply_seq":1,"save_amt":0}],"promo_nm":"","promo_type_no":"","benefit_seq":0,"gift_mgmt_no":"","bene_val_divi_cd":"","dc_rate":0,"aval_end_dtime":"","resou_no":"","dc_price":0,"resou_nos_info":[""],"promo_no":"","aval_start_dtime":"","apply_poss_yn":"N","sum_dc_price_pr":0,"resou_nos":[""],"save_amt":0,"bene_poli_cd":""}],"svd_frs_divi_cd":"","cart_divi_cd":"10","svd_upper_conr_set_cmps_no":"","goods_no":"1911013538","sale_unit_val":0,"margin_rate":100,"item_nm":"단품없음","cart_no":"211000043144232","svd_set_cd":"","cart_grp_cd":"10","item_no":"00000","tax_divi_cd":"10","deli_map":{"ITEM_NO":"00000","DAWN_DELI_COST_AMT":2900,"R_DELI_COST_AMT":0,"DELI_COST_AMT":2500,"R_CITY_EXP_DELI_COST":0,"R_ORD_DELI_COST_SEQ":"","R_DELI_COUPON_AVAL_END":"","R_DELI_COST_FORM_CD":"10","STD_GSGR_NO_LEV1":"1700056235","R_DELI_COUPON_RSC_NO":"","RET_METHOD_CD":"","STD_GSGR_NO_LEV2":"1700056245","R_GOODS_DELI_SALE_PRC":5400,"PKG_APPLY_QTY":0,"ROW_RN":0,"SEQ_NO":"211000043144232","R_DELI_GRP_NO":1,"GOODS_NO":"1911013538","VIR_VEND_NO":"VV17002724","DELI_FORM_CD":"20","DELI_COST_CHARGE_MAIN_CD":"","R_ONEW_RTNR_GB":"","ORG_DELI_COST_FORM_CD":"10","MARGIN_RATE":100,"ST_AMT":30000,"DLVP_NO":1,"R_CITY_EXP_YN":"N","PREPAY_PERMIT_FORM_CD":"","DELI_COST_CHANGE_FLAG":"","ORD_TEMP_GOODS_SEQ":"","INPK_CD":"0","ORD_CNT":1,"DELI_RULE":"0000363181","R_DAWN_DELI_COST_AMT":0,"R_DELI_COST_POLI_NO":"0000363181","BRAND_NO":"1700002614","DELI_COST_POLI_NO":"0000363181","R_DELI_COUPON_PROMO_NO":"","DELI_COST_LIMIT_AMT":0,"POLI_ST_NO":"VV17002723","GOODS_SALE_PRICE":21500,"DLVP_SEQ":"0000001","ORG_DELI_COST_AMT":0,"D_R_GOODS_DELI_SALE_PRC":38100},"ord_qty":1,"svd_conr_set_cmps_no":"","ord_poss_min_qty":1,"sale_poss_qty":999999,"disp_goods_nm":"도라지오이무침(185g)","coupon_list":[],"svd_frs_dc_amt":0,"ord_poss_max_qty":0,"set_items":[],"gsgr":"1700056235","dlvp_seq":"0000001","item_status":"00","sale_price":5400,"vir_vend_no":"VV17002724","svd_items":[],"svd_frs_bene_val":0,"save_amt":0},"1":{"svd_frs_poli_cd":"","svd_frs_except_price":0,"goods_dc_amt":0,"benefits":[{"select_yn":"Y","sess":[{"ord_cnt":1,"benefit_session_idx":0,"dc_price":3800,"apply_seq":1,"save_amt":0}],"promo_nm":"","promo_type_no":"103","benefit_seq":0,"gift_mgmt_no":"","bene_val_divi_cd":"20","dc_rate":3800,"aval_end_dtime":"","resou_no":"","dc_price":3800,"resou_nos_info":[""],"promo_no":"","aval_start_dtime":"","apply_poss_yn":"Y","sum_dc_price_pr":3800,"resou_nos":[""],"save_amt":0,"bene_poli_cd":"10"}],"svd_frs_divi_cd":"","cart_divi_cd":"10","svd_upper_conr_set_cmps_no":"","goods_no":"2107015727","sale_unit_val":0,"margin_rate":0,"item_nm":"단품없음","cart_no":"211000043153633","svd_set_cd":"","cart_grp_cd":"10","item_no":"00000","tax_divi_cd":"10","deli_map":{"ITEM_NO":"00000","DAWN_DELI_COST_AMT":2900,"R_DELI_COST_AMT":0,"DELI_COST_AMT":2500,"R_CITY_EXP_DELI_COST":0,"R_ORD_DELI_COST_SEQ":"","R_DELI_COUPON_AVAL_END":"","R_DELI_COST_FORM_CD":"10","STD_GSGR_NO_LEV1":"1700056744","R_DELI_COUPON_RSC_NO":"","RET_METHOD_CD":"","STD_GSGR_NO_LEV2":"1700056745","R_GOODS_DELI_SALE_PRC":21500,"PKG_APPLY_QTY":0,"ROW_RN":0,"SEQ_NO":"211000043153633","R_DELI_GRP_NO":1,"GOODS_NO":"2107015727","VIR_VEND_NO":"VV17002724","DELI_FORM_CD":"20","DELI_COST_CHARGE_MAIN_CD":"","R_ONEW_RTNR_GB":"","ORG_DELI_COST_FORM_CD":"10","MARGIN_RATE":0,"ST_AMT":30000,"DLVP_NO":1,"R_CITY_EXP_YN":"N","PREPAY_PERMIT_FORM_CD":"","DELI_COST_CHANGE_FLAG":"","ORD_TEMP_GOODS_SEQ":"","INPK_CD":"0","ORD_CNT":1,"DELI_RULE":"0000363181","R_DAWN_DELI_COST_AMT":0,"R_DELI_COST_POLI_NO":"0000363181","BRAND_NO":"1700002614","DELI_COST_POLI_NO":"0000363181","R_DELI_COUPON_PROMO_NO":"","DELI_COST_LIMIT_AMT":0,"POLI_ST_NO":"VV17002723","GOODS_SALE_PRICE":21500,"DLVP_SEQ":"0000001","ORG_DELI_COST_AMT":0,"D_R_GOODS_DELI_SALE_PRC":38100},"ord_qty":1,"pkg_goods_no":"2107015727","svd_conr_set_cmps_no":"","ord_poss_min_qty":1,"sale_poss_qty":1,"disp_goods_nm":"더반찬& 집밥만찬 2종 골라담기 (5,000원 부터~)","coupon_list":[],"svd_frs_dc_amt":0,"ord_poss_max_qty":0,"set_items":[{"cmps_grp_seq":"0001","ord_qty":1,"vir_vend_no":"VV17002724","pkg_goods_no":"2107015727","goods_no":"2108015738","cart_seq":2,"cart_no":"211000043153634","disp_goods_nm":"서울식소불고기전골(880g)","item_no":"00000","pkg_goods_seq":1},{"cmps_grp_seq":"0002","ord_qty":1,"vir_vend_no":"VV17002724","pkg_goods_no":"2107015727","goods_no":"2106015407","cart_seq":3,"cart_no":"211000043153635","disp_goods_nm":"더반찬& 양념소불고기","item_no":"00000","pkg_goods_seq":2}],"gsgr":"1700056744","dlvp_seq":"0000001","item_status":"00","sale_price":21500,"vir_vend_no":"VV17002724","svd_items":[],"svd_frs_bene_val":0,"save_amt":0},"4":{"svd_frs_poli_cd":"","svd_frs_except_price":0,"goods_dc_amt":0,"benefits":[{"select_yn":"N","sess":[{"ord_cnt":1,"benefit_session_idx":1,"dc_price":0,"apply_seq":1,"save_amt":0}],"promo_nm":"","promo_type_no":"","benefit_seq":0,"gift_mgmt_no":"","bene_val_divi_cd":"","dc_rate":0,"aval_end_dtime":"","resou_no":"","dc_price":0,"resou_nos_info":[""],"promo_no":"","aval_start_dtime":"","apply_poss_yn":"N","sum_dc_price_pr":0,"resou_nos":[""],"save_amt":0,"bene_poli_cd":""}],"svd_frs_divi_cd":"","cart_divi_cd":"10","svd_upper_conr_set_cmps_no":"","goods_no":"0000014985","sale_unit_val":0,"margin_rate":100,"item_nm":"단품없음","cart_no":"211000043234511","svd_set_cd":"","cart_grp_cd":"10","item_no":"00000","tax_divi_cd":"10","deli_map":{"ITEM_NO":"00000","DAWN_DELI_COST_AMT":2900,"R_DELI_COST_AMT":0,"DELI_COST_AMT":2500,"R_CITY_EXP_DELI_COST":0,"R_ORD_DELI_COST_SEQ":"","R_DELI_COUPON_AVAL_END":"","R_DELI_COST_FORM_CD":"10","STD_GSGR_NO_LEV1":"1700056237","R_DELI_COUPON_RSC_NO":"","RET_METHOD_CD":"","STD_GSGR_NO_LEV2":"2000061885","R_GOODS_DELI_SALE_PRC":11200,"PKG_APPLY_QTY":0,"ROW_RN":0,"SEQ_NO":"211000043234511","R_DELI_GRP_NO":1,"GOODS_NO":"0000014985","VIR_VEND_NO":"VV17002724","DELI_FORM_CD":"20","DELI_COST_CHARGE_MAIN_CD":"","R_ONEW_RTNR_GB":"","ORG_DELI_COST_FORM_CD":"10","MARGIN_RATE":100,"ST_AMT":30000,"DLVP_NO":1,"R_CITY_EXP_YN":"N","PREPAY_PERMIT_FORM_CD":"","DELI_COST_CHANGE_FLAG":"","ORD_TEMP_GOODS_SEQ":"","INPK_CD":"0","ORD_CNT":1,"DELI_RULE":"0000363181","R_DAWN_DELI_COST_AMT":0,"R_DELI_COST_POLI_NO":"0000363181","BRAND_NO":"1700002614","DELI_COST_POLI_NO":"0000363181","R_DELI_COUPON_PROMO_NO":"","DELI_COST_LIMIT_AMT":0,"POLI_ST_NO":"VV17002723","GOODS_SALE_PRICE":21500,"DLVP_SEQ":"0000001","ORG_DELI_COST_AMT":0,"D_R_GOODS_DELI_SALE_PRC":38100},"ord_qty":1,"svd_conr_set_cmps_no":"","ord_poss_min_qty":1,"sale_poss_qty":999999,"disp_goods_nm":"양장피","coupon_list":[],"svd_frs_dc_amt":0,"ord_poss_max_qty":0,"set_items":[],"gsgr":"1700056237","dlvp_seq":"0000001","item_status":"00","sale_price":11200,"vir_vend_no":"VV17002724","svd_items":[],"svd_frs_bene_val":0,"save_amt":0}},"promo_type_base":{"1000000003":{"deli_cost_st_apply_yn":"N","custmd_price_st_apply_yn":"Y"},"1000000026":{"deli_cost_st_apply_yn":"N","custmd_price_st_apply_yn":"N"},"1000000007":{"deli_cost_st_apply_yn":"Y","custmd_price_st_apply_yn":"N"},"1000000029":{"deli_cost_st_apply_yn":"N","custmd_price_st_apply_yn":"N"},"1000000008":{"deli_cost_st_apply_yn":"N","custmd_price_st_apply_yn":"N"},"1000000005":{"deli_cost_st_apply_yn":"Y","custmd_price_st_apply_yn":"Y"},"1000000016":{"deli_cost_st_apply_yn":"Y","custmd_price_st_apply_yn":"Y"},"1000000027":{"deli_cost_st_apply_yn":"N","custmd_price_st_apply_yn":"N"},"1000000006":{"deli_cost_st_apply_yn":"Y","custmd_price_st_apply_yn":"N"},"1000000028":{"deli_cost_st_apply_yn":"N","custmd_price_st_apply_yn":"N"},"100":{"deli_cost_st_apply_yn":"N","custmd_price_st_apply_yn":"N"},"1000000010":{"deli_cost_st_apply_yn":"Y","custmd_price_st_apply_yn":"Y"},"103":{"deli_cost_st_apply_yn":"Y","custmd_price_st_apply_yn":"Y"},"1000000011":{"deli_cost_st_apply_yn":"N","custmd_price_st_apply_yn":"N"},"104":{"deli_cost_st_apply_yn":"N","custmd_price_st_apply_yn":"Y"},"1000000030":{"deli_cost_st_apply_yn":"N","custmd_price_st_apply_yn":"N"}},"real_coupons":{},"dlvp":{},"usable_settle":{}};
	//-->
	</script>
	<!-- CONTENT -->
	<div id="content" class="content">

		<!-- WRAP -->
		<div class="wrap odr">
			<!-- .odr_car -->
			<h2 class="odr_cart_tit">장바구니</h2>
			<div class="odr_top">
				<ol>
					<li class="on"><em>01</em> 장바구니</li>
					<li><em>02</em> 주문서</li>
					<li><em>03</em> 결제완료</li>
				</ol>
			</div>
			<div class="odr_cart">
				<table class="odr_tbl">
					<caption>장바구니 | 제품전체선택, 제품정보, 판매금액, 수량, 구매금액, 선택으로 이루어진 장바구니</caption>
					<col style="width:50px" />
					<col style="width:428px" />
					<col style="width:100px" />
					<col style="width:210px" />
					<col style="width:83px" />
					<col style="width:189px" />
					<thead>
						<tr>
							<th scope="col">
								<!-- <input type="checkbox" class="" id="crt_all"name="cart_all_checkbox" checked="checked" />
								<label class="" for="crt_all">제품전체선택</label> -->
							</th>
							<th scope="col">제품정보</th>
							<th scope="col">판매금액</th>
							<th scope="col">수량</th>
							<th scope="col">구매금액</th>
							<th scope="col"><span class="ir">선택</span></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="chck">
								<input type="checkbox" id="crt_4" name="cart_checkbox" data-order-yn="N" data-cart-seq="4" data-svd-yn="N" data-ekcm-yn="false" checked="checked"  />
								<label for="crt_4">양장피</label>								
							</td>
							<td class="info">
								<div class="img">
									<a href="Product.do" name="go_detail_button" data-cart-seq="4" ><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/100/764/200721000025764.jpg" width="100" height="100" alt="양장피" onerror="this.src='/common/images/common/noimg_100.jpg'"/>
										<span class="ir">양장피</span>
									</a>
								</div>
								<div class="txt">
								<span class="name">[더반찬] 양장피</span>
									<span class="opt">
									</span>
 
                                    <div class="deli_type_tag">

                                    </div>
								</div>
							</td><td class="prc_ori"><span class="om"><em class="thm">11,200</em>원</span>
							</td>
							<td class="qty_set">
								<div class="qty">
									<input name="cart_qty" class="input" id="qty_4" data-cart-seq="4" type="text" maxlength="3" value="1" title="옵션수량입력">
									<button class="minus" name="change_qty_button" data-role="-" data-cart-seq="4" type="button" title="수량감소">수량감소</button>
									<button class="plus" name="change_qty_button" data-role="+" data-cart-seq="4" type="button" title="수량증가">수량증가</button>
								</div>
								<button class="qty_edit" type="button" name="save_qty_button" data-cart-seq="4" title="수량수정">수정</button>
							</td>
							<td class="prc_dl"><span class="thm">11,200</span><em>원</em></td><td class="func_btn"><div class="del_bx">
									<button class="del" type="button" title="제품삭제하기" name="delete_button" data-cart-seq="4"  data-role="cart" >삭제</button>
								</div>
							</td>
				
						<tr>
							<td class="chck">
								<input type="checkbox" id="crt_1" name="cart_checkbox" data-order-yn="N" data-cart-seq="1" data-svd-yn="N" data-ekcm-yn="false" checked="checked"  />
								<label for="crt_1">더반찬& 집밥만찬 2종 골라담기 (5,000원 부터~)</label>								
							</td>
							<td class="info">
								<div class="img">
									<a href="Product.do" name="go_detail_button" data-cart-seq="1" ><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/100/610/210917000027610.jpg" width="100" height="100" alt="더반찬& 집밥만찬 2종 골라담기 (5,000원 부터~)" onerror="this.src='/common/images/common/noimg_100.jpg'"/>
										<span class="ir">더반찬& 집밥만찬 2종 골라담기 (5,000원 부터~)</span>
									</a>
								</div>
								<div class="txt">
								<span class="name">
									[더반찬] 더반찬& 집밥만찬 2종 골라담기 (5,000원 부터~)
									
								</span>
								<div class="opt set">
										<ul><li>필수선택 1 : 서울식소불고기전골(880g)</li><li>필수선택 2 : 더반찬& 양념소불고기</li>
										</ul>
									</div>
									<span class="opt">
									</span>
 
                                    <div class="deli_type_tag">

                                    </div>
								</div>
							</td><td class="prc_ori"><span class="om"><em class="thm">21,500</em>원</span>
							</td>
							<td class="qty_set">
								<div class="qty">
									<input name="cart_qty" class="input" id="qty_1" data-cart-seq="1" type="text" maxlength="3" value="1" title="옵션수량입력">
									<button class="minus" name="change_qty_button" data-role="-" data-cart-seq="1" type="button" title="수량감소">수량감소</button>
									<button class="plus" name="change_qty_button" data-role="+" data-cart-seq="1" type="button" title="수량증가">수량증가</button>
								</div>
								<button class="qty_edit" type="button" name="save_qty_button" data-cart-seq="1" title="수량수정">수정</button>
							</td>
							<td class="prc_dl"><span class="thm">21,500</span><em>원</em></td><td class="func_btn"><div class="del_bx">
									<button class="del" type="button" title="제품삭제하기" name="delete_button" data-cart-seq="1"  data-role="cart" >삭제</button>
								</div>
							</td>
				
						<tr>
							<td class="chck">
								<input type="checkbox" id="crt_0" name="cart_checkbox" data-order-yn="N" data-cart-seq="0" data-svd-yn="N" data-ekcm-yn="false" checked="checked"  />
								<label for="crt_0">도라지오이무침(185g)</label>								
							</td>
							<td class="info">
								<div class="img">
									<a href="Product.do" name="go_detail_button" data-cart-seq="0" ><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/100/673/200717000025673.jpg" width="100" height="100" alt="도라지오이무침(185g)" onerror="this.src='/common/images/common/noimg_100.jpg'"/>
										<span class="ir">도라지오이무침(185g)</span>
									</a>
								</div>
								<div class="txt">
								<span class="name">[더반찬] 도라지오이무침(185g)</span>
								
									<span class="opt">
									</span>
 
                                    <div class="deli_type_tag">

                                    </div>
								</div>
							</td><td class="prc_ori"><span class="om"><em class="thm">5,400</em>원</span>
							</td>
							<td class="qty_set">
								<div class="qty">
									<input name="cart_qty" class="input" id="qty_0" data-cart-seq="0" type="text" maxlength="3" value="1" title="옵션수량입력">
									<button class="minus" name="change_qty_button" data-role="-" data-cart-seq="0" type="button" title="수량감소">수량감소</button>
									<button class="plus" name="change_qty_button" data-role="+" data-cart-seq="0" type="button" title="수량증가">수량증가</button>
								</div>
								<button class="qty_edit" type="button" name="save_qty_button" data-cart-seq="0" title="수량수정">수정</button>
							</td>
							<td class="prc_dl"><span class="thm">5,400</span><em>원</em></td><td class="func_btn"><div class="del_bx">
									<button class="del" type="button" title="제품삭제하기" name="delete_button" data-cart-seq="0"  data-role="cart" >삭제</button>
								</div>
							</td>
				
					</tbody>
				</table>
				<div class="odr_slt_btn">
					<span><input type="checkbox" id="crt_all" style="margin-right:10px;" name="cart_all_checkbox" checked="checked" />
								<label for="crt_all">전체 선택</label></span>
					<button type="button" class="w_del" title="품절/매진제품 전체 삭제" name="delete_button" data-role="sellout" style="display: none;"><em>품절 삭제</em></button>
					<button type="button" class="del" title="선택한 항목 삭제하기" name="delete_button" data-role="checked" ><em>선택 삭제</em></button>
				</div>
				<div class="cart_info">
<!-- 					주문 마감은 <em>오후9시</em>입니다.
					<br />
					<span>주문취소는 주문마감 이전만 가능하며 부분취소는 불가능하며 주문마감시간 이후 추가주문은 불가능 합니다.</span> -->
					<span>희망 배송일 전일 제품 준비 중 단계로 변경 시 취소가 어려운 점 양해 부탁드려요.</span>
				</div><div class="odr_total type1">
					<dl class="prd_sum">
						<dt>제품금액</dt>
						<dd><span class="thm" id="total_sale_price">38,100</span><em>원</em></dd>
					</dl>
					<dl class="dis_sum">
						<dt><span class="icon minus">빼기</span>예정 할인금액</dt>
						<dd><span class="thm" id="total_dc_amt">0</span><em>원</em></dd>
					</dl>
					<dl class="cart_sum">
						<dt><span class="icon equal">계산결과</span>주문 합계금액</dt>
						<dd>
							<span class="thm" id="total_price">38,100</span><em>원</em>
							<span class="deposit" style="display:none">(예정적립금 <span class="thm" id="total_save_amt">0</span>원)</span>
						</dd>
					</dl>
					<a href="Order.do"><button class="sel_date" id="set_order_date_button"><em>선택제품 주문</em></button></a>			
				</div><span class="odr_total_caution point">* 쿠폰 적용 후 최종 결제 금액에 30,000원인 경우 무료로 배송해드려요.</span>
				<span class="odr_total_caution">* 결제 금액은 쿠폰 및 적립금 사용, 배송지 추가 여부에 따라 달라질 수 있어요. 결제 화면에서 최종 금액을 확인해 주세요.</span>
				
				<div class="info_box01">
					<strong class="box_tit">참고해 주세요!</strong>
					<ul class="list_01">
						<li>장바구니에 담긴 상품은 30일 동안만 보관 가능해요.</li>
						<li>배송방법(새벽배송, 일반택배)에 따라 선택 가능한 배송일이 달라질 수 있어요.</li>
						<li>7데이는 매주 상품이 변경되어, 주차별로 희망 배송일을 선택하실 수 있어요.</li>
						<li>희망 배송일은 주문일로부터 최대 2주까지 선택 가능할 수 있어요. (기간 한정 제품 제외)</li>
					</ul>
				</div>
			</div>
			<!-- //.odr_cart -->
		</div>
		<!--// WRAP -->

	</div>
	<!-- //CONTENT -->
	
	<div class="layer_wrap" id="layer_set_modify">
		<div class="lyr_box">
			<h3 id="svd_set_name"></h3>
			<div class="set_wrap">
				<div class="left_side">
					<h4>상품 찾기(<span id="svd_goods_display">0</span>)</h4>
					<div class="tbody_set">
						<table>
							<caption>상품찾기</caption>
							<col style="width:42px;" />
							<col style="width:158px;" />
							<thead>
								<tr>
									<th scope="col" class="chck">
										<input type="checkbox" id="check_all_svd_items" />
										<label for="check_all_svd_items">상품전체선택</label>
									</th>
									<th scope="col">상품명</th>
								</tr>
							</thead>
							<tbody id="svd_goods_body">
								<tr style="display: none;" id="svd_goods_template">
									<td class="chck">
										<input type="checkbox" name="goods_checkbox" id="svd_goods_checkbox"/>
									</td>
									<td>
										<label for="svd_goods_checkbox"></label>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="btn_side">
					<button id="add_svd_items_button"><em class="ir">상품 추가</em></button>
				</div>
				<div class="right_side">
					<h4>세트 구성(<span id="svd_qty_display">0</span>/<span id="svd_set_qty_display"></span>)</h4>
					<div class="tbody_set">
						<table>
							<caption>상품찾기</caption>
							<col style="width:148px;" />
							<col style="width:80px;" />
							<col style="width:42px;" />
							<thead>
								<tr>
									<th scope="col">상품명</th>
									<th scope="col">수량</th>
									<th scope="col"><span class="ir">삭제</span></th>
								</tr>
							</thead>
							<tbody id="svd_selected_goods_body">
								<tr id="svd_selected_goods_template" style="display: none;">
									<td>
										<label></label>
									</td>
									<td>
										<div class="qty">
											<input name="qty" class="input" type="text" title="옵션수량입력" maxlength="2" readonly="readonly" >
											<button class="minus" type="button" title="수량감소"  data-role="-">수량감소</button>
											<button class="plus" type="button" title="수량증가" data-role="+" >수량증가</button>
										</div>
									</td>
									<td>
										<button class="del" name="delete_svd_item_button"><em class="ir">삭제</em></button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<button class="save" id="update_svd_items_button"><em>저장</em></button>
			<button class="close" onclick="unBlockUI('layer_set_modify');return false;">세트 수정 닫기</button>
		</div>
	</div>
	<div class="add_prd" style="display:none">
		<h3>배송비 절약제품 <span>같이 주문하면 배송비를 아낄수 있어요!</span></h3>
		<ul>

				<li>
					<span class="dwCk">
						<input type="checkbox" id="cart_1" data-goods_no="2101015039" data-vir_vend_no="VV17002724" data-cart_grp_cd="null"/>
						<label for="cart_1">
							<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/170/711/210122000026711.jpg" width="170" height="170" alt="구이용 모둠쌈 채소 150g" onerror="this.src='/common/images/common/noimg_170.jpg'"/><em class="ir">선택</em></span>
						</label>
					</span>
					<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'2101015039', vir_vend_no:'VV17002724', sale_shop_divi_cd:'13', sale_shop_no:'1707002708', sale_area_no:'D1707000906', tr_yn:'Y', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'2101015039', rel_divi_cd:'10', openwinyn:'Y', disp_ctg_no:''});">
						<span class="tx">구이용 모둠쌈 채소 150g<em class="ir">선택</em></span>
						<span class="prc"><em class="on"><b class="ir">판매가</b><b>3,700</b>원</em></span>
					</a>
				</li>

				<li>
					<span class="dwCk">
						<input type="checkbox" id="cart_2" data-goods_no="0000013994" data-vir_vend_no="VV17002724" data-cart_grp_cd="null"/>
						<label for="cart_2">
							<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/170/430/180413000020430.jpg" width="170" height="170" alt="구운어묵볶음(220g)" onerror="this.src='/common/images/common/noimg_170.jpg'"/><em class="ir">선택</em></span>
						</label>
					</span>
					<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'0000013994', vir_vend_no:'VV17002724', sale_shop_divi_cd:'13', sale_shop_no:'1707002708', sale_area_no:'D1707000906', tr_yn:'Y', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'0000013994', rel_divi_cd:'10', openwinyn:'Y', disp_ctg_no:''});">
						<span class="tx">구운어묵볶음(220g)<em class="ir">선택</em></span>
						<span class="prc"><em class="on"><b class="ir">판매가</b><b>3,800</b>원</em></span>
					</a>
				</li>

				<li>
					<span class="dwCk">
						<input type="checkbox" id="cart_3" data-goods_no="2004014063" data-vir_vend_no="VV17002724" data-cart_grp_cd="null"/>
						<label for="cart_3">
							<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/170/172/200420000025172.jpg" width="170" height="170" alt="[푸드렐라] 통통살 가라아게 (300g)" onerror="this.src='/common/images/common/noimg_170.jpg'"/><em class="ir">선택</em></span>
						</label>
					</span>
					<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'2004014063', vir_vend_no:'VV17002724', sale_shop_divi_cd:'13', sale_shop_no:'1707002708', sale_area_no:'D1707000906', tr_yn:'Y', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'2004014063', rel_divi_cd:'10', openwinyn:'Y', disp_ctg_no:''});">
						<span class="tx">[푸드렐라] 통통살 가라아게 (300g)<em class="ir">선택</em></span>
						<span class="prc"><em class="on"><b class="ir">판매가</b><b>4,300</b>원</em></span>
					</a>
				</li>

				<li>
					<span class="dwCk">
						<input type="checkbox" id="cart_4" data-goods_no="1805011061" data-vir_vend_no="VV17002724" data-cart_grp_cd="null"/>
						<label for="cart_4">
							<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/170/641/180503000020641.jpg" width="170" height="170" alt="서정느린수정과 (1L)" onerror="this.src='/common/images/common/noimg_170.jpg'"/><em class="ir">선택</em></span>
						</label>
					</span>
					<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'1805011061', vir_vend_no:'VV17002724', sale_shop_divi_cd:'13', sale_shop_no:'1707002708', sale_area_no:'D1707000906', tr_yn:'Y', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'1805011061', rel_divi_cd:'10', openwinyn:'Y', disp_ctg_no:''});">
						<span class="tx">서정느린수정과 (1L)<em class="ir">선택</em></span>
						<span class="prc"><em class="on"><b class="ir">판매가</b><b>4,400</b>원</em></span>
					</a>
				</li>

				<li>
					<span class="dwCk">
						<input type="checkbox" id="cart_5" data-goods_no="2107015736" data-vir_vend_no="VV17002724" data-cart_grp_cd="null"/>
						<label for="cart_5">
							<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/170/476/210802000027476.jpg" width="170" height="170" alt="[바르게 만든] 키즈 한우미역국(330g)" onerror="this.src='/common/images/common/noimg_170.jpg'"/><em class="ir">선택</em></span>
						</label>
					</span>
					<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'2107015736', vir_vend_no:'VV17002724', sale_shop_divi_cd:'13', sale_shop_no:'1707002708', sale_area_no:'D1707000906', tr_yn:'Y', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'2107015736', rel_divi_cd:'10', openwinyn:'Y', disp_ctg_no:''});">
						<span class="tx">[바르게 만든] 키즈 한우미역국(330g)<em class="ir">선택</em></span>
						<span class="prc"><em class="on"><b class="ir">판매가</b><b>4,500</b>원</em></span>
					</a>
				</li>

				<li>
					<span class="dwCk">
						<input type="checkbox" id="cart_6" data-goods_no="1803010840" data-vir_vend_no="VV17002724" data-cart_grp_cd="null"/>
						<label for="cart_6">
							<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/170/434/180413000020434.jpg" width="170" height="170" alt="무말랭이무침(210g)" onerror="this.src='/common/images/common/noimg_170.jpg'"/><em class="ir">선택</em></span>
						</label>
					</span>
					<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'1803010840', vir_vend_no:'VV17002724', sale_shop_divi_cd:'13', sale_shop_no:'1707002708', sale_area_no:'D1707000906', tr_yn:'Y', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'1803010840', rel_divi_cd:'10', openwinyn:'Y', disp_ctg_no:''});">
						<span class="tx">무말랭이무침(210g)<em class="ir">선택</em></span>
						<span class="prc"><em class="on"><b class="ir">판매가</b><b>4,700</b>원</em></span>
					</a>
				</li>

				<li>
					<span class="dwCk">
						<input type="checkbox" id="cart_7" data-goods_no="0000013565" data-vir_vend_no="VV17002724" data-cart_grp_cd="null"/>
						<label for="cart_7">
							<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/170/274/201023000026274.jpg" width="170" height="170" alt="싱글제육볶음(300g)" onerror="this.src='/common/images/common/noimg_170.jpg'"/><em class="ir">선택</em></span>
						</label>
					</span>
					<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'0000013565', vir_vend_no:'VV17002724', sale_shop_divi_cd:'13', sale_shop_no:'1707002708', sale_area_no:'D1707000906', tr_yn:'Y', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'0000013565', rel_divi_cd:'10', openwinyn:'Y', disp_ctg_no:''});">
						<span class="tx">싱글제육볶음(300g)<em class="ir">선택</em></span>
						<span class="prc"><em class="on"><b class="ir">판매가</b><b>4,900</b>원</em></span>
					</a>
				</li>

				<li>
					<span class="dwCk">
						<input type="checkbox" id="cart_8" data-goods_no="0000005504" data-vir_vend_no="VV17002724" data-cart_grp_cd="null"/>
						<label for="cart_8">
							<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/170/749/210204000026749.jpg" width="170" height="170" alt="오징어무국(600g/2인분)" onerror="this.src='/common/images/common/noimg_170.jpg'"/><em class="ir">선택</em></span>
						</label>
					</span>
					<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'0000005504', vir_vend_no:'VV17002724', sale_shop_divi_cd:'13', sale_shop_no:'1707002708', sale_area_no:'D1707000906', tr_yn:'Y', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'0000005504', rel_divi_cd:'10', openwinyn:'Y', disp_ctg_no:''});">
						<span class="tx">오징어무국(600g/2인분)<em class="ir">선택</em></span>
						<span class="prc"><em class="on"><b class="ir">판매가</b><b>5,900</b>원</em></span>
					</a>
				</li>

				<li>
					<span class="dwCk">
						<input type="checkbox" id="cart_9" data-goods_no="0000007305" data-vir_vend_no="VV17002724" data-cart_grp_cd="null"/>
						<label for="cart_9">
							<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/170/606/200715000025606.jpg" width="170" height="170" alt="쇠고기들깨탕(600g/2인분)" onerror="this.src='/common/images/common/noimg_170.jpg'"/><em class="ir">선택</em></span>
						</label>
					</span>
					<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'0000007305', vir_vend_no:'VV17002724', sale_shop_divi_cd:'13', sale_shop_no:'1707002708', sale_area_no:'D1707000906', tr_yn:'Y', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'0000007305', rel_divi_cd:'10', openwinyn:'Y', disp_ctg_no:''});">
						<span class="tx">쇠고기들깨탕(600g/2인분)<em class="ir">선택</em></span>
						<span class="prc"><em class="on"><b class="ir">판매가</b><b>6,800</b>원</em></span>
					</a>
				</li>

				<li>
					<span class="dwCk">
						<input type="checkbox" id="cart_10" data-goods_no="2108015745" data-vir_vend_no="VV17002724" data-cart_grp_cd="null"/>
						<label for="cart_10">
							<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/170/503/210804000027503.jpg" width="170" height="170" alt="[프레시지] 고깃집 된장찌개" onerror="this.src='/common/images/common/noimg_170.jpg'"/><em class="ir">선택</em></span>
						</label>
					</span>
					<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'2108015745', vir_vend_no:'VV17002724', sale_shop_divi_cd:'13', sale_shop_no:'1707002708', sale_area_no:'D1707000906', tr_yn:'Y', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'2108015745', rel_divi_cd:'10', openwinyn:'Y', disp_ctg_no:''});">
						<span class="tx">[프레시지] 고깃집 된장찌개<em class="ir">선택</em></span>
						<span class="prc"><em class="on"><b class="ir">판매가</b><b>7,900</b>원</em></span>
					</a>
				</li>

			</ul>
			<!-- 2017.06.07 텍스트 변경 : 추가하기 -> 추가 -->
			<button class="add_btn"><em>배송비 절약제품 추가</em></button>
		</div>

<!-- FOOTER -->
<div id="footer" class="footer">

	<footer class="footer-wrap">
	
		<div class="footer-link">
			<ul class="inner-box">
				<li><a href="javascript:void(0);">브랜드 소개</a></li>
				<li><a href="javascript:void(0);">이용약관</a></li>
				<li><a href="javascript:void(0);"><b>개인정보처리방침</b></a></li>
			   

                <li><a href="javascript:void(0);">사업자 인증</a></li>
    
                <li><a href="javascript:void(0);">임직원 인증</a></li>

			</ul>
		</div>
		
		<div class="footer-inner inner-box">
			<div class="footer-info">
				<i class="ico-logo2">더 반찬</i>
				<address>
					<p class="v2">본사 : 서울특별시 서초구 마방로 68 동원산업빌딩</p>
					<p class="v2">센터 : 서울특별시 금천구 서부샛길 280</p>
					<div> <!--2020-07-15 div 감싸기 -->
						<p>상호:동원디어푸드 주식회사　　대표자 : 강용수</p>
						<p>사업자등록번호 : 703-88-01843 <a href="javascript:overpass.link('LICENSE');">사업자정보확인</a></p>
						<p>통신판매업신고 : 제 2021-서울서초-1572호</p>
						<p>개인정보보호책임자 : 조형묵　　호스팅사업자 : 동원엔터프라이즈</p>
						<p>전화 : 1644-6844　　팩스 : 02-589-4820　　이메일 : thebanchan@dongwon.com</p>
					</div>
				</address>
				<p class="copy">© theBanchan& All Right Reserved.</p>
			</div>
            <div class="footer-customer">
				<div class="center">
					<p>고객센터</p>
					<span><a href="tel:1644-6844">1644-6844</a></span>
					<span>
						평일 08:00 - 20:00<br/>
						(주말 및 공휴일 휴무)
					</span>
				</div>
				<div class="sns-wrap">
					<div class="sns-box">
						<p>더반찬 SNS</p>
						<a href="javascript:void(0);" onclick="overpass.sns.snsHome({sns:'FB', target:'_blank'});" >
							<i class="ico-facebook"></i>
							<span class="hidden">페이스북</span>
						</a>
						<a href="javascript:void(0);" onclick="overpass.sns.snsHome({sns:'IS', target:'_blank'});" >
							<i class="ico-instagram"></i>
							<span class="hidden">인스타그램</span>
						</a>
					</div>
					<div class="sns-box v2">
						<p>모바일 앱</p>
						<a href="javascript:void(0);" class="qr"><img src="//www.thebanchan.co.kr/fo/images/common/qr.png"/></a>
						<div class="sns-shop">
							<a href="javascript:void(0);"><img src="//www.thebanchan.co.kr/fo/images/common/shop_goggle.png"/></a>
							<a href="javascript:void(0);"><img src="//www.thebanchan.co.kr/fo/images/common/shop_apple.png"/></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-bot inner-box">
			<span>고객님의 안전거래를 위해 현금 등으로 결제 시 토스페이먼츠의 구매 안전서비스를 이용하실 수 있습니다.<br/>
				<a href="javascript:overpass.link('SERVICE');">서비스가입 사실 확인하기</a>
			</span>
			<span>
				<img src="//www.thebanchan.co.kr/fo/images/common/bot_01.png"/>
				<img src="//www.thebanchan.co.kr/fo/images/common/bot_02.png"/>
				<img src="//www.thebanchan.co.kr/fo/images/common/bot_03.png"/>
				<img src="//www.thebanchan.co.kr/fo/images/common/bot_04.png"/>
				<img src="//www.thebanchan.co.kr/fo/images/common/icon_ISMS.png" style="height: 37px;"/>
			</span>
		</div>
		
	</footer>
</div>
<!-- //FOOTER -->

</body>
</html>
