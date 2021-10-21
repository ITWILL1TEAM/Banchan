<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>집밥장인이 만든 온라인 식품몰 더반찬&</title>
<script src="../js/jquery-3.6.0.js"></script> 
<!-- 파일로 연결할 시 css가 부분부분 깨짐.일단은 링크로 연결해두고 나중에 고쳐보기. -->
<link href="../CSS/common.css" rel="stylesheet" type="text/css">
<link href="../CSS/pc-main-common.css" rel="stylesheet" type="text/css">
<link href="../CSS/sub.css" rel="stylesheet" type="text/css">
<link href="../CSS/font.css" rel="stylesheet" type="text/css">
<link href="../CSS/font.css" rel="stylesheet" type="text/css">
<link href="../CSS/gds.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	
	$(document).ready(function() {
		
		var qty = $('input[name=ord_qty]').val(); // 제품 수량
		
		// 수량조절 감소 버튼
		$(".minus").click(function() {	
			qty--;
			if(qty < 1) {
				alert('1개 이상부터 구매 가능합니다.');
				return false;
			} else {
				$('input[name=ord_qty]').val(qty);
			}
		});
		
		// 수량조절 증가 버튼
		$(".plus").click(function() {	
			qty++;
			if(qty > 10) {
				alert('재고가 부족합니다.');
				return false;
			} else {
				$('input[name=ord_qty]').val(qty);
			}
		});
		
		// 제품 수량에 따른 총 제품 금액 계산
		$('#totalAmt').append(11200 * qty * 1);
		// 대충 이런식으로 하는 건 알겠는데 수량 버튼으로 수량을 바꿔도 완전 적용하기 전까지는 qty가 1이니까... 
		// ajax로 해야 하는 건가? 그리고 천단위 콤마 찍는 거... 포맷으로 해야하나 
		
	});
