<%@page import="vo.MemberBean"%>
<%@page import="vo.CustomerBean"%>
<%@page import="vo.CustomerAddress"%>
<%@page import="vo.BasketBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ArrayList<BasketBean> cartList = (ArrayList<BasketBean>)request.getAttribute("cartList");
ArrayList<CustomerAddress> memberAddress = (ArrayList<CustomerAddress>)request.getAttribute("memberAddress");
ArrayList<CustomerBean> customerInfo = (ArrayList<CustomerBean>)request.getAttribute("customerInfo");
ArrayList<MemberBean> memberInfo = (ArrayList<MemberBean>)request.getAttribute("memberInfo");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">

<title>주문서</title>
	<link rel="shortcut icon" href="//www.thebanchan.co.kr/fo/images/common/favicon.ico?v=2" type="image/x-icon">
	<link rel="icon" href="//www.thebanchan.co.kr/fo/images/common/favicon.ico?v=2" type="image/x-icon">
	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/common.css?v=20211024180" type="text/css">	
	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/pc-main-common.css?v=20211024180" type="text/css">
	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/sub.css?v=20211024180" type="text/css">
	<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/asset/css/font.css?v=20211024180" type="text/css">
<script src="../js/jquery-3.6.0.js"></script>	
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">


function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postcode').value = data.zonecode;
            document.getElementById("address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("detailAddress").focus();
        }
    }).open();
}
//주소 찾기 위한 다음 우편번호검색 API 스크립트 끝

// 주소록 팝업을 위한 스크립트
function openAddrList(){
	
window.open("AddrBook.ad", "startpop", "top=0, left=0, width=820, height=500, scrollbars=no, resizable=no ,status=no ,toolbar=no");
// 	window.open("AddrBook.ad");

}
// 주소록 팝업 스크립트 끝

$(document).ready(function(){
	 
    // 라디오버튼 클릭시 이벤트 발생
    $("input:radio[name=place]").click(function(){
 
        if($("input[name=place]:checked").val() == "1"){
            $("input:text[name=buy_name]").attr("disabled",false);
            // radio 버튼의 value 값이 1이라면 활성화
 
        }else if($("input[name=place]:checked").val() == "0"){
              $("input:text[name=buy_name]").attr("disabled",true);
            // radio 버튼의 value 값이 0이라면 비활성화
        }
    });
});


</script>



</head>
<body>
<!-- ACCESSIBILITY -->
<form action="" method="post"  >

<div id="accessibility" class="accessibility">
	<dl>
		<dt class="ir"><strong>바로가기 메뉴</strong></dt>
		<dd><a href="#content">본문 바로가기</a></dd>
		<dd><a href="#header">메인메뉴 바로가기</a></dd>
		<dd><a href="#footer">하단메뉴 바로가기</a></dd>
	</dl>
