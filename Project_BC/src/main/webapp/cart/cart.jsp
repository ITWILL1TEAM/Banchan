<%@page import="vo.BasketBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	ArrayList<BasketBean> cartList = (ArrayList<BasketBean>)request.getAttribute("cartList");
	
	
%>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>장바구니</title>
<link href="CSS/common.css" rel="stylesheet" type="text/css">
<link href="CSS/pc-main-common.css" rel="stylesheet" type="text/css">
<link href="CSS/sub.css" rel="stylesheet" type="text/css">
<link href="CSS/font.css" rel="stylesheet" type="text/css">
<link href="CSS/ord.css" rel="stylesheet" type="text/css">
<script src="js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
		$("#crt_all").click(function() {
			if($("#crt_all").is(":checked")) {
				$("input[name=cart_checkbox]").prop("checked", true);
			} else {
				$("input[name=cart_checkbox]").prop("checked", false);
			}
		});
		
		// 장바구니 ArrayList를 만들고 
		// for문 사용하기 or JSTL c태그 사용하기
		$("button[name=change_qty_button]").click(function() {	
			var role = $('input[name=qty_button]:focus').attr('data-role');
			var cart_seq = $('input[name=qty_button]:focus').attr("data-cart-seq");
			var qty = $('input[name=qty_button]:focus').eq(cart_seq).attr('value');
			
			alert(qty);
			
// 			if (role == "-" && qty > 1) {
// 				input.val(qty - 1);
// 			} else if (role == "+" && qty < 999) {
// 				input.val(qty + 1);
// 			};
		});
		
	});
</script>
</head>
<body>
    <%@include file="../inc/top.jsp" %>

	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/odr.css?t=20200406000000" type="text/css">
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
					<%for (int i = 0; i < cartList.size(); i++) { %>
						<tr>
							<td class="chck">
								<input type="checkbox" id="crt_4" name="cart_checkbox" checked="checked"  />
								<label for="crt_4"><%=cartList.get(i).getProduct_name() %></label>								
							</td>
							<td class="info">
								<div class="img">
									<a href="Product.do" name="go_detail_button" data-cart-seq="4" ><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/100/764/200721000025764.jpg" width="100" height="100" alt="양장피" onerror="this.src='/common/images/common/noimg_100.jpg'"/>
										<span class="ir"><%=cartList.get(i).getProduct_name() %></span>
									</a>
								</div>
								<div class="txt">
								<span class="name">[<%=cartList.get(i).getSname() %>] <%=cartList.get(i).getProduct_name() %></span>
									<span class="opt"></span>
                                    <div class="deli_type_tag"></div>
								</div>
							</td><td class="prc_ori"><span class="om"><em class="thm"><%=cartList.get(i).getProduct_price() %></em>원</span>
							</td>
							<td class="qty_set">
								<div class="qty">
									<input name="cart_qty" class="input" id="qty_4" data-cart-seq="4" type="text" maxlength="3" value="<%=cartList.get(i).getProduct_qty() %>" title="옵션수량입력" readonly="readonly">
									<button class="minus" name="change_qty_button" data-role="-" data-cart-seq="4" type="button" title="수량감소">수량감소</button>
									<button class="plus" name="change_qty_button" data-role="+" data-cart-seq="4" type="button" title="수량증가">수량증가</button>
								</div>
								<button class="qty_edit" type="button" name="save_qty_button" data-cart-seq="4" title="수량수정">수정</button>
							</td>
							<td class="prc_dl"><span class="thm"><%=cartList.get(i).getProduct_price() * cartList.get(i).getProduct_qty()%></span><em>원</em></td><td class="func_btn"><div class="del_bx">
									<button class="del" type="button" title="제품삭제하기" name="delete_button" data-cart-seq="4"  data-role="cart" >삭제</button>
								</div>
							</td>
						</tr>
					<%} %>
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
		<button class="add_btn"><em>배송비 절약제품 추가</em></button>
		
		<jsp:include page="../inc/bottom.jsp"/>
	</div>
</body>
</html>