</script>
</head>
<body>
	<jsp:include page="../inc/top.jsp"/>
	<!-- 똑같은 gds.css인데 왜 이걸 지우면 수량 조절 버튼에 -, +가 사라지냐고~~!! -->
	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/gds.css?t=20200406000000" type="text/css">
	
	<form action="Order.do" method="post">
		<!-- CONTENT -->
		<div id="content" class="content">
		
			<!-- WRAP -->
			<div class="wrap gds" id="goodsInfoDiv">
			
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
						</div>
					</div>
					<!-- //GOODS IMG. -->
		
					<!-- GOODS INFO -->
					<div class="gds_info" data-price_type_cd="00">
						
						<!-- BRAND -->
						<div class="gd_brd">	
							<dl>
								<dt>집밥선생</dt>
							</dl>
						</div>
						<!-- NAME -->
						<h2 class="gd_name">양장피</h2>
						<!-- TAG -->
						<div class="gd_ico"></div>
		
						<!-- SCORE -->
						<div class="gd_base">
							<div class="g_scr">
								<span class="star_rate03"><b class="ir">평점</b><em style="width:90%;">4.7</em></span>
								<span class="scr"><b>4.7</b></span>
								<a href="#gds_cont3" class="rv">(고객후기 n건)</a>
							</div>
							
							<div class="g_sns">						
								<button type="button" class="btn_sns" id="sns_lyr_open" onclick="showTip('sns_lyr', this);return false;">공유하기<b class="ir">SNS 레이어 열기</b></button>
								<!-- TOOLTIP -->
								<div class="lyr_tip_wrap">
									<div class="lyr_tip right" id="sns_lyr">
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
						</script>				
						<!-- INFO. -->
						<div class="gd_info">
							<dl>
								<dt>판매가</dt>
								<dd class="prc">
									<span class="sale"><b>11,200</b>원</span>
								</dd>
							</dl>
							<dl>
								<dt>중량</dt>
								<dd>565g</dd>
							</dl>
							<dl>
								<dt>유통기한</dt>
								<dd class="lmt">제조일로부터 냉장 4일</dd>
							</dl>
							<dl>
								<dt>배송안내</dt>
								<dd class="drv">
									<div></div>
									<span><em><b style="color:#fe7600;">일반택배</b></em> 전국 (제주/도서산간 제외)<br>10월 12일(화)부터 도착 가능</span>
								</dd>
							</dl>
							<dl>
								<dt class="dt"><label for="ord_qty">수량</label></dt>
								<dd>
									<span class="qty">
										<input type="hidden" id="sale_price" name="sale_price" value="11200"/>	
										<input type="hidden" id="chk_sale_price" name="chk_sale_price" value="11200"/>	
										<input type="text" name="ord_qty" id="ord_qty" value="1" class="input" title="제품수량입력" maxlength="3" readonly="readonly"/>
										<button type="button" class="minus" title="상품수량감소">감소</button>
										<button type="button" class="plus" title="상품수량증가">증가</button>								
									</span>
								</dd>
							</dl>
						</div>
						<!-- //INFO. -->
		
						<!-- AMOUNT -->
						<div class="gd_amt">
							<dl>
								<dt>총 제품금액</dt>
								<dd><b id="totalAmt"></b><em>원</em></dd>
							</dl>
						</div>
						<!-- //AMOUNT -->
		
						<!-- BTN. -->
						<div class="gd_btns">
							<!-- TOOLTIP -->
							<button type="button" class="cart" id="msg_open_cart" onclick="location.href='Cart.do'" title="장바구니 상품 알림 레이어 열기"><em>장바구니</em></button>
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
							<button type="submit" class="buy" title="주문하기 페이지 이동"><em>바로구매</em></button>
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
												<span>
													<em class="on"><b class="ir">판매가</b><b>7,800</b>원</em>
												</span>
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
											<span class="img">
												<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/441/180706000021441.jpg" width="240" height="240" alt="새우젓호박볶음(250g)" onerror="this.src='/common/images/common/noimg_240.jpg'"/>
											</span>
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
											<span class="img">
												<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/067/210409000027067.jpg" width="240" height="240" alt="쇠고기장조림(290g)" onerror="this.src='/common/images/common/noimg_240.jpg'"/>
											</span>
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
							<li><a href="#gds_cont3">고객후기 <em>(2,145)</em></a></li>
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
							<li><a href="#gds_cont3">고객후기 <em>(2,145)</em></a></li>
							<li><a href="#gds_cont4">주의사항</a></li>
						</ul>
					</div>
		
					<div class="gds_tbl" id="guide_desc_0000014985">
						<h3 class="ir">제품 기본 정보</h3>
						<table>
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
									<th scope="row">제조연월일, 유통기한 또는 품질유지기한</th>
									<td>제조일로부터 냉장 4일</td>
								</tr>
							
								<tr>
									<th scope="row">포장단위별 내용물의 용량(중량), 수량</th>
									<td>565g(745kcal)</td>
								</tr>
								<tr>
									<th scope="row">보관방법 / 취급방법</th>
									<td>냉장보관(0~10℃)</td>
								</tr>
								<tr>
									<th scope="row">소비자상담 관련 전화번호</th>
									<td>1644-6844</td>
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
									<span class="img"><div class="deli_type_tag"></div><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/658/211008000027658.jpg" width="235" height="235" alt="국/찌개/전골류 2종 골라담기 (11,000원 부터~)" onerror="this.src='/common/images/common/noimg_240.jpg'"/></span>
								</a>
								<button type="button" class="bt_crt" onclick="overpass.goods.addCart({  goods_no:'2110015914', vir_vend_no:'VV17002724', sale_shop_divi_cd:'', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_dist_no:'', conts_divi_cd:'', rel_no:'2110015914', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:'', goods_cmps_divi_cd:'20', obj : this});"><b class="ir">장바구니에 담기</b></button></li>
							<li><a href="javascript:void(0);" onclick="overpass.tracking.link({  goods_no:'0000014898', vir_vend_no:'VV17002724', sale_shop_divi_cd:'', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'', rel_no:'0000014898', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:''});" >
									<span class="tit">바지락살얼갈이된장국(600g)</span>
									<span class="prc">
										<span>
											<em class="on"><b class="ir">판매가</b><b>5,400</b>원</em>
										</span>
									</span>
									<span class="pnt"></span>
									<span class="img"><div class="deli_type_tag"></div><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/612/200715000025612.jpg" width="235" height="235" alt="바지락살얼갈이된장국(600g)" onerror="this.src='/common/images/common/noimg_240.jpg'"/></span>
								</a>
								<button type="button" class="bt_crt" onclick="overpass.goods.addCart({  goods_no:'0000014898', vir_vend_no:'VV17002724', sale_shop_divi_cd:'', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_dist_no:'', conts_divi_cd:'', rel_no:'0000014898', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:'', goods_cmps_divi_cd:'10', obj : this});"><b class="ir">장바구니에 담기</b></button></li>
							<li><a href="javascript:void(0);" onclick="overpass.tracking.link({  goods_no:'0000013850', vir_vend_no:'VV17002724', sale_shop_divi_cd:'', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'', rel_no:'0000013850', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:''});" >
									<span class="tit">연근조림(200g)</span>
									<span class="prc">
										<span>
											<em class="on"><b class="ir">판매가</b><b>4,900</b>원</em>
										</span>
									</span>
									<span class="pnt"></span>
									<span class="img"><div class="deli_type_tag"></div><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/469/201209000026469.jpg" width="235" height="235" alt="연근조림(200g)" onerror="this.src='/common/images/common/noimg_240.jpg'"/></span>
								</a>
								<button type="button" class="bt_crt" onclick="overpass.goods.addCart({  goods_no:'0000013850', vir_vend_no:'VV17002724', sale_shop_divi_cd:'', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_dist_no:'', conts_divi_cd:'', rel_no:'0000013850', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:'', goods_cmps_divi_cd:'10', obj : this});"><b class="ir">장바구니에 담기</b></button></li>
						
							<li><a href="javascript:void(0);" onclick="overpass.tracking.link({  goods_no:'2109015848', vir_vend_no:'VV17002724', sale_shop_divi_cd:'', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_form_cd:'100', conts_form_dtl_cd:'10010', conts_dist_no:'', conts_divi_cd:'', rel_no:'2109015848', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:''});" >
									<span class="tit">더반찬& 돼지고추장불고기 (4개)</span>
									<span class="prc">
										<span>
											<em class="on"><b class="ir">가격할인</b><b>15,600</b>원</em>
										</span>
									</span>
									<span class="pnt"></span>
									<span class="img"><div class="deli_type_tag"></div><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/240/590/210913000027590.jpg" width="235" height="235" alt="더반찬& 돼지고추장불고기 (4개)" onerror="this.src='/common/images/common/noimg_240.jpg'"/></span>
								</a>
								<button type="button" class="bt_crt" onclick="overpass.goods.addCart({  goods_no:'2109015848', vir_vend_no:'VV17002724', sale_shop_divi_cd:'', sale_shop_no:'', sale_area_no:'', tr_yn:'', conts_dist_no:'', conts_divi_cd:'', rel_no:'2109015848', rel_divi_cd:'10', openwinyn:'', disp_ctg_no:'', goods_cmps_divi_cd:'20', obj : this});"><b class="ir">장바구니에 담기</b></button></li>
						</ul>
					</div>
				</div>
		
				<!-- TAB3 -->
					<div class="gds_cont" id="gds_cont3">
					<div class="gd_tabs">
						<ul>
							<li><a href="#gds_cont1">제품정보</a></li>
							<li><a href="#gds_cont2">제품정보고시</a></li>
							<li class="on"><a href="#gds_cont3">고객후기 <em>(4,965)</em><em class="ir">선택</em></a></li>
							<li><a href="#gds_cont4">주의사항</a></li>
						</ul>
					</div>
					<div class="gd_scr">
						<dl>
							<dt>사용자 총 평점<em>(총 <b>4,965</b>개 고객후기 기준)</em></dt>
							<dd>
								<span class="star_rate04"><b class="ir">평점</b><em style="width:90%;">4.6</em></span>
								<span class="scr"><b>4.6</b>/5<em>점</em></span>
							</dd>
						</dl>
					</div>
					<div class="gd_rv" id="goodsEvalDiv">
						<div class="g_sort">
							<h3>고객후기</h3>
						<div class="group">
							<ul>
								<li name="evalTab" data-value=""><a href="javascript:void(0);" id="rtabs0" class="on" onclick="fnTab(3, 'rtabs', 0, '');return false;">전체 (4,965)</a></li>
								<li name="evalTab" data-value="best"><a href="javascript:void(0);" id="rtabs1" class="off" onclick="fnTab(3, 'rtabs', 1, '');return false;">BEST (16)</a></li>
								<li name="evalTab" data-value="best"><a href="javascript:void(0);" id="rtabs1" class="off" onclick="fnTab(3, 'rtabs', 1, '');return false;">BEST (16)</a></li>
							</ul>
						</div>
						<div class="sort">
								<select title="상품후기 정렬 선택" id="sch_gb">
									<option value="best">BEST</option> 
									<option value="recomm">도움 많은순</option>
									<option value="recent" selected="selected">최근 등록순</option>
									<option value="high_score">평점 높은순</option>
								</select>
								<span class="button">
									<button type="button" title="고객후기작성 열기" onclick="overpass.mypage.goReviewList();">고객후기 작성</button>
								</span>
							</div>
						<input type="hidden" id="eval_goods_no" name="eval_goods_no" value="2106015489">	
						</div>
