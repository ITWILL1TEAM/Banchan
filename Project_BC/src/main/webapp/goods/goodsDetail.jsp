<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집밥장인이 만든 온라인 식품몰 더반찬&</title>
<link href="${pageContext.request.contextPath}/CSS/default.css" rel="stylesheet">
</head>
<body>
	<div id="wrap">
		<!-- header -->
		<header>
			<jsp:include page="../inc/top.jsp" />
		</header>
		<hr>
		<!-- 컨텐츠 -->
		<section id="content">
			<div id="img1">
				<img alt="" src="/img/food.jpg">
			</div>
			<form action="order.do" method="post">
				<div id="detail">
					<table>
						<tr>
							<td colspan="2">더반찬<br>오이소박이(800g)<hr></td>
						</tr>
						<tr>
							<td>판매가</td><td><h2>9,600원</h2></td>
						</tr>
						<tr>
							<td>100g당 단가</td><td>1,200원</td>
						</tr>
						<tr>
							<td>중량</td><td>800g</td>
						</tr>
						<tr>
							<td>유통기한</td><td>제조일로부터 냉장 20일</td>
						</tr>
						<tr>
							<td>배송안내</td>
							<td>새벽배송 서울/인천/경기권 (일부지역 제외)<br> 
								10월 04일(월)부터 도착 가능<br>
								일반택배 전국 (제주/도서산간 제외)<br> 
								10월 05일(화)부터 도착 가능
							</td>
						</tr>
						<tr>
							<td>수량</td>
							<td><input type="button" value="-"> 
								<input type="text" value="1" id="count"> 
								<input type="button" value="+">
							</td>
						</tr>
					</table>
					<div id="btn">
						<input type="button" value="장바구니" id="btnCart" onclick="alert('선택한 제품이 장바구니에 담겼습니다.')">
						<input type="submit" value="바로구매" id="btnOrder">
					</div>
				</div>
			</form>
		</section>
		
		<div id="clear"></div>
		
		<div id="sub_menu">
			<ul>
				<li><a href="#desc">제품정보</a></li>
				<li><a>제품정보고시</a></li>
				<li><a>고객후기</a></li>
				<li><a>주의사항</a></li>
			</ul>
		</div>
		<section id="desc">
			<img alt="" src="../img/detail_description.jpg">
		</section>

		<!-- footer -->
		<footer>
			<jsp:include page="../inc/bottom.jsp" />
		</footer>
		
	</div>
</body>
</html>