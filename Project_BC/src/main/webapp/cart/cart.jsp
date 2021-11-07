<%@page import="vo.ProductImg"%>
<%@page import="vo.BasketBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	ArrayList<BasketBean> cartList = (ArrayList<BasketBean>)request.getAttribute("cartList");
	int total_amt = (int)request.getAttribute("total_amt");
	int discounted_amt = (int)request.getAttribute("discounted_amt");
	int listCount = cartList.size();
	
%>
<!DOCTYPE html>
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
		qty++;
		
		$('#'+numid).val(qty);
	};
	
	// 상품 수량 감소
	function qtyDown(id) {
		var numid = id.replace("down", "num");
		
		var qty = Number($('#'+numid).val());
		if(qty > 1) {
			qty--;
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
			checkRow += $(this).val() + "/";
		});
		
// 		var chbox = new Array();
		
// 		chbox = checkRow.split("/"); // 맨끝 콤마 지우기
		checkRow = checkRow.substring(0,checkRow.lastIndexOf( "/"));
		
		alert(checkRow);

		if(checkRow == '') {
			alert('삭제할 제품을 선택해주세요.');
			return false;
		}
		
// 		if(chbox.length == 0) {
// 			alert('삭제할 제품을 선택해주세요.');
// 			return false;
// 		}
		
		if(confirm("선택한 제품을 삭제하시겠습니까?")) {
			location.href = "CartDel.ca?chk=" + checkRow;
			
		}
	}
	
	
</script>
</head>
<body>
    <%@include file="../inc/top.jsp" %>

	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/odr.css?t=20200406000000" type="text/css">
	<form action="CheckAddress.ca" method="post" name="cartForm">
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
						<%if(listCount == 0) { %>
								<tr>
									<td colspan="6" class="no_prd">장바구니에 담긴 제품이 없습니다.</td>
								</tr>	
						<% } else {
							for (int i = 0; i < listCount; i++) {  %>
								<tr>
									<!-- 체크박스 -->
									<td class="chck">
										<input type="checkbox" id="crt_<%=i %>" name="cart_checkbox" class="checkRow" checked="checked" data-cart-seq="<%=cartList.get(i).getProduct_num() %>" value="<%=cartList.get(i).getProduct_num() %>"/>
										<label for="crt_<%=i%>"><%=cartList.get(i).getProduct_name() %></label>								
									</td>
									<!-- 사진 -->
									<td class="info">
										<div class="img">
											<a href="Product.do?product_num=<%=cartList.get(i).getProduct_num() %>" name="go_detail_button" data-cart-seq="4" >
												<img src="${pageContext.request.contextPath}/upload/<%=cartList.get(i).getProduct_img()%>.png" width="100" height="100" alt="양장피" onerror="this.src='/common/images/common/noimg_100.jpg'"/>
												<span class="ir"><%=cartList.get(i).getProduct_name() %></span>
											</a>
										</div>
										<!-- 상품명 -->
										<div class="txt">
										<span class="name"><%=cartList.get(i).getProduct_name() %></span>
											<span class="opt"></span>
		                                    <div class="deli_type_tag"></div>
										</div>
									</td>
									<!-- 제품가격 -->
									<td class="prc_ori">
									<!-- (Integer)article.getProduct_price() * (100 - article.getProduct_discount())/100; -->
										<span class="om"><em class="thm"><fmt:formatNumber value="<%=cartList.get(i).getProduct_price() * (100 - cartList.get(i).getProduct_discount())/100%>" pattern="#,###"/></em>원</span>
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
										<span class="thm"><fmt:formatNumber value="<%=(cartList.get(i).getProduct_price() * (100 - cartList.get(i).getProduct_discount())/100) * cartList.get(i).getProduct_qty()%>" pattern="#,###"/></span><em>원</em>
									</td>
									<!-- 삭제버튼 -->
									<td class="func_btn">
										<div class="del_bx">
											<button class="del" type="button" title="제품삭제하기" name="delete_button" data-role="cart" onclick="location.href='CartDel.ca?chk=<%=cartList.get(i).getProduct_num() %>'">삭제</button>
										</div>
									</td>
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
						<button type="button" class="del" title="선택한 항목 삭제하기" name="delete_button" data-role="checked" onclick="deleteAction()"><em>선택 삭제</em></button>
					</div>
					<div class="odr_total type1">
						<dl class="prd_sum">
							<dt>제품금액</dt>
							<dd><span class="thm" id="total_sale_price"><fmt:formatNumber value="<%=total_amt%>" pattern="#,###"/></span><em>원</em></dd>
						</dl>
						<dl class="dis_sum">
							<dt><span class="icon minus">빼기</span>예정 할인금액</dt>
							<dd><span class="thm" id="total_dc_amt"><fmt:formatNumber value="<%=total_amt - discounted_amt%>" pattern="#,###"/></span><em>원</em></dd>
						</dl>
						<dl class="cart_sum">
							<dt><span class="icon equal">계산결과</span>주문 합계금액</dt>
							<dd>
								<span class="thm" id="total_price"><fmt:formatNumber value="<%=discounted_amt%>" pattern="#,###"/></span><em>원</em>
								<input type="hidden" name="total_amt" value="<%=total_amt%>"/>
								<span class="deposit" style="display:none">(예정적립금 <span class="thm" id="total_save_amt">0</span>원)</span>
							</dd>
						</dl>
					<button class="sel_date" id="set_order_date_button" type="submit"><em>선택제품 주문</em></button>	
					</div><span class="odr_total_caution point">* 쿠폰 적용 후 최종 결제 금액에 30,000원인 경우 무료로 배송해드려요.</span>
					<span class="odr_total_caution">* 결제 금액은 쿠폰 및 적립금 사용, 배송지 추가 여부에 따라 달라질 수 있어요. 결제 화면에서 최종 금액을 확인해 주세요.</span>
					
					<div class="info_box01">
						<strong class="box_tit">참고해 주세요!</strong>
						<ul class="list_01">
							<li>장바구니 상품은 최대 1년 보관되며 담은 시점과 현재의 판매 가격이 달라질 수 있어요.</li>
							<li>결제 시 각종 할인 적용이 달라질 수 있어요.</li>
						</ul>
					</div>
				</div>
				<!-- //.odr_cart -->
			</div>
			<!--// WRAP -->
	
		</div>
		<!-- //CONTENT -->
		</form>
		
		<jsp:include page="../inc/bottom.jsp"/>
</body>
</html>
