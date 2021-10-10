<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>집밥장인이 만든 온라인 식품몰 더반찬&</title>
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/common.css?v=20211009120" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/pc-main-common.css?v=20211009120" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/sub.css?v=20211009120" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/asset/css/font.css?v=20211009120" type="text/css">
<script type="text/javascript" src="//www.thebanchan.co.kr/common/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="//www.thebanchan.co.kr/fo/js/jquery.plugin.js"></script>

<!-- 이거 지우면 내비게이션바 밑에 여백 지워짐 필요! -->
<script type="text/javascript" src="//www.thebanchan.co.kr/common/js/ui.js"></script>
<script type="text/javascript" src="//www.thebanchan.co.kr/common/js/slick.min.js"></script>
<script type="text/javascript" src="//www.thebanchan.co.kr/common/js/TweenMax.min.js"></script>
</head>
<body>
	<!-- HEADER -->
	<header id="headerWrap" class="header-wrap">
		<!-- header top -->
		<div class="header-top">
			<div class="inner-box">
				<h1 class="logo">
					<a href="../main.jsp">더반찬</a>
				</h1>
				<!-- 검색 영역 [S] -->
				<div class="search-wrap">
					<div class="search-form">
						<input type="text" id="hd_sch" class="sch_input" autocomplete="off">
						<button type="submit" id="btnSearch" class="btn-search">검색</button>
						<button type="button" class="btn-clear hidden">지우기</button>
						<div class="sch-box">
							<p class="title">최근검색어</p>
							<div class="nodata-wrap">
								<p>최근 검색어가 없습니다.</p>
							</div>
						</div>
						<button class="sch_bt" type="button">
							<em class="ir">검색하기</em>
						</button>
					</div>
				</div>
				<!-- 검색 영역 [E] -->

				<div class="util-wrap">
					<ul>
						<li><a id="head_login_a" href="Member.me">로그인</a></li>
						<li><a id="head_login_b" href="MemberLoginForm.me">회원가입</a></li>
						<li><a href="CustCenterMain.co">고객센터</a></li>
						<li><a href="javascript:overpass.link('DAWNDELI');">배송지역 검색</a></li>
					</ul>
				</div>
				<div id="myWrap" class="my-wrap">
					<ul>
						<li><a href="#" style="padding-right: 30px;"><i class="ico-my"></i>마이더반찬</a></li>
						<li><a href="Cart.do" class="link-cart"> <i class="ico-cart"></i>장바구니 <strong class="cart-count"> 0</strong></a>
							<div class="cart-box">
								<p class="title">장바구니에 담겼습니다.</p>
								<div class="cart-item">
									<div class="item">
										<dl>
											<dt><a href="javascript:void(0);"> <img id="cartBoxGoodsImg" src=""/></a></dt>
											<dd><p id="cartBoxGoodsNm"></p></dd>
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
								<img src="//www.thebanchan.co.kr/fo/images/ico/ico_category.png" class="off" /> 
								<img src="//www.thebanchan.co.kr/fo/images/ico/ico_category_on.png" class="on" />
							</span> 카테고리
							</a>
						</li>
						<li><a href="javascript:void(0);" onclick="overpass.link('LIGHTINGDEAL')" class="ani ani2">
							<i class="ico-up"> </i><i class="flash">번</i><i class="flash">쩍</i><i class="flash">딜</i>
							</a>
						</li>

						<li><a href="#">할인특가</a></li>
						<li><a href="#" >신상품</a></li>
						<li class="gbnLine"><a href="#">베스트</a></li>
						<li class="gbnLine"><a href="#"><i class="ico-up"></i>더신선정육관</a></li>
						<li class="gbnLine"><a href="javascript:void(0);" onclick="overpass.link('THISGOURMET')"><i class="ico-up"></i>이달의맛집</a></li>
						<li><a href="javascript:void(0);" onclick="overpass.link('7DAY')"        >7데이</a></li>
						<li><a href="javascript:void(0);" onclick="overpass.link('REGULARMENU')" >정기식단</a></li>
					</ul>
					
					<ul class="gnb-right">
						<li><a href="javascript:overpass.dispctg.goCtgList({disp_type : 'BRAND'});">프렌즈스토어</a></li>
						<li><a href="#">이벤트/혜택</a></li>
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
	
	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/gds.css?t=20200406000000" type="text/css">

	<script type="text/javascript">
		<!--
		$(document).ready(function(){
			//상품상세 초기화 함수
			fnGoodsDetailInit = function(){
				
				overpass.util.getShortenUrl({
					param : {url:"http://www.thebanchan.co.kr/goods/initGoodsDetail.action?goods_no=0000014985"},
					success : function(rst){
						
						if(typeof(rst.result) != "undefined" && rst.result != ""){
							$("#shorten_url").val(rst.result);
						}else{
							$("#shorten_url").val("http://www.thebanchan.co.kr/goods/initGoodsDetail.action?goods_no=0000014985");
						}
					}
				});
				
			}
			fnGoodsDetailInit();
		
			//최근본 상품 리스트 리로드 
			$("#goodsImgBox").load("/goods/searchLatelyGoodsList.action");
		});
		//-->
	</script>
	
	<!-- CONTENT -->
	<div id="content" class="content">
		<!-- WRAP -->
		<div class="wrap gds" id="goodsInfoDiv">
		<!-- NAVI -->
	
			<script type="text/javascript">
				$(document).ready(function(){
					$(".location_slt button").each(function(){
						var list =  $(this).parent().find("ul li");
						var value = "";
						list.each(function(){
							if( $(this).data("selected")=="selected"){
								value = $(this);
							} 
						});
						if(value !== ""){
							$(this).text( value.text() );
						}
					});
				});
			</script>
	
			<dl class="location_slt">
				<dt><a href="javascript:overpass.link('MAIN');">Home</a></dt>
				<dd>
					<button type="button"><em class="ir">카테고리메뉴 열기-현재:</em>반찬</button> 
					<div class="lyr">
						<ul id="nav1"  >
							<li data-value="2007005319" ><a href="/dispctg/initThema.action?disp_ctg_no=2007005319">이런 테마는 어때요?</a></li>
							<li data-value="2102005867" ><a href="/dispctg/initThema.action?disp_ctg_no=2102005867">더반찬&시그니처</a></li>
							<li data-value="2102005865" ><a href="/dispctg/initThema.action?disp_ctg_no=2102005865">캠핑&</a></li>
							<li data-value="2102005868"><a href="/dispctg/initThema.action?disp_ctg_no=2102005868">집콕! 쟁여두기</a></li>
							<li data-value="2102005869" data-selected="selected"><a href="/dispctg/initThema.action?disp_ctg_no=2102005869">먹기 편한 게 최고</a></li>
						</ul>
					</div>
				</dd>
				<dd>
					<button type="button"><em class="ir">카테고리메뉴 열기-현재:</em>반찬</button> 
					<div class="lyr">
						<ul id="nav2"  >
							<li data-value="2102005884" data-selected="selected"><a href="/dispctg/initThema.action?disp_ctg_no=2102005884">바로먹기</a></li>
							<li data-value="2102005885"><a href="/dispctg/initThema.action?disp_ctg_no=2102005885">전자레인지</a></li>
							<li data-value="2102005886"><a href="/dispctg/initThema.action?disp_ctg_no=2102005886">에어프라이어</a></li>
						</ul>
					</div>
				</dd>
	
			</dl>
			<!-- //NAVI -->
			
			<div id="detailBaseInfo" style="display:none;">
				<input type="hidden" id="goods_no" name="goods_no" value="0000014985"/>
				<input type="hidden" id="vir_vend_no" name="vir_vend_no" value="VV17002724"/>
				<input type="hidden" id="multi_item_yn" name="multi_item_yn" value="N"/>
				<input type="hidden" id="goods_cmps_divi_cd" name="goods_cmps_divi_cd" value="10"/>
			 	<input type="hidden" id="item_no" name="item_no" value="00000"/>
				<input type="hidden" id="gift_goods_info" name="gift_goods_info" value=""/>
				<input type="hidden" id="min_qty" name="min_qty" value="1"/>
				<input type="hidden" id="nplus_base_cnt" name="nplus_base_cnt" value="0"/>
				<input type="hidden" id="nplus_cnt" name="nplus_cnt" value="0"/>
				<input type="hidden" id="sale_unit_qty" name="sale_unit_qty" value="0"/>
		
				<input type="hidden" id="poss_buy_min_price" name="poss_buy_min_price" value="10000"/>
		
				<input type="hidden" id="multi_price_yn" name="multi_price_yn" value="N"/>
				<input type="hidden" id="cart_grp_cd" name="cart_grp_cd" value="10"/>
				<input type="hidden" id="stock_qty_disp_yn" name="stock_qty_disp_yn" value="N"/>
				
				<input type="hidden" id="conts_dist_no" name="conts_dist_no" value=""/>
				<input type="hidden" id="sale_area_no" name="sale_area_no" value=""/>
				<input type="hidden" id="sale_shop_no" name="sale_shop_no" value=""/>
				<input type="hidden" id="sale_shop_divi_cd" name="sale_shop_divi_cd" value="11"/>
		
				<input type="hidden" id="add_ord_sel_info" name="add_ord_sel_info" value=""/>
				<input type="hidden" id="tax_divi_cd" name="tax_divi_cd" value="10"/>
			</div>
	
			<!-- GOODS VIEW -->
			<div class="gds_view" id="gds_view">
	
				<!-- GOODS IMG. -->
				<div class="gds_img" id="gds_img">
		<!-- 	<div class="g_sell"><span class="sell"><em>세트<br/>할인</em></span></div> -->
					<div class="gd_img_bx">
						 <div class="fade_slide gd_img" >
							<ul class="cont">
								<li class="active" style="background-image:url('//cdn.thebanchan.co.kr/upload/C00001/goods/prd/510/764/200721000025764.jpg')"><span class="ir">양장피 이미지1</span></li>
							</ul>		
						</div>
						
						<div class="indi">
							<ul class="page">
								<li class="on"><a href="#gd_img_bx"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/100/764/200721000025764.jpg" width="100" height="100" alt="양장피" onerror="this.src='/common/images/common/noimg_100.jpg'"/><em class="ir">양장피 이미지1 보기</em></a></li>
							</ul>
						</div>
						<script type="text/javascript">
							$(document).ready(function(){
								fade_slide('gd_img_bx', 500, true, 'mouseover', false, false);
							})	
						</script>
					</div>
				</div>
				<!-- //GOODS IMG. -->
	
				<!-- GOODS INFO -->
				<div class="gds_info" data-price_type_cd="00">
					<!-- BRAND -->
					<div class="gd_brd">	
						<dl>
							<dt>더반찬</dt>
							<!-- dd class="g_brd"><a href="javascript:void(0);" onclick="overpass.link('BRAND',{brand_no:'1700002614'})">브랜드샵가기</a></dd-->
							<dd class="g_code"><button type="button" id="codeCopyBtn" title="상품코드복사 알림 레이어 열기">제품코드복사</button></dd>
						</dl>
					</div>
					<!-- //BRAND -->
						<script type="text/javascript">
							$(document).ready(function(){
								$("#codeCopyBtn").click(function(){
									if(window.clipboardData){
									    // IE
									    window.clipboardData.setData("Text", "0000014985");
									    alert("제품코드가 복사되었습니다.\n붙여 넣을 곳에 Ctrl + V하세요.");
									    return;
									}else{
									    // Chrome, Firefox, Safari
									    window.prompt("제품코드를 복사 후 사용하세요.", "0000014985");
									    return;
									}
								});
							});	
						</script>
					<!-- NAME -->
					<h2 class="gd_name">양장피</h2>
					<!-- //NAME -->
					
					<!-- TAG -->
					<div class="gd_ico">
	                    <!-- <span class="ico5"><em>당일 발송 마감</em></span> -->
					</div>
					<!-- //TAG -->
	
					<!-- SCORE -->
					<div class="gd_base">
	
						<div class="g_scr">
							<span class="star_rate03"><b class="ir">평점</b><em style="width:90%;">4.7</em></span>
							<span class="scr"><b>4.7</b></span>
							<a href="#gds_cont3" class="rv">(고객후기 2,143건)</a>
						</div>
	
						<div class="g_sns">						
							<button type="button" class="btn_sns" id="sns_lyr_open" onclick="showTip('sns_lyr', this);return false;">공유하기<b class="ir">SNS 레이어 열기</b></button>
							<!-- TOOLTIP -->
							<div class="lyr_tip_wrap">
								<div class="lyr_tip right" id="sns_lyr">
									<a href="javascript:void(0);" onclick="fnCallSNSShare('FB');" title="페이스북에 공유 새창" class="face"><span>페이스북</span></a>
									<a href="javascript:void(0);" onclick="fnCallSNSShare('KS');" title="카카오스토리에 공유 새창" class="kakao"><span>카카오스토리</span></a>
									<a href="javascript:void(0);" onclick="fnCallSNSShare('NB');" title="네이버블로그에 공유 새창" class="nhn"><span>네이버블로그</span></a>
									<a href="javascript:void(0);" onclick="fnCallSNSShare('UC');" title="URL 복사 새창" class="url"><span>URL 복사</span></a>
									<input type="hidden" id="shorten_url" value=""/>
									<button type="button" class="cls" onclick="hideTip('sns_lyr');return false;" >SNS 공유하기 레이어 닫기</button>
								</div>
							</div>
							<!-- //TOOLTIP -->
						</div>
					</div>
					<!-- //SCORE -->
					<script type="text/javascript">
						<!--
						$(document).ready(function(){
							fnCallSNSShare = function(sns_cd){
								
								overpass.sns.sharePage({
									sns: sns_cd,
									goods_nm: '양장피',
									price: '11,200',
									url: 'http://www.thebanchan.co.kr/goods/initGoodsDetail.action?goods_no=0000014985',
									shorten_url:$("#shorten_url").val(),
									img:'http://cdn.thebanchan.co.kr/upload/C00001/goods/prd/326/764/200721000025764.jpg'
								});
							}
						});
						//-->
					</script>				
					<!-- INFO. -->
					<div class="gd_info">
						<dl>
							<dt>판매가
	
							</dt>
							<dd class="prc">
								<span class="sale"><b>11,200</b>원</span>
							</dd>
						</dl>
						<dl>
							<dt>100g당 단가</dt>
							<dd>1,982원</dd>
						</dl>
						<dl>
							<dt>중량</dt>
							<dd>565g(745kcal)</dd>
						</dl>
						<dl>
							<dt>유통기한</dt>
							<dd class="lmt">제조일로부터 냉장 4일</dd>
						</dl>
						<dl>
							<dt>배송안내</dt>
							<dd class="drv">
								<div></div>
								<span><em><b>새벽배송</b></em> 서울/인천/경기권 (일부지역 제외)</br>10월 12일(화)부터 도착 가능</span>
								<span><em><b style="color:#fe7600;">일반택배</b></em> 전국 (제주/도서산간 제외)</br>10월 12일(화)부터 도착 가능</span>
							</dd>
						</dl>
	<!-- 
						<dl>
							<dt>키워드</dt>
							<dd class="hash">
								<a href="javascript:void(0);" class="ctg" onclick="overpass.dispctg.goDispList({disp_ctg_no :'2102005884'});">#바로먹기</a>
							</dd>
						</dl>
	 -->
	
						<dl>
							<dt class="dt"><label for="ord_qty">수량</label></dt>
							<dd>
								<span class="qty">
									<input type="hidden" id="sale_price" name="sale_price" value="11200"/>	
									<input type="hidden" id="chk_sale_price" name="chk_sale_price" value="11200"/>	
									<input type="text" name="ord_qty" id="ord_qty" value="1" class="input" title="제품수량입력" maxlength="3" onkeyup="overpass.goodsDetail.fnGoods.checkKeyPressQty({min_qty:1,max_qty:0,sale_poss_qty : 999999,ord_poss_max_qty_st_cd : '10',obj:this});"/>
									<button type="button" class="minus" onclick="overpass.goodsDetail.fnGoods.setMinus({min_qty:1, max_qty:0, sale_poss_qty : 999999, ord_poss_max_qty_st_cd : '10'});return false;"  onkeypress="this.onclick;" title="상품수량감소">감소</button>							
									<button type="button" class="plus" onclick="overpass.goodsDetail.fnGoods.setPlus({max_qty:0, sale_poss_qty : 999999, ord_poss_max_qty_st_cd : '10', nplus_base_cnt:0, nplus_cnt:0 });return false;"  onkeypress="this.onclick;" title="상품수량증가">증가</button>								
								</span>
							</dd>
						</dl>
					</div>
					<!-- //INFO. -->
	
					<!-- AMOUNT -->
					<div class="gd_amt">
						<dl>
							<dt>총 제품금액</dt>
							<dd><b id="totalAmt">11,200</b><em>원</em></dd>
						</dl>
					</div>
					<!-- //AMOUNT -->
	
					<!-- BTN. -->
					<div class="gd_btns">
						<!-- TOOLTIP -->
						
						<button type="button" class="cart" id="msg_open_cart" onclick="overpass.goodsDetail.fnGoods.clickCartOrd({cart_divi_cd:'10'} , false); return false;" title="장바구니 상품 알림 레이어 열기"><em>장바구니</em></button>
						<!-- <button type="button" class="cart" disabled="disabled">장바구니</button>  -->
						<!-- TOOLTIP showTip('lyr_msg_cart', this); -->
						<div class="lyr_tip_wrap2" >
							<div class="lyr_tip" id="lyr_msg_cart">
								<span class="txt">선택한 제품이 장바구니에 담겼습니다.</span>
								<span class="btns">
									<a href="javascript:void(0);" onclick="hideTip('lyr_msg_cart');return false;">쇼핑계속하기</a>
									<a href="javascript:void(0);" class="bx" onclick="overpass.link('CART');">장바구니 가기</a>
								</span>
								<button class="cls" type="button" onclick="hideTip('lyr_msg_cart');return false;">장바구니 제품 알림 레이어 닫기</button>
							</div>
						</div>
						<!-- //TOOLTIP -->
	
						<!-- //TOOLTIP -->
						<button type="button" class="buy" onclick="overpass.goodsDetail.fnGoods.clickCartOrd({cart_divi_cd:'20'} , false);" title="주문하기 페이지 이동"><em>바로구매</em></button>
					</div>
					<!-- //BTN. -->
				</div>
				<!-- //GOODS INFO -->
			</div>
			<!-- GOODS VIEW -->
	
			<!-- GOODS RELATION -->
			<div class="gds_rel">
				<div class="gd_rel">
					<h3>추천제품 <em>(8)</em></h3>
					<div class="fade_slide bn" id="gd_rel1">
						<ul class="cont">
							<li class="active">
								<div class="li">
									<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'1712010310', vir_vend_no:'VV17002724', sale_shop_divi_cd:'99', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'1712010310', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:''});">
										<span class="brd">더반찬</span>
										<span class="tit">두메산나물비빔밥재료</span>
										<span class="prc">
											<span><em class="on"><b class="ir">판매가</b><b>7,800</b>원</em></span>
										</span>
										<span class="pnt"></span>
										<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/571/200714000025571.jpg" width="240" height="240" alt="두메산나물비빔밥재료" onerror="this.src='/common/images/common/noimg_240.jpg'"/></span>
									</a>
									<button class="bt_crt" type="button"  onclick="overpass.goods.addCart({  goods_no:'1712010310', vir_vend_no:'VV17002724', sale_shop_divi_cd:'99', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_dist_no:'', conts_divi_cd:'20', rel_no:'1712010310', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:'', goods_cmps_divi_cd:'', obj : this});"><b class="ir">장바구니에 담기</b></button>
								</div>
								<div class="li">
									<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'0000014151', vir_vend_no:'VV17002724', sale_shop_divi_cd:'99', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'0000014151', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:''});">
										<span class="brd">더반찬</span>
										<span class="tit">명태회무침(200g)</span>
										<span class="prc">
											<span>
												<em class="on"><b class="ir">판매가</b><b>6,900</b>원</em>
											</span>
										</span>
										<span class="pnt"></span>
										<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/135/180618000021135.jpg" width="240" height="240" alt="명태회무침(200g)" onerror="this.src='/common/images/common/noimg_240.jpg'"/></span>
									</a>
									<button class="bt_crt" type="button"  onclick="overpass.goods.addCart({  goods_no:'0000014151', vir_vend_no:'VV17002724', sale_shop_divi_cd:'99', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_dist_no:'', conts_divi_cd:'20', rel_no:'0000014151', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:'', goods_cmps_divi_cd:'', obj : this});"><b class="ir">장바구니에 담기</b></button>
								</div>
								<div class="li">
									<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'1908013265', vir_vend_no:'VV17002724', sale_shop_divi_cd:'99', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'1908013265', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:''});">
										<span class="brd">더반찬</span>
										<span class="tit">낙지탕탕이 비빔젓갈(180g)</span>
										<span class="prc">
											<span>
												<em class="on"><b class="ir">판매가</b><b>6,900</b>원</em>
											</span>
										</span>
										<span class="pnt"></span>
										<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/376/190920000024376.jpg" width="240" height="240" alt="낙지탕탕이 비빔젓갈(180g)" onerror="this.src='/common/images/common/noimg_240.jpg'"/></span>
									</a>
									<button class="bt_crt" type="button"  onclick="overpass.goods.addCart({  goods_no:'1908013265', vir_vend_no:'VV17002724', sale_shop_divi_cd:'99', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_dist_no:'', conts_divi_cd:'20', rel_no:'1908013265', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:'', goods_cmps_divi_cd:'', obj : this});"><b class="ir">장바구니에 담기</b></button>
								</div>
								<div class="li">
									<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'0000014150', vir_vend_no:'VV17002724', sale_shop_divi_cd:'99', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'0000014150', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:''});">
										<span class="brd">더반찬</span>
										<span class="tit">낙지젓(180g)</span>
										<span class="prc">
											<span>
												<em class="on"><b class="ir">판매가</b><b>6,900</b>원</em>
											</span>
										</span>
										<span class="pnt"></span>
										<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/592/200715000025592.jpg" width="240" height="240" alt="낙지젓(180g)" onerror="this.src='/common/images/common/noimg_240.jpg'"/></span>
									</a>
									<button class="bt_crt" type="button"  onclick="overpass.goods.addCart({  goods_no:'0000014150', vir_vend_no:'VV17002724', sale_shop_divi_cd:'99', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_dist_no:'', conts_divi_cd:'20', rel_no:'0000014150', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:'', goods_cmps_divi_cd:'', obj : this});"><b class="ir">장바구니에 담기</b></button>
								</div>
							</li>
							<li>						
								<div class="li">
									<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'0000013958', vir_vend_no:'VV17002724', sale_shop_divi_cd:'99', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'0000013958', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:''});">
										<span class="brd">더반찬</span>
										<span class="tit">키즈멸치볶음(80g)</span>
										<span class="prc">
											<span>
												<em class="on"><b class="ir">판매가</b><b>4,700</b>원</em>
											</span>
										</span>
										<span class="pnt"></span>
										<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/873/180807000021873.jpg" width="240" height="240" alt="키즈멸치볶음(80g)" onerror="this.src='/common/images/common/noimg_240.jpg'"/></span>
									</a>
									<button class="bt_crt" type="button"  onclick="overpass.goods.addCart({  goods_no:'0000013958', vir_vend_no:'VV17002724', sale_shop_divi_cd:'99', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_dist_no:'', conts_divi_cd:'20', rel_no:'0000013958', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:'', goods_cmps_divi_cd:'', obj : this});"><b class="ir">장바구니에 담기</b></button>
								</div>
								<div class="li">
									<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'2005014144', vir_vend_no:'VV17002724', sale_shop_divi_cd:'99', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'2005014144', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:''});">
										<span class="brd">크리스피 프레시</span>
										<span class="tit">[크리스피프레시] 클래식콥 샐러드</span>
										<span class="prc">
											<span>
												<em class="on"><b class="ir">판매가</b><b>4,500</b>원</em>
											</span>
										</span>
										<span class="pnt"></span>
										<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/292/200519000025292.jpg" width="240" height="240" alt="[크리스피프레시] 클래식콥 샐러드" onerror="this.src='/common/images/common/noimg_240.jpg'"/></span>
									</a>
									<button class="bt_crt" type="button"  onclick="overpass.goods.addCart({  goods_no:'2005014144', vir_vend_no:'VV17002724', sale_shop_divi_cd:'99', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_dist_no:'', conts_divi_cd:'20', rel_no:'2005014144', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:'', goods_cmps_divi_cd:'', obj : this});"><b class="ir">장바구니에 담기</b></button>
								</div>
	 
								<div class="li">
									<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'0000012792', vir_vend_no:'VV17002724', sale_shop_divi_cd:'99', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'0000012792', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:''});">
										<span class="brd">더반찬</span>
										<span class="tit">새우젓호박볶음(250g)</span>
										<span class="prc">
											<span>
												<em class="on"><b class="ir">판매가</b><b>5,500</b>원</em>
											</span>
										</span>
										<span class="pnt"></span>
										<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/441/180706000021441.jpg" width="240" height="240" alt="새우젓호박볶음(250g)" onerror="this.src='/common/images/common/noimg_240.jpg'"/></span>
									</a>
									<button class="bt_crt" type="button"  onclick="overpass.goods.addCart({  goods_no:'0000012792', vir_vend_no:'VV17002724', sale_shop_divi_cd:'99', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_dist_no:'', conts_divi_cd:'20', rel_no:'0000012792', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:'', goods_cmps_divi_cd:'', obj : this});"><b class="ir">장바구니에 담기</b></button>
								</div>
								<div class="li">
									<a href="javascript:void(0);"  onclick="overpass.tracking.link({  goods_no:'2105015367', vir_vend_no:'VV17002724', sale_shop_divi_cd:'99', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'20', rel_no:'2105015367', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:''});">
										<span class="brd">더반찬</span>
										<span class="tit">쇠고기장조림(290g)</span>
										<span class="prc">
											<span>
												<em class="on"><b class="ir">판매가</b><b>8,900</b>원</em>
											</span>
										</span>
										<span class="pnt"></span>
										<span class="img"><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/067/210409000027067.jpg" width="240" height="240" alt="쇠고기장조림(290g)" onerror="this.src='/common/images/common/noimg_240.jpg'"/></span>
									</a>
									<button class="bt_crt" type="button"  onclick="overpass.goods.addCart({  goods_no:'2105015367', vir_vend_no:'VV17002724', sale_shop_divi_cd:'99', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_dist_no:'', conts_divi_cd:'20', rel_no:'2105015367', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:'', goods_cmps_divi_cd:'', obj : this});"><b class="ir">장바구니에 담기</b></button>
								</div>
							</li>
						</ul>
						
						<div class="ctrl">
							<a href="javascript:void(0);" class="prev"><em class="ir">이전배너</em></a>
							<a href="javascript:void(0);" class="next"><em class="ir">다음배너</em></a>
						</div>
					</div>
				</div>
				<script type="text/javascript">
					$(document).ready(function() {
						fade_slide('gd_rel1', 0, false, 'click', false, false, 0);
					});
				</script>
			</div>
			<!-- //GOODS RELATION -->
	
			<!-- GOODS CONTENT -->
			<!-- TAB1 -->
			<div class="gds_cont" id="gds_cont1">
				<div class="gd_tabs">
					<ul>
						<li class="on"><a href="#gds_cont1">제품정보<em class="ir">선택</em></a></li>
						<li><a href="#gds_cont2">제품정보고시</a></li>
						<li><a href="#gds_cont3">고객후기 <em>(2,143)</em></a></li>
						<li><a href="#gds_cont4">주의사항</a></li>
					</ul>
				</div>
	
				<!-- DETAIL -->
				<h3 class="ir">제품 상세정보</h3>
				<div class="gd_detail">
					<div align="center">
						<img alt="" src="http://image.thebanchan.co.kr/upload/C00001/fckeditor/tempgoodsdesc/202108/1627890102803.jpg" />
						<img alt="" src="http://image.thebanchan.co.kr/upload/C00001/fckeditor/tempgoodsdesc/202007/1594965586148.jpg" />
						<img alt="" src="http://image.thebanchan.co.kr/upload/C00001/fckeditor/tempgoodsdesc/202007/1594965612158.jpg" />
						<img alt="" src="http://image.thebanchan.co.kr/upload/C00001/fckeditor/tempgoodsdesc/201902/1550221060331.jpg" />
					</div>
				</div>
				<!-- DETAIL -->
	
			</div>
			<!-- //TAB1 -->
	
			<!-- TAB2 -->
			<div class="gds_cont" id="gds_cont2">
				<div class="gd_tabs">
					<ul>
						<li><a href="#gds_cont1">제품정보</a></li>
						<li class="on"><a href="#gds_cont2">제품정보고시<em class="ir">선택</em></a></li>
						<li><a href="#gds_cont3">고객후기 <em>(2,143)</em></a></li>
						<li><a href="#gds_cont4">주의사항</a></li>
					</ul>
				</div>
	
				<div class="gds_tbl" id="guide_desc_0000014985">
					<h3 class="ir">제품 기본 정보</h3>
					<table>
						<caption>제픔정보고시 | 제품의 유형, 생산자 및 소재지, 유통기한 또는 품질유지기한, 내용량, 원재료명 및 함량, 보관방법 / 취급방법, 영양성분, 유전자재조합식품여부, 수입신고 필 여부, 알레르기 식품, 소비자상담 관련 전화번호 등을 제공하는 표</caption>
						<colgroup>
							<col style="width:210px">
							<col style="width:auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">제품명</th>
								<td>양장피</td>
							</tr>
							<tr>
								<th scope="row">식품의 유형</th>
								<td>즉석조리식품</td>
							</tr>
							<tr>
								<th scope="row">생산자 및 소재지(수입품의 경우 생산자, 수입자 및 제조국)</th>
								<td>동원디어푸드 주식회사 가산공장/서울특별시 금천구 서부샛길 280</td>
							</tr>
							<tr>
								<th scope="row">제조연월일, 유통기한 또는 품질유지기한</th>
								<td>제조일로부터 냉장 4일</td>
							</tr>
							<tr>
								<th scope="row">포장단위별 내용물의 용량(중량), 수량</th>
								<td>565g(745kcal)</td>
							</tr>
							<tr>
								<th scope="row">원재료명 및 함량(농수산물의 원산지 표시에 관한 법률에 따른 원산지 표시 포함)</th>
								<td>양장피채22%(중국산/고구마전분100%),오징어(중국산),고추잡채소스[굴소스(홍콩산),혼합간장{탈지대두(외국산)},마늘,고추기름-1,설탕],새우,양파,돼지고기,청피망,홍피망,오이,당근,맛살,표고버섯,발효식초,설탕,고추맛기름,계란지단,마요네즈,연겨자,양조간장,목이버섯,참기름,마늘,천일염   *달걀,대두,밀,게,새우,돼지고기,오징어,조개류(굴) 함유</td>
							</tr>
							<tr>
								<th scope="row">보관방법 / 취급방법</th>
								<td>냉장보관(0~10℃)</td>
							</tr>
							<tr>
								<th scope="row">소비자안전을 위한 주의사항</th>
								<td>-본 제품은 알류(메추리알),우유,메밀,땅콩,고등어,복숭아,토마토,아황산류,호두,닭고기,쇠고기,조개류(전복,홍합 포함),잣을 사용한 제품과 같은 제조시설에서 제조하고 있습니다.
									-본 제품은 공정거래위원회고시 소비자분쟁해결기준에 의거 교환 또는 보상을 받을 수 있습니다.
									-부정·불량 식품 신고는 국번없이 1399</td>
							</tr>
							<tr>
								<th scope="row">소비자상담 관련 전화번호</th>
								<td>1644-6844</td>
							</tr>
							<tr>
								<th scope="row">영양성분(식품등의표시·광고에관한법률에 따른 영양성분 표시대상 식품에 한함)</th>
								<td>총 내용량 565g, 745kcal/ 나트륨2,340mg(117%), 탄수화물93g(29%), 당류20g(20%), 지방31g(57%), 트랜스지방0g, 포화지방5.0g(33%), 콜레스테롤25mg(8%), 단백질23g(42%), /1일 영양성분 기준치에 대한 비율(%)은 2,000kcal 기준이므로 개인의 필요 열량에 따라 다를 수 있습니다.</td>
							</tr>
							<tr>
								<th scope="row">유전자변형식품에 해당하는 경우의 표시</th>
								<td>해당사항없음</td>
							</tr>
							<tr>
								<th scope="row">수입식품에 해당하는 경우 "수입식품안전관리특별법에 따른 수입신고를 필함"의 문구</th>
								<td>해당사항없음</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- //TAB2 -->
			
			<div class="gd_lst">
				<h3>
					<span><b>더반찬</b>브랜드의 다른 제품들</span>
					<a href="javascript:void(0);" onclick="overpass.link('BRAND',{brand_no:'1700002614'});">더보기</a>
				</h3>
				<div class="lst">
					<ul>
						<li><a href="javascript:void(0);" onclick="overpass.tracking.link({  goods_no:'2110015914', vir_vend_no:'VV17002724', sale_shop_divi_cd:'', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'', rel_no:'2110015914', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:''});" >
								<span class="tit">국/찌개/전골류 2종 골라담기 (11,000원 부터~)</span>
								<span class="prc">
									<span>
										<em class="on"><b class="ir">가격할인</b><b>11,000</b>원</em>
									</span>
								</span>
								<span class="pnt"></span>
								<span class="img">
									<div class="deli_type_tag"></div>
									<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/658/211008000027658.jpg" width="235" height="235" alt="국/찌개/전골류 2종 골라담기 (11,000원 부터~)" onerror="this.src='/common/images/common/noimg_240.jpg'"/>
								</span>
							</a>
						<button type="button" class="bt_crt" onclick="overpass.goods.addCart({  goods_no:'2110015914', vir_vend_no:'VV17002724', sale_shop_divi_cd:'', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_dist_no:'', conts_divi_cd:'', rel_no:'2110015914', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:'', goods_cmps_divi_cd:'20', obj : this});"><b class="ir">장바구니에 담기</b></button></li>
						<li><a href="javascript:void(0);" onclick="overpass.tracking.link({  goods_no:'2010014696', vir_vend_no:'VV17002724', sale_shop_divi_cd:'', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'', rel_no:'2010014696', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:''});" >
								<span class="tit">[남향푸드또띠아] 간편브리또 8종 (2개 세트)</span>
								<span class="prc">
									<span>
										<em class="on"><b class="ir">가격할인</b><b>5,800</b>원</em>
									</span>
								</span>
								<span class="pnt"></span>
								<span class="img">
									<div class="deli_type_tag"></div>
									<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/292/201026000026292.jpg" width="235" height="235" alt="[남향푸드또띠아] 간편브리또 8종 (2개 세트)" onerror="this.src='/common/images/common/noimg_240.jpg'"/>
								</span>
							</a>
						<button type="button" class="bt_crt" onclick="overpass.goods.addCart({  goods_no:'2010014696', vir_vend_no:'VV17002724', sale_shop_divi_cd:'', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_dist_no:'', conts_divi_cd:'', rel_no:'2010014696', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:'', goods_cmps_divi_cd:'20', obj : this});"><b class="ir">장바구니에 담기</b></button></li>
						<li><a href="javascript:void(0);" onclick="overpass.tracking.link({  goods_no:'1712010310', vir_vend_no:'VV17002724', sale_shop_divi_cd:'', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'', rel_no:'1712010310', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:''});" >
								<span class="tit">두메산나물비빔밥재료</span>
								<span class="prc">
									<span>
										<em class="on"><b class="ir">판매가</b><b>7,800</b>원</em>
									</span>
								</span>
								<span class="pnt"></span>
								<span class="img">
									<div class="deli_type_tag"></div>
									<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/571/200714000025571.jpg" width="235" height="235" alt="두메산나물비빔밥재료" onerror="this.src='/common/images/common/noimg_240.jpg'"/>
								</span>
							</a>
						<button type="button" class="bt_crt" onclick="overpass.goods.addCart({  goods_no:'1712010310', vir_vend_no:'VV17002724', sale_shop_divi_cd:'', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_dist_no:'', conts_divi_cd:'', rel_no:'1712010310', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:'', goods_cmps_divi_cd:'10', obj : this});"><b class="ir">장바구니에 담기</b></button></li>
						<li><a href="javascript:void(0);" onclick="overpass.tracking.link({  goods_no:'2108015821', vir_vend_no:'VV17002724', sale_shop_divi_cd:'', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'', rel_no:'2108015821', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:''});" >
								<span class="tit">[북창동순두부 X 더반찬&] 북창동순두부찌개(600g)</span>
								<span class="prc">
									<span>
										<em class="on"><b class="ir">판매가</b><b>7,200</b>원</em>
									</span>
								</span>
								<span class="pnt"></span>
								<span class="img">
									<div class="deli_type_tag"></div>
									<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/568/210826000027568.jpg" width="235" height="235" alt="[북창동순두부 X 더반찬&] 북창동순두부찌개(600g)" onerror="this.src='/common/images/common/noimg_240.jpg'"/>
								</span>
							</a>
						<button type="button" class="bt_crt" onclick="overpass.goods.addCart({  goods_no:'2108015821', vir_vend_no:'VV17002724', sale_shop_divi_cd:'', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_dist_no:'', conts_divi_cd:'', rel_no:'2108015821', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:'', goods_cmps_divi_cd:'10', obj : this});"><b class="ir">장바구니에 담기</b></button></li>
					</ul>
				</div>
			</div>
	
			<!-- TAB3 -->
			<div class="gds_cont" id="gds_cont3">
				<div class="gd_tabs">
					<ul>
						<li><a href="#gds_cont1">제품정보</a></li>
						<li><a href="#gds_cont2">제품정보고시</a></li>
						<li class="on"><a href="#gds_cont3">고객후기 <em>(2,143)</em><em class="ir">선택</em></a></li>
						<li><a href="#gds_cont4">주의사항</a></li>
					</ul>
				</div>
				<div class="gd_scr">
					<dl>
						<dt>사용자 총 평점<em>(총 <b>2,143</b>개 고객후기 기준)</em></dt>
						<dd>
							<span class="star_rate04"><b class="ir">평점</b><em style="width:90%;">4.7</em></span>
							<span class="scr"><b>4.7</b>/5<em>점</em></span>
						</dd>
					</dl>
				</div>
				<div class="gd_rv" id="goodsEvalDiv">
	
				</div>
			</div>
			<!-- //TAB3 -->
			<script type="text/javascript">
			$(document).ready(function(){
				var param = {
						goods_no: "0000014985",
						vir_vend_no : "VV17002724",
						goods_type_dtl_cd : "1011",
						goods_detail_yn : "Y"
					};
				
				
				overpass.goodsDetail.fnEval.fnLoadEval(param, "#goodsEvalDiv");
	
			});
			</script>
	
			<!-- TAB4 -->
			
			<div class="gds_cont" id="gds_cont4">
				<div class="gd_tabs">
					<ul>
						<li><a href="#gds_cont1">제품정보</a></li>
						<li><a href="#gds_cont2">제품정보고시</a></li>
						<li><a href="#gds_cont3">고객후기 <em>(2,143)</em></a></li>
						<li class="on"><a href="#gds_cont4">주의사항</a><em class="ir">선택</em></li>
					</ul>
				</div>
				<div class="gd_noti">
					<h3>주문 전 확인해 주세요!</h3>
					<div class="g_noti bg_car">
						<ul>
							<li>10,000원 이상부터 주문 가능해요!
								<span class="no_bg">더반찬&은 신선하고 안전한 배송을 위해 박스, 보냉제, 완충제 등 기본 포장비가 발생되어 10,000원 이상부터 주문하실 수 있어요</span>
							</li>
							<li>배송 방법에 따라 선택 가능한 배송일이 달라질 수 있어요
								<span class="no_bg">새벽배송은 오늘 밤 9시까지 주문하면 다음날 새벽 도착해요.</span>
								<span class="no_bg">일반택배는 오늘 낮 1시까지 주문하면 다음날까지 도착해요.</span>
								<span class="no_bg bold">※ 일부 제품의 경우, 주문량이 늘어나면 일찍 마감되거나 배송일 선택이 제한될 수 있어요. 상품 상세페이지에서 정확한 배송일자를 확인해 주세요.</span>
							</li>
							<li>쿠폰 적용 후 최종 결제 금액에 30,000원인 경우 무료로 배송해드려요
								<span class="no_bg">30,000원 미만인 경우 새벽배송은 2,900원, 일반택배(업체배송 포함) 2,500원의 배송비가 추가됩니다.</span>
							</li>
							<li>원하는 배송일은 최대 2주 이내까지 선택할 수 있어요
								<span class="no_bg">새벽배송은 선택하신 희망 배송일 전일 밤부터 당일 새벽까지 도착해요.</span>
								<span class="no_bg">일반택배는 선택하신 희망 배송일 내 도착해요.</span>
								<span class="no_bg bold">※ 업체배송은 배송조회 기능을 제공하지 않고 있어요. 업체에서 배송 관련 문자를 발송하고 있어요.</span>
							</li>
						</ul>
					</div>
					<h3>취소, 반품 시 참고해 주세요!</h3>
					<div class="g_noti">
						<ul>
							<li>결제 후 주문 상태가 제품 준비 중으로 변경되면 수정, 취소가 불가능 해요
								<span class="no_bg">제품 준비 중으로 상태 변경 시, 주문정보를 수정하거나 취소하실 수 없으니 양해 부탁드려요.</span>
								<span class="no_bg bold">※ 입금대기중, 결제완료 단계는 MY더반찬 > 주문/배송 조회에서 직접 취소하실 수 있어요.</span>
								<span class="no_bg bold">※ 더반찬&은 부분 취소가 어려우며, 번거로우시겠지만 전체 주문 취소 후 재주문해 주세요.</span>
							</li>
							<li>제품의 특성상 고객님의 단순 변심에 의해 교환 및 반품이 불가능합니다.
								<span class="no_bg">제품에 이상이 있는 경우 <a href="javascript:;" onclick="overpass.custcenter.goCounsel()">1:1 친절상담</a> 또는 고객센터 (평일 오전 8시 ~ 밤 8시)로 연락주세요.</span>
								<span class="no_bg">입고 지연, 생산 이슈에 따라 일부 제품이 발송이 어려운 경우 부분취소될 수 있습니다.</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- //TAB4 -->
	
	
		</div>
		<!-- WRAP -->
		
	</div>
	<!-- //CONTENT -->
	
	
	
	<!-- /HISTORY BACK CHECK -->
	<script type="text/javascript">
	var _disp_ctg_no = "";
	var _disp_pathname = "/dispctg/initDispCtg.action";
	
	window.onbeforeunload = function(e) {
		//목록에서 상세페이지로 왔으며, 뒤로가기를 클릭 시 기록에 남깁니다.
		if (sessionStorage.getItem('disp_ctg_no') == _disp_ctg_no &&
			sessionStorage.getItem('disp_ctg_pathname') == _disp_pathname &&
			sessionStorage.getItem('disp_ctg_scrollTop')) { 
			sessionStorage.setItem('disp_ctg_historyBack', true);
		}
	};
	</script>
	
	<!-- CRITEO GATES 트래커 추가 -->		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		<script type="text/javascript" src="https://static.criteo.net/js/ld/ld.js" async="true"></script>
		<script type="text/javascript">
			/**CRITEO VAR**/
			var s_siteType 	= "d";
			var s_account 	= "25834";
			var s_email  	= "d9b35861efd7e024a80c11d43293c41c";
		</script>
		
	
		
		<script type="text/javascript">
			/* @.3 상품상세 페이지 */	
			var s_item = "0000014985";
			window.criteo_q = window.criteo_q || [];
			window.criteo_q.push(  
			        { event: "setAccount", account: s_account },
			        { event: "setHashedEmail", email: s_email  },
			        { event: "setSiteType", type: s_siteType },
			        { event: "viewItem", item: s_item }
			);
		</script>
			
	
	
	
	
	
	
	
	
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