</div>
<!-- //ACCESSIBILITY -->
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/odr.css?t=20200406000000" type="text/css">
<!-- CONTENT -->
<div id="content" class="content">

	<!-- WRAP -->
	<div class="wrap odr">
		<!-- wrap addClass -->
		<input type='hidden' name='loginId' 	id='loginId' 	value="iamyj95"/>
		<input type='hidden' name='loginNo' 	id='loginNo' 	value="0000184627"/>
		<input type='hidden' name='loginName' 	id='loginName' 	value="유여진"/>

		<h2 class="odr_ins_tit">주문서</h2>
		<div class="odr_top">
			<ol>
				<li><em>01</em> 장바구니</li>
				<li class="on"><em>02</em> 주문서</li>
				<li><em>03</em> 결제완료</li>
			</ol>
		</div>

		<!-- odr_ins_top -->
		<div class="odr_insTop">
			<dl class="ntx">
				<dt>
					더반찬& <%=memberInfo.get(0).getName() %>고객님<br />확인해 주세요!
				</dt>
				<dd>
					* 제조일로부터 냉장보관 3일인 제품의 경우, 희망배송일 전일 생산하며, 일부 제품(외부 상품, 냉동국/염장류 등)은 고객님의 주문량에 따라 미리 생산하고 있어요.
				</dd>
				<dd>
					* 주문후 희망배송일 전일 ＇제품준비중＇단계로 변경된이후로는 주문 변경 및 취소가 불가능한 점 양해부탁드려요.
				</dd>
				<dd>
					* 품절시 희망배송일 당일 품절된 상품에 한해 부분 취소될 수 있어요.
				</dd>
			</dl>
			
			<table class="odr_insTbl">
				<caption>주문 제품리스트 | 제품정보 , 혜택, 할인금액, 판매금액,수량, 결제금액을 제공하는 표</caption>
				<colgroup>
					<col />
					<col style="width: 260px;" />
					<col style="width: 110px;" />
					<col style="width: 110px;" />
					<col style="width: 80px;" />
					<col style="width: 110px;" />
				</colgroup>
				<thead>
					<tr>
						<th scope="col">제품정보</th>
						<th scope="col">할인금액</th>
						<th scope="col">판매금액</th>
						<th scope="col">수량</th>
						<th scope="col" colspan="2">결제금액</th>
					</tr>
				</thead>
				<tbody>
				<%
	for(int i = 0 ; i < cartList.size() ; i++){
		%>
					<tr>
					
						<td>
							<span class="tx"> 
								<strong><%=cartList.get(i).getProduct_name()%></strong>
									 <em name="save_amt_area"
								data-cart-seq="0" style="display: none;">예정적립금
									: <b name="save_amt_display"
									data-cart-seq="0"><%=cartList.get(i).getProduct_discount()%></b>원
							</em> <em class="frz" name="svd_frs_dc_display"
								data-cart-seq="0" style="display: none;"></em>
						</span> <span class="img"><a href="javascript:void(0);">
									<img src="//cdn.thebanchan.co.kr/upload/C00001/goods/prd/100/707/211019000027707.jpg" width="80" height="80" alt="더반찬& 양념소불고기 2개 (고추장불고기, 쌈채소증정)" onerror="this.src='/common/images/common/noimg_100.jpg'"/> 
							</a></span></td>
						
						<td><span class="prc"><b
								name="goods_apply_dc_price_display"
								data-cart-seq="0"><%=cartList.get(i).getProduct_discount()%></b>원</span></td>
						<td><span class="ori"><b><%=cartList.get(i).getProduct_price()%></b>원</span>
						</td>
						<td><span class="nm"><%=cartList.get(i).getProduct_qty()%></span></td>
						<td colspan="2"><span class="ori"><b name="goods_pay_amt_display"
								data-cart-seq="0"><%=cartList.get(i).getProduct_price()*cartList.get(i).getProduct_qty()%></b>원</span></td>
					</tr>
					<%} %>
				</tbody>
			</table>
			<div class="odr_insCrt">
				<a href="Order.do" id="go_cart_button"><em>장바구니
						돌아가기</em></a>
			</div>
		</div>

		<div class="odr_insWrap">
			<div class="odr_sheet">

			</div>
			<div class="odr_sheet">
				<h3>
					<span name="info_idx_area"></span>. 주문자정보
				</h3>
				
				<table>
					<caption>주문자정보 | 주문자, 휴대전화, 이메일 정보를 제공하는 표</caption>
					<colgroup>
						<col style="width: 220px;" />
						<col />
					</colgroup>
					<tbody>
						<tr 
							data-role="cert" data-cert-yn="Y">
							<th>주문자<em class="pt">*</em></th>
							<td><div class="inf" name="member_info_display"
									data-role="orderer_nm"><%=memberInfo.get(0).getName() %></div></td>
						</tr>
						<tr 
							data-role="cert" data-cert-yn="Y">
							<th>휴대전화<em class="pt">*</em></th>
							<td><div class="inf" name="member_info_display"
									data-role="cell_no"><%=customerInfo.get(0).getPhone()%></div></td>
						</tr>
						<tr 
							data-role="cert" data-cert-yn="Y">
							<th>이메일<em class="pt">*</em></th>
							<td><div class="inf" name="member_info_display"
									data-role="email"><%=customerInfo.get(0).getEamil()%></div></td>
						</tr>

					</tbody>
				</table>
			</div>

			<div class="odr_sheet">
				<h3>
					<span name="info_idx_area"></span>. 배송지정보
				</h3>
				<span class="dlv_tx">
				<input type="radio" value="default"
												form="order_form" name="place" id="defaultAddr" value="0" onclick="Addr(test)"> 기본
												배송지 &nbsp;&nbsp;<input type="radio" name="place"
												form="order_form" id="newAddr" value="1" onclick="Addr(test)"> 신규
												배송지 &nbsp;
				</span>
				<table>
					<caption>배송지정보 | 받으시는 분, 주소, 휴대전화, 배송정보 및 특이사항 정보를 제공하는 표</caption>
					<colgroup>
						<col style="width: 220px;" />
						<col />
					</colgroup>
					<tbody>
						
						<tr>
							<th>받으시는 분<em class="pt">*</em></th>
							<td><div class="inf"><input type="text" id="buy_name" name="buy_name" value=""></div></td>
						</tr>
						<tr>
							<th>주소<em class="pt" >*</em></th>
							<td><div class="inf">
									<input type="text" name="postcode" id="postcode"
																placeholder="우편번호" class="MS_input_txt w80" /> <input
																type="button" onclick="execDaumPostcode()" value="주소 찾기"
																class="btn-white"> <br> <input type="text"
																name="address" id="address" placeholder="주소"
																class="MS_input_txt w240" /> <input type="text"
																name="detailAddress" id="detailAddress"
																placeholder="상세주소" class="MS_input_txt w240" />  <input
																type="text" name="extraAddress" id="extraAddress"
																placeholder="참고항목" style="display: none;" />
									</div></td>
						</tr>
						
						<tr>
							<th>휴대전화<em class="pt">*</em></th>
							<td>
								<div class="inf">
									<span class="phone"><input type="text" id="buy_phone" name="buy_phone" value=""></span>
									
								</div>
							</td>
						</tr>	
						<tr>
							<th>배송 메시지(50자 이내)</th>
							<td>
								<div class="inf">
									<textarea id="ord_memo_cont" cols="30" rows="5" maxlength="50"
										></textarea>
								</div>
							</td>
						</tr>
						
						
					</tbody>
				</table>
			</div>

			<div class="odr_sheet" id="van_payment_area">
				<h3>
					<span name="info_idx_area"></span>. 결제수단 선택
				</h3>
				<table>
					<caption>결제수단 선택 | 신용카드, 무통장 입금 등
						결제수단 정보를 제공하는 표</caption>
					<colgroup>
						<col style="width: 220px;" />
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th>
								<ul class="pay_rdo">	
									
									<li><span class="dwCk"><input type="radio"
											name="pay_rdo" id="pay_rdo_3"
											data-pay-seq="3" data-role="ord_pay"
											data-pay-mean-cd="11"
											data-pay-info-name="card" required="required"/><label
											for="pay_rdo_3">신용카드</label></span></li>
									
									<li><span class="dwCk"><input type="radio"
											name="pay_rdo" id="pay_rdo_5"
											data-pay-seq="5" data-role="ord_pay"
											data-pay-mean-cd="13"
											data-pay-info-name="virt" required="required"/><label
											for="pay_rdo_5">무통장 입금</label></span></li>
									
								    
									
                                </ul>
							</th>
							<td class="pay_bx">
								<dl id="pay_bx_0" class="card" name="pay_info_area"
									data-pay-info-name="card" style="display: none;">
									<dt>신용카드</dt>
									<dd>
										<ul>
											<li>신용카드 결제 신청 시, '중지', '새로고침'을 누르지 마시고 결과 화면이 나타날 때까지 기다려 주세요.<br />
												승인까지 다소 시간이 소요될 수 있습니다.
											</li>
											<li>결제하기 버튼 클릭 후 결제창이 나타나지 않거나 안전결제 모듈이 설치되지 않을 경우,<br />
												더반찬 사이트를 모두 닫으시고 아래 설치파일을 다운 받아 ActiveX를 수동설치하시고 결제를 진행하여 주십시오.
											</li>
										</ul>
										<button type="button" class="mdl"
											onclick="urlOpen('https://www.tosspayments.com/renewal/html/guide_popup/menu_04.htm', 600, 600, 'yes'); return false;">
											수동설치하기</button>
									</dd>
								</dl>
								<dl id="pay_bx_1" name="pay_info_area" data-pay-info-name="bank"
									style="display: none;">
									<dt>실시간 계좌이체</dt>
									<dd>
										<ul>
											<li>실시간 계좌 이체는 별도의 수수료가 부과되지 않습니다.</li>
											<li>결제와 동시에 입금처리가 되며, 10분 이내에 입금확인 가능합니다.</li>
											<li>현금영수증을 신청하시면 세금계산서를 발급 받을 수 없습니다. 결제 시, 현금영수증 신청 여부를 꼭 확인해주세요.</li>
										</ul>
										<!-- button type="button" class="mdl">U+ 결제모듈 수동 설치</button-->
									</dd>
								</dl>
								<dl id="pay_bx_2" name="pay_info_area" data-pay-info-name="virt"
									style="display: none;">
									<dt>무통장 입금</dt>
									<dd>
										<ul>
											<li>입금 금액이 일치해야 정상적으로 입금 확인됩니다.</li>
											<li>입금 기한 내 입금이 확인되지 않으면 주문이 자동 취소됩니다.</li>
											<li>현금영수증을 신청하시면 세금계산서를 발급 받을 수 없습니다. 결제 시, 현금영수증 신청 여부를 꼭 확인해주세요.</li>
										</ul>
										<!-- button type="button" class="mdl">U+ 결제모듈 수동 설치</button-->
									</dd>
								</dl>
								
								
							</td>
						</tr>
					</tbody>
				</table>
			</div>

			

			<!-- odr_ins_fixed -->
			<div class="odr_insFixed">
				<div class="contain">
					<div class="top">

						<div class="dlv">일반택배
							</div>
						<dl class="total">
							<dt>
								<b>최종결제정보</b>
							</dt>
							<dd class="tp">
								<strong>주문 합계 금액</strong><span><b id="total_goods_price">0</b>원</span>
							</dd>
							<dd class="tp">
								<strong>할인 적용 금액</strong><span><b
									name="total_dc_price_display">0</b>원</span>
								<p name="dc_price_list_display"></p>
							</dd>
							<dd class="tp">
								<strong>배송비</strong><span id="total_deli_price_display"><b>0</b>원</span>
								
							</dd>
							
							
						</dl>
						<div class="total_prc">
							<span class="prc"><strong>최종 결제금액</strong>
							</span>
						</div>
					</div>
<!-- 					<input type="submit" class="odr_total_ok" id="check_order_button" value="결제하기"> -->
					<button type="submit" class="odr_total_ok" id="check_order_button">
						결제하기
					</button>
				</div>
			</div>
			
			<!--// odr_ins_fixed -->

		</div>
		<!--// odr_ins_sht -->

	</div>
	<!--// WRAP -->
</div>
</form>



</body>
</html>