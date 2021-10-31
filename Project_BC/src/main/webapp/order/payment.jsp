<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
// int amount = Integer.parseInt(request.getParameter("payment_price"));
int amount = 1;
int total_price = Integer.parseInt(request.getParameter("total_price"));
int total_discount = Integer.parseInt(request.getParameter("total_discount"));
int shipping_fee = Integer.parseInt(request.getParameter("shipping_fee"));

String customer_id = request.getParameter("customer_id");
String buyer_name = request.getParameter("buyer_name");
String buyer_tel = request.getParameter("buyer_tel");
String buyer_email = request.getParameter("buyer_email");
String postcode = request.getParameter("postcode");
String address = request.getParameter("address");
String detailAddress = request.getParameter("detailAddress");
String shipping_name = request.getParameter("shipping_name");
String shipping_phone = request.getParameter("shipping_phone");
String shipping_memo = request.getParameter("shipping_memo");
String pay_method = request.getParameter("pay_rdo");
String status ="";

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
IMP.init('imp98036049');

IMP.request_pay({
    pg : 'inicis', // version 1.1.0부터 지원.
    pay_method : '<%=pay_method%>',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '주문명:결제테스트',
    amount : <%=amount%>, //판매 가격
    buyer_email : '<%=buyer_email%>',
    buyer_name : '<%=buyer_name%>',
    buyer_tel : '<%=buyer_tel%>',
    buyer_addr : '<%=address%>',
    buyer_postcode : '<%=postcode%>'
}, function(rsp) {
    if ( rsp.success ) {
    	jQuery.ajax({
    		url: "paymentResult.jsp",
    		type : 'POST',
    		dataType : 'json',
    		data : {
    			imp_uid : rsp.imp_uid,
    			amount : rsp.paid_amount,
    			status : rsp.status
    		}
    	}).done(function(data){
    		if(everythings_fine) {
    			 var msg = '결제가 완료되었습니다.';
    		        msg += '고유ID : ' + rsp.imp_uid;
    		        msg += '상점 거래ID : ' + rsp.merchant_uid;
    		        msg += '결제 금액 : ' + rsp.paid_amount;
    		        msg += '카드 승인번호 : ' + rsp.apply_num;
    		        alert(msg);
    		} else {
    			var msg = '아직 제대로 결제가 되지 않았습니다.';
    			msg +=  '결제된 금액이 요청한 금액과 달라 결제를 자동취소 처리하였습니다.'
    		}
    	});
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
		alert(msg);
    }
    $("#status").attr('value', rsp.status);
    $("#imp_uid").attr('value',rsp.imp_uid);
    $(".imp_uid").text($("#imp_uid").val());
		if ($('#status').val() == "paid") {
			$('.fail').attr("src",'order/payment_success.jpg')
			document.paymentForm.submit();
		} else {
			
			$('.fail').attr("src",'order/payment_fail.jpg')
			$('.fail').show();
		}
	});

</script>
</head>
<body>
<%=customer_id %>
<%=buyer_name %>
<%=buyer_tel %>
<%=buyer_email %>
<%=postcode %>
<%=address %>
<%=detailAddress %>
<%=shipping_name %>
<%=shipping_phone %>
<%=shipping_memo %>
<%=pay_method %>
<%=status %>

<form action="OrderPro.or" method="post" name="paymentForm">
<div class="tbl-order">
	<img alt="" src="" class="fail" onerror="this.style.display='none'">
</div>

<input type="text" value="" id="imp_uid" name="imp_uid">
<input type="text" value="<%=amount%>" id="paid_amount" name="paid_amount"> 
<input type="text" value="<%=pay_method%>" id="pay_method" name="pay_method">
<input type="text" value="<%=buyer_name %>" id="buyer_name" name="buyer_name"> 
<input type="text" value="<%=buyer_tel %>" id="buyer_tel" name="buyer_tel">
<input type="text" value="<%=buyer_email %>" id="buyer_email" name="buyer_email"> 
<input type="text" value="<%=postcode %>" id="postcode" name="postcode">
<input type="text" value="<%=address %>" id="shipping_addr" name="shipping_addr">
<input type="text" value="" id="status" name="status">
<input type="text" value="<%=shipping_name %>" id="shipping_name" name="shipping_name">
<input type="text" value="<%=shipping_phone %>" id="shipping_phone" name="shipping_phone">
<input type="text" value="<%=shipping_memo %>" id="shipping_memo" name="shipping_memo">
<input type="text" value="<%=customer_id %>" id="customer_id" name="customer_id">

</form>
</body>
</html>