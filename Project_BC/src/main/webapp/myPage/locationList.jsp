<%@page import="vo.CustomerAddress"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
ArrayList<CustomerAddress> addressList = (ArrayList<CustomerAddress>)session.getAttribute("addressList");

%>

<%
for (int i = 0; i < addressList.size(); i++) {
%>
<table>
<tr>
	<th>주소</th>
	<td><%=addressList.get(i).getRoadAddress()%> <%=addressList.get(i).getDtl_addr()%></td>
</tr>
</table>
<%
}
%>