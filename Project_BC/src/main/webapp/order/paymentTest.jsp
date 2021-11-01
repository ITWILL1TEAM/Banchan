<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int payment_price = Integer.parseInt(request.getParameter("payment_price"));
int total_price = Integer.parseInt(request.getParameter("total_price"));
int total_discount = Integer.parseInt(request.getParameter("total_discount"));
int shipping_fee = Integer.parseInt(request.getParameter("shipping_fee"));

String loginId = request.getParameter("loginId");
String loginName = request.getParameter("loginName");
String buy_name = request.getParameter("buy_name");
String postcode = request.getParameter("postcode");
String address = request.getParameter("address");
String detailAddress = request.getParameter("detailAddress");
String buy_phone = request.getParameter("buy_phone");
String order_memo = request.getParameter("order_memo");
String pay_rdo = request.getParameter("pay_rdo");



%>

<%=request.getParameter("payment_price") %>

<%=total_price %>
<%=total_discount %>
<%=shipping_fee %>
<%=loginId %>
<%=loginName %>
<%=postcode %>
<%=buy_name %>
<%=address %>
<%=detailAddress %>
<%=buy_phone %>
<%=order_memo %>
<%=pay_rdo %>



</body>
</html>