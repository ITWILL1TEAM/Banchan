<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link href="../CSS/default.css" rel="stylesheet">
<link href="../CSS/cart.css" rel="stylesheet">
</head>
<body>
	<div id="wrap">	
		<!-- header -->
		<header>
			<jsp:include page="../inc/top.jsp" />
		</header>
		<hr>
		<div id="title">
			<img alt="" src="../img/cart.jpg" id="img_cart">
			장바구니
		</div>
		
		<div id="clear"></div>
		<table class="odr_tb1">
<!-- 			<caption>장바구니 | 제품전체선택, 제품정보, 판매금액, 수량, 구매금액, 선택으로 이루어진 장바구니</caption> -->
			<colgroup>
				<col style="width:50px">
				<col style="width:428px">
				<col style="width:100px">
				<col style="width:210px">
				<col style="width:83px">
				<col style="width:189px">
			</colgroup>
			<thead>
				<tr class="subject">
					<th class="col"></th>
					<th class="col">제품정보</th>
					<th class="col">판매금액</th>
					<th class="col">수량</th>
					<th class="col">구매금액</th>
					<th class="col"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="chck">
						<input type="checkbox" checked="checked">
					</td>
					<td>
						<div class="img">
							<img src="../img/food.jpg" width="100" height="100">
						</div>
						<div class="txt">
							 <span>[더반찬] 도라지오이무침(185g)</span>
						</div>
						<div id="clear"></div>
					</td>
					<td class="prc_ori">5,400원</td>
					<td class="qty_set">
						<div class="qty">
							<button type="button">-</button>
							<input class="input" type="text" value="1">
							<button class="plus" type="button">+</button>
						</div>
						<button class="qty_edit" type="button">수정</button>
					</td>
					<td class="prc_dl">5,400원</td>	
					<td>
						<button class="del" type="button">삭제</button>
					</td>
				</tr>
			</tbody>
		</table>
		
		<div id="clear"></div>
		<div class="order">
			<dl class="prd_sum">
				<dd>제품금액</dd>
				<dd>5,400원</dd>
			</dl>
			<dl class="dis_sum">
				<dt>예정 할인금액</dt>
				<dd>0원</dd>
			</dl>
			<dl class="cart_sum">
				<dt>주문 합계금액</dt>
				<dd>5,400원</dd>
			</dl>
			<button class="sel_date">선택제품 주문</button>			
		</div>
		<div id="clear"></div>
		<!-- footer -->
		<footer>
			<jsp:include page="../inc/bottom.jsp" />
		</footer>
		
	</div>
</body>
</html>