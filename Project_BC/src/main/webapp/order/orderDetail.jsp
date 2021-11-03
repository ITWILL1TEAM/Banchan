<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>상세 주문 내역 | theBanchan</title>
	<link rel="shortcut icon" href="//www.thebanchan.co.kr/fo/images/common/favicon.ico?v=2" type="image/x-icon">
	<link rel="icon" href="//www.thebanchan.co.kr/fo/images/common/favicon.ico?v=2" type="image/x-icon">
	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/common.css?v=20211026000" type="text/css">	
	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/pc-main-common.css?v=20211026000" type="text/css">
	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/sub.css?v=20211026000" type="text/css">
	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/asset/css/font.css?v=20211026000" type="text/css">
	
<!--// HEADER -->
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/mys.css?t=20200406000000" type="text/css">

		<!-- SUB CONTENT -->
		<div id="mys_content" class="sub_cont">
			<h3 class="tit">상세 주문 내역</h3>
			<div class="mys_odr">
				<dl>
					<dt>주문번호 :</dt>
					<dd><em>20211026-5263427</em></dd>
					<dt>주문일 :</dt>
					<dd>2021-10-26</dd>
				</dl>
				
				<span class="btn"><button type="button" id="addCartBtn" title="장바구니 담기 알림"><em>장바구니 다시담기</em></button></span>
				
			</div>

			
			<!-- MY LIST -->	
			<div class="mys_tbl">
				<div class="tbl line">
					<table>
						<caption>상세 주문 내역 | 제품정보,수량,합계금액,진행상태,희망배송일,확인의 정보를 제공하는 표</caption>
						<colgroup>
							<col style="width:100px" />
							<col style="width:auto" />
							<col style="width:105px" />
							<col style="width:105px" />
							<col style="width:105px" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col" colspan="2">제품명</th>
								<th scope="col">진행상태</th>
								<th scope="col">주문일자</th>
								<th scope="col">확인</th>
							</tr>
						</thead>
						<tbody>
							
							<tr>
								<td class="vert2">
									
									<a href="">
										<span class="img">
										<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/100/392/201123000026392.jpg" width="80" height="80" alt="" onerror="this.src='/common/images/common/noimg_100.jpg'"/>
										</span>
									</a>
									
								</td>
								<td class="none">	
									
									<a href="">
									
										<span class="set"><b>[비비드키친]</b> [비비드키친] 닭갈비(500g)</span>
										
									</a>
									
									
										<span class="cnt"><b class="qt">1</b>개 / <b class="pr">9,900</b>원 </span>
									
								</td>
								
								<td rowspan="6">
									
									<span class="tx">
										입금확인중
									</span>
									
								</td>
								<td rowspan="6">
									<span class="date">
										2021-11-06
									
									</span>
								</td>
								
								<td rowspan="6">
								
									<span class="btn">
										
										<button type="button" class="qd" id="cnclBtn" onclick="fnOrdAllCncl({ord_no: '202110265263427'});" title="주문 즉시 취소 알림">즉시취소</button>
										
									</span>
								
								</td>
								
								
							</tr>
							
						</tbody>
					</table>
				</div>
			</div>
			<!-- //MY LIST -->
			

			<!-- ORDER INFO. -->
			<div class="odr_cplPrc">
				<h3>결제정보</h3>

				
				<div class="total">
					<table>
						<caption>결제정보 금액 | 총 제품금액 , 쿠폰/할인 금액, 배송비, 최종 결제금액을 제공하는 표</caption>
						
						<colgroup>
							<col style="width:25%;" />
							<col style="width:25%;" />
							<col style="width:25%;" />
							<col style="width:25%;" />
						</colgroup>
						
						<thead>
							<th>
								<strong>주문 합계 금액</strong>
								<span><b>31,440</b>원</span>
								<span class="pls"><em class="ir">+(더하기)</em></span>
							</th>
							<th>
								<strong>배송비</strong>
								<span>
									
									무료
									
								</span>
								<span class="mis"><em class="ir">-(빼기)</em></span>
							</th>
							<th>
								<strong>쿠폰/할인 금액</strong>
								<span><b>0</b>원</span>
								
								<span class="eql"><em class="ir">=(합계)</em></span>
								
							</th>
							
							<th>
								<strong>최종 결제금액</strong>
								<span class="prc"><b>31,440</b>원</span>
							</th>
						</thead>
						<tbody>
							<tr>
								<td>
								</td>
								<td>
									
									<em>
										
											30,000원 이상 구매 시 무료
										
									</em>
									
								</td>
								<td>
									
								</td>
								
								<td>
									
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				
				<div class="msd">
					<table>
						<caption>무통장 결제수단 , 입금하실 금액, 입금계좌/마감일 정보를 제공하는 표</caption>
						<colgroup>
							<col style="width:170px;" />
							<col style="width:auto" />
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">결제수단</th>
								<td>무통장입금</td>
							</tr>
							<tr>
								<th scope="row">입금하실 금액</th>
								<td><em>31,440원</em></td>
							</tr>
							<tr>
								<th scope="row">입금계좌/마감일</th>
								
								<td><em>농협은행 79018613743185 (예금주 : 동원디어푸드 주식회사)</em> / 2021-11-05일 까지 입금해주시기 바랍니다. </td>
							</tr>
						</tbody>
					</table>
				</div>
				
			</div>
			<!--//ORDER INFO. -->
			
			
			<div class="mys_tbl2">
				<h4>배송 정보</h4>
				<div class="tbl">
					<table>
						<caption>배송 정보 | 희망배송일,배송 받으실 분,휴대전화,주소,공동출입문 비밀번호,주변 장소 정보 혹은 특이 요청사항의 정보를 제공하는 표</caption>
						<colgroup>
							<col style="width:170px"/>
							<col style="width:auto"/>
						</colgroup>
						<tbody>
						    
							
							
							<tr>
								<th scope="row">배송 받으실 분</th>
								<td><span class="tx">님</span></td>
							</tr>
							<tr>
								<th scope="row">휴대전화</th>
								<td><span class="tx">
									
									010
									
								</span></td>
							</tr>
							<tr>
								<th scope="row">주소</th>
								<td><span class="tx">115-502</span></td>
							</tr>
							
							<tr>
								<th scope="row">주변 장소 정보 혹은<br/>특이 요청사항 (50자)</th>
								<td><span class="tx"></span></td>
							</tr>
							
						</tbody>
					</table>
				</div>
			</div>
			
			
			<!--  BUTTON -->
			<div class="mys_btn">
				
				<button type="button" onclick="javascript:history.back();" class="bx">이전페이지로 이동</button>
				
			</div>
			<!-- //BUTTON -->

			<!-- MY NOTICE -->
			<div class="mys_notice">
				<h4>주문/배송 <b>TIP</b></h4>
				<ul>
					<li>제품을 배송 받으신 후 수취확인을 하지 않은 경우에는 배송이 완료된 일로부터 7일 경과 후, 8일째 자동으로 수취확인 됩니다.</li>
					<li>신용카드로 결제하신 경우 카드 전표가 자동 발급되므로 조회 버튼을 클릭하시면 되고 현금 영수증은 국세청 홈페이지에서 확인하실 수 있습니다.</li>
					<li>자진 발급된 현금영수증을 소득공제나 지출증빙용으로 변경하시려면 국세청 현금영수증 사이트에서 변경하시거나 국세청 현금영수증 상담센터(1544-2020)로 문의하시기 바랍니다.</li>
					<li>카드영수증과 현금영수증의 발급시점은 결제완료 시점입니다. 기타 자세한 문의사항은 고객센터 (1644-6844) 로 연락 주시기 바랍니다.</li> 
				</ul>
			</div>
			<!-- //MY NOTICE -->
		</div>
		<!-- //SUB CONTENT -->



</body>
</html>