<<<<<<< HEAD
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
					<li class="on"><a href="#gds_cont3">고객후기 <em>(4,965)</em><em class="ir">선택</em></a></li>
					<li><a href="#gds_cont4">주의사항</a></li>
				</ul>
			</div>
			<div class="gd_scr">
				<dl>
					<dt>사용자 총 평점<em>(총 <b>4,965</b>개 고객후기 기준)</em></dt>
					<dd>
						<span class="star_rate04"><b class="ir">평점</b><em style="width:50%;">4.6</em></span>
						<span class="scr"><b>4.6</b>/5<em>점</em></span>
					</dd>
				</dl>
			</div>
			<div class="gd_rv" id="goodsEvalDiv">
				<div class="g_sort">
					<h3>고객후기</h3>
				<div class="group">
					<ul>
						<li name="evalTab" data-value=""><a href="javascript:void(0);" id="rtabs0" class="on" onclick="fnTab(3, 'rtabs', 0, '');return false;">전체 (4,965)</a></li>
						<li name="evalTab" data-value="best"><a href="javascript:void(0);" id="rtabs1" class="off" onclick="fnTab(3, 'rtabs', 1, '');return false;">BEST (16)</a></li>
						<li name="evalTab" data-value="best"><a href="javascript:void(0);" id="rtabs1" class="off" onclick="fnTab(3, 'rtabs', 1, '');return false;">BEST (16)</a></li>
					</ul>
				
				
				</div>
				<div class="sort">
						<select title="상품후기 정렬 선택" id="sch_gb">
							<option value="best">BEST</option> 
							<option value="recomm">도움 많은순</option>
							<option value="recent" selected="selected">최근 등록순</option>
							<option value="high_score">평점 높은순</option>
						</select>
						<span class="button">
							<button type="button" title="고객후기작성 열기" onclick="overpass.mypage.goReviewList();">고객후기 작성</button>
						</span>
					</div>
				<input type="hidden" id="eval_goods_no" name="eval_goods_no" value="2106015489">	
				</div>
				<div id="evalListBodydiv">

				<!-- REVIEW LIST -->
				<div class="g_rv_lst">
					<h4 class="ir">고객후기 목록</h4>
					<ul>

						<li class="photo">
							<dl>
								<dt>
									<span class="pho"><img src="//www.thebanchan.co.kr/fo/images/gds/ico_picture.png" width="18" height="14" alt="포토고객후기"></span>

									<span class="star_rate05"><b class="ir">평점</b><em style="width:100.0%;">4</em></span>


									<span class="user">글쓴이</span>
									<span class="date">글작성날짜</span>
								</dt>
								<dd class="off">
									<div class="rcmt">
										내용
									</div>

									<div class="rimg">
									
										<img src="//cdn.thebanchan.co.kr/upload/C00001/mypage/review/400/94/202110101074694_00001.jpg" alt="Resized_20211007_174853(1).jpg">

									</div>

								</dd>
							</dl>
						</li>
						<li class="photo">
							<dl>
								<dt>
									<span class="pho"><img src="//www.thebanchan.co.kr/fo/images/gds/ico_picture.png" width="18" height="14" alt="포토고객후기"></span>

									<span class="star_rate05"><b class="ir">평점</b><em style="width:100.0%;">4</em></span>


									<span class="user">글쓴이</span>
									<span class="date">글작성날짜</span>
								</dt>
								<dd class="off">
									<div class="rcmt">
										내용
									</div>

									<div class="rimg">
									
										<img src="//cdn.thebanchan.co.kr/upload/C00001/mypage/review/400/34/202110091074434_00001.jpg" alt="Resized_20211007_174853(1).jpg">

									</div>

								</dd>
							</dl>
						</li>

						<li>
							<dl>
								<dt>

									<span class="star_rate05"><b class="ir">평점</b><em style="width:100.0%;">4</em></span>


									<span class="user">글쓴이</span>
									<span class="date">작성일</span>
								</dt>
								<dd class="off">
									<div class="rcmt">
										내용
									</div>
								</dd>
							</dl>
						</li>

					</ul>
				</div>	

				<!-- PAGING -->
				<div class="paging" id="page_nav">
					<span class="page">
					<a href="javascript:void(0);" class="select_num" data-current="true" data-value="1" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">1<span class="ir">현재페이지</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="2" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">2<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="3" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">3<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="4" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">4<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="5" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">5<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="6" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">6<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="7" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">7<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="8" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">8<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="9" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">9<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="10" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">10<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="next" data-current="" data-value="11" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331"><span class="ir">다음 목록으로 이동</span></a><a href="javascript:void(0);" class="end" data-current="" data-value="497" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331"><span class="ir">끝 목록으로 이동</span></a>
					</span>
				</div>
				<!-- //PAGING -->
				<!-- //REVIEW LIST -->
				</div>
				
				
				
				
			</div>
		</div>
		<!-- //TAB3 -->
		<script type="text/javascript">
		$(document).ready(function(){
			var param = {
					goods_no: "2106015489",
					vir_vend_no : "VV17002724",
					goods_type_dtl_cd : "2012",
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
=======
						<div id="evalListBodydiv">
>>>>>>> branch 'master' of https://github.com/ITWILL1TEAM/Banchan.git
		
						<!-- REVIEW LIST -->
						<div class="g_rv_lst">
							<h4 class="ir">고객후기 목록</h4>
							<ul>
								<li class="photo">
									<dl>
										<dt>
											<span class="pho"><img src="//www.thebanchan.co.kr/fo/images/gds/ico_picture.png" width="18" height="14" alt="포토고객후기"></span>
											<span class="star_rate05"><b class="ir">평점</b><em style="width:100.0%;">4</em></span>
											<span class="user">글쓴이</span>
											<span class="date">글작성날짜</span>
										</dt>
										<dd class="off">
											<div class="rcmt">
												내용
											</div>
											<div class="rimg">
												<img src="//cdn.thebanchan.co.kr/upload/C00001/mypage/review/400/94/202110101074694_00001.jpg" alt="Resized_20211007_174853(1).jpg">
											</div>
										</dd>
									</dl>
								</li>
								<li class="photo">
									<dl>
										<dt>
											<span class="pho"><img src="//www.thebanchan.co.kr/fo/images/gds/ico_picture.png" width="18" height="14" alt="포토고객후기"></span>
											<span class="star_rate05"><b class="ir">평점</b><em style="width:100.0%;">4</em></span>
											<span class="user">글쓴이</span>
											<span class="date">글작성날짜</span>
										</dt>
										<dd class="off">
											<div class="rcmt">
												내용
											</div>
											<div class="rimg">
												<img src="//cdn.thebanchan.co.kr/upload/C00001/mypage/review/400/34/202110091074434_00001.jpg" alt="Resized_20211007_174853(1).jpg">
											</div>
										</dd>
									</dl>
								</li>
		
								<li>
									<dl>
										<dt>
											<span class="star_rate05"><b class="ir">평점</b><em style="width:100.0%;">4</em></span>
											<span class="user">글쓴이</span>
											<span class="date">작성일</span>
										</dt>
										<dd class="off">
											<div class="rcmt">
												내용
											</div>
										</dd>
									</dl>
								</li>
							</ul>
						</div>	
						<!-- PAGING -->
						<div class="paging" id="page_nav">
							<span class="page">
							<a href="javascript:void(0);" class="select_num" data-current="true" data-value="1" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">1
									<span class="ir">현재페이지</span>
								</a>
								<a href="javascript:void(0);" class="num" data-current="false" data-value="2" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">2
									<span class="ir">페이지로 이동</span>
								</a>
								<a href="javascript:void(0);" class="num" data-current="false" data-value="3" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">3
									<span class="ir">페이지로 이동</span>
								</a>
								<a href="javascript:void(0);" class="num" data-current="false" data-value="4" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">4
									<span class="ir">페이지로 이동</span>
								</a>
								<a href="javascript:void(0);" class="num" data-current="false" data-value="5" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">5
									<span class="ir">페이지로 이동</span>
								</a>
								<a href="javascript:void(0);" class="num" data-current="false" data-value="6" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">6
									<span class="ir">페이지로 이동</span>
								</a>
								<a href="javascript:void(0);" class="num" data-current="false" data-value="7" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">7
									<span class="ir">페이지로 이동</span>
								</a>
								<a href="javascript:void(0);" class="num" data-current="false" data-value="8" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">8
									<span class="ir">페이지로 이동</span>
								</a>
								<a href="javascript:void(0);" class="num" data-current="false" data-value="9" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">9
									<span class="ir">페이지로 이동</span>
								</a>
								<a href="javascript:void(0);" class="num" data-current="false" data-value="10" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">10
									<span class="ir">페이지로 이동</span>
								</a>
								<a href="javascript:void(0);" class="next" data-current="" data-value="11" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">
									<span class="ir">다음 목록으로 이동</span>
								</a>
								<a href="javascript:void(0);" class="end" data-current="" data-value="497" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">
									<span class="ir">끝 목록으로 이동</span>
								</a>
							</span>
						</div>
						<!-- //PAGING -->
						<!-- //REVIEW LIST -->
						</div>
					</div>
				</div>
				<!-- //TAB3 -->
		
				<!-- TAB4 -->
				<div class="gds_cont" id="gds_cont4">
					<div class="gd_tabs">
						<ul>
							<li><a href="#gds_cont1">제품정보</a></li>
							<li><a href="#gds_cont2">제품정보고시</a></li>
							<li><a href="#gds_cont3">고객후기 <em>(2,145)</em></a></li>
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
	</form>

	<!-- MAIN_NOTICE_LAYER -->
	<div class="main_ntc_lyr" id="main_ntc_lyr">
	</div>
	<!--// MAIN_NOTICE_LAYER -->

	<!-- 아래는 추천 제품과 관련되어 있으므로 삭제 금지 -->
	<script type="text/javascript" src="//www.thebanchan.co.kr/fo/js/ui.js?v=20211010210"></script>
	<script type="text/javascript">
		var top_banner_cookie_id = "TopBanner_10_200800000010574";
		var top_banner_cookie_yn = overpass.util.getCookie(top_banner_cookie_id);
		var top_banner_login_yn = false;
		
		//if("Y" != top_banner_cookie_yn){
		$(document).ready(function(){
			//if(!top_banner_login_yn){
			
			$('.banner-area').html('<a href="javascript:void(0);" class="banner"  style="background-image:url(&#39;//cdn.thebanchan.co.kr/upload/C00001/dspl/banner/90/432/200800000012432.jpg?v=20200805175837&#39;);"></a><div class="inner-box" ><div style="height: 100%; width: 97%;"  onclick="overpass.tracking.link({ openwinyn:&#39;N&#39;, tr_yn:&#39;Y&#39;, banner_kind_cd:&#39;90&#39;, conts_form_cd:&#39;130&#39;, conts_form_dtl_cd:&#39;13010&#39;, conts_divi_cd:&#39;&#39;, conts_dist_no:&#39;&#39;, sale_area_no:&#39;D1705000714&#39;, rel_divi_cd:&#39;20&#39;, rel_no:&#39;200800000010574&#39;, move_cont_no:&#39;&#39;, url:&#39;/shop/initPlanShop.action?disp_ctg_no=1907004700&#39;, param:&#39;&#39;});" ></div><a href="javascript:void(0);" class="btn-banner-close"><i class="ico-close" data-banner_no="200800000010574" onclick="hideLayerCookie(&#39;top_lineBn&#39;);return false"></i>배너닫기</a></div>');
			//}
		});
		
		hideLayerCookie = function(id){
			overpass.util.setCookie({ name: top_banner_cookie_id, value: "Y", age : 1, domain : overpass.global.cookie_domain});
			//hideLayer('top_lineBn');
			$(".banner-area").hide();
			//배너가 사라진 만큼 BODY를 올려준다. 
			var topPx = $("#content").css('padding-top').replace(/[^0-9]/g, "");
			$("#content").css('padding-top', Number(topPx)-80 + 'px');
		}
		//}
	</script>
</body>
</html>
