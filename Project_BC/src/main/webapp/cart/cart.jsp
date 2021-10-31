<%@page import="vo.BasketBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<%
	ArrayList<BasketBean> cartList = (ArrayList<BasketBean>)request.getAttribute("cartList");
	int total_amt = (int)request.getAttribute("total_amt");
	int listCount = cartList.size();
	
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
		
		if(<%=listCount %> == 0) {
			$('#crt_all').hide();
			$('#crt_all_text').hide();
			$('.del').hide();
		}
		
		$("#crt_all").click(function() {
			if($("#crt_all").is(":checked")) {
				$("input[name=cart_checkbox]").prop("checked", true);
				
			} else {
				$("input[name=cart_checkbox]").prop("checked", false);
			}
		});
			
		$("input[name=cart_checkbox]").click(function(){
			$("#crt_all").prop("checked", false);
		});
		
	});
	
	// 상품 수량 증가
	function qtyUp(id) {
		// 수량 증가 버튼의 id인 btn-upi의 up을 num으로 치환해 수량이 표시되는 텍스트박스의 id(btn-numi)로 바뀜
		var numid = id.replace("up", "num");
		var result = parseInt(numid)+1
		var qty = Number($('#'+numid).val());
		qty += 1;
		
		$('#'+numid).val(qty);
	};
	
	// 상품 수량 감소
	function qtyDown(id) {
		var numid = id.replace("down", "num");
		
		var qty = Number($('#'+numid).val());
		if(qty > 1) {
			qty -= 1;
			$('#'+numid).val(qty);
		}
	};
	
	// 수량 변경
	function qtyUpdate(product_num, id){
		
		var numid = id.replace("Save", "num");
		var qty = Number($('#'+numid).val());
		
		location.href='CartUpdate.ca?product_num=' + product_num + '&qty=' + qty;
	
	};
	
	function deleteAction() {
		var checkRow = "";
		$('.checkRow:checked').each(function() {
			checkRow = checkRow + $(this).val() + ",";
		});
		
// 		checkRow = checkRow.substring(0, checkRow.lastIndexOf(",")); // 맨끝 콤마 지우기
		
		if(checkRow == "") {
			alert('삭제할 제품을 산택해주세요.');
			return false;
		}
		
		if(confirm("선택한 제품을 삭제하시겠습니까?")) {
			location.href = "CartDel.ca?chbox=" + checkRow;
			
		}
	}
	
</script>
</head>
<body>
    <%@include file="../inc/top.jsp" %>

	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/odr.css?t=20200406000000" type="text/css">
	<form action="CartDel.ca" method="post" name="cartForm">
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
						<%for (int i = 0; i < cartList.size(); i++) { 
							if(cartList.size() > 0) { %>
								<tr>
									<!-- 체크박스 -->
									<td class="chck">
										<input type="checkbox" id="crt_<%=i %>" name="cart_checkbox" class="checkRow" checked="checked" data-cart-seq="<%=cartList.get(i).getProduct_num() %>" value="<%=cartList.get(i).getProduct_num() %>"/>
										<label for="crt_<%=i%>"><%=cartList.get(i).getProduct_name() %></label>								
									</td>
									<!-- 사진 -->
									<td class="info">
										<div class="img">
											<a href="Product.do?product_num=<%=cartList.get(i).getProduct_num() %>" name="go_detail_button" data-cart-seq="4" ><img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/100/764/200721000025764.jpg" width="100" height="100" alt="양장피" onerror="this.src='/common/images/common/noimg_100.jpg'"/>
												<span class="ir"><%=cartList.get(i).getProduct_name() %></span>
											</a>
										</div>
										<!-- 판매자명과 상품명 -->
										<div class="txt">
										<span class="name">[<%=cartList.get(i).getSname() %>] <%=cartList.get(i).getProduct_name() %></span>
											<span class="opt"></span>
		                                    <div class="deli_type_tag"></div>
										</div>
									</td>
									<!-- 제품가격 -->
									<td class="prc_ori">
										<span class="om"><em class="thm"><fmt:formatNumber value="<%=cartList.get(i).getProduct_price() %>" pattern="#,###"/></em>원</span>
									</td>
									<!-- 수량 조절 -->
									<td class="qty_set">
										<div class="qty">
											<input name="cart_qty" class="input txt-spin" id="btn-num<%=i%>" value="<%=cartList.get(i).getProduct_qty() %>" title="옵션수량입력" readonly="readonly">
											<button class="minus" name="change_qty_button" id="btn-down<%=i %>" data-role="-" type="button" title="수량감소" onclick="qtyDown(this.id)">수량감소</button>
											<button class="plus" name="change_qty_button" id="btn-up<%=i %>" data-role="+" type="button" title="수량증가" onclick="qtyUp(this.id)">수량증가</button>
										</div>
										<button class="qty_edit" type="button" name="save_qty_button" id="btn-Save<%=i %>" onclick="qtyUpdate(<%=cartList.get(i).getProduct_num()%>, this.id)" title="수량수정">수정</button>
									</td>
									<!-- 총 구매 금액 -->
									<td class="prc_dl">
										<span class="thm"><fmt:formatNumber value="<%=cartList.get(i).getProduct_price() * cartList.get(i).getProduct_qty()%>" pattern="#,###"/></span><em>원</em>
									</td>
									<!-- 삭제버튼 -->
									<td class="func_btn">
										<div class="del_bx">
											<button class="del" type="button" title="제품삭제하기" name="delete_button" data-role="cart" onclick="location.href='CartDel.ca?chk=<%=cartList.get(i).getProduct_num() %>'">삭제</button>
										</div>
									</td>
								</tr>
						<%	} else { %>
								<tr>
									<td colspan="6" class="no_prd">장바구니에 담긴 제품이 없습니다.</td>
								</tr>				
						<%	}
						}
						%>
						</tbody>
					</table>
					<div class="odr_slt_btn">
						<span><input type="checkbox" id="crt_all" style="margin-right:10px;" name="cart_all_checkbox" checked="checked" />
									<label for="crt_all" id="crt_all_text">전체 선택</label></span>
						<button type="button" class="w_del" title="품절/매진제품 전체 삭제" name="delete_button" data-role="sellout" style="display: none;"><em>품절 삭제</em></button>
						<button type="submit" class="del" title="선택한 항목 삭제하기" name="delete_button" data-role="checked" onclick="deleteAction()"><em>선택 삭제</em></button>
					</div>
					<div class="cart_info">
	<!-- 					주문 마감은 <em>오후9시</em>입니다.
						<br />
						<span>주문취소는 주문마감 이전만 가능하며 부분취소는 불가능하며 주문마감시간 이후 추가주문은 불가능 합니다.</span> -->
						<span>희망 배송일 전일 제품 준비 중 단계로 변경 시 취소가 어려운 점 양해 부탁드려요.</span>
					</div><div class="odr_total type1">
						<dl class="prd_sum">
							<dt>제품금액</dt>
							<dd><span class="thm" id="total_sale_price"><fmt:formatNumber value="<%=total_amt%>" pattern="#,###"/></span><em>원</em></dd>
						</dl>
						<dl class="dis_sum">
							<dt><span class="icon minus">빼기</span>예정 할인금액</dt>
							<dd><span class="thm" id="total_dc_amt">0</span><em>원</em></dd>
						</dl>
						<dl class="cart_sum">
							<dt><span class="icon equal">계산결과</span>주문 합계금액</dt>
							<dd>
								<span class="thm" id="total_price"><fmt:formatNumber value="<%=total_amt%>" pattern="#,###"/></span><em>원</em>
								<span class="deposit" style="display:none">(예정적립금 <span class="thm" id="total_save_amt">0</span>원)</span>
							</dd>
						</dl>
					<button class="sel_date" id="set_order_date_button"  formaction="OrderSheet.or"><em>선택제품 주문</em></button>	
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
		</form>
		
		<jsp:include page="../inc/bottom.jsp"/>
	</div>
</body>
</html>
