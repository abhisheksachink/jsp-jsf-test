<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<%@ page import="java.util.List" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="index.css">
<title>Electricity Bill</title>
</head>
<body style="text-align: center;">
<%@include file="header.jsp" %>
<%int prevRead=(int)request.getAttribute("prevRead");
int currRead=(int)request.getAttribute("currRead");
int unit= currRead-prevRead;
String zone=(String)request.getAttribute("zone"); 
if(unit<100){
	if(zone.equals("Urban")){
		int price=unit*6-100;
		request.setAttribute("price", price);
	}
	else{
		int price=unit*4-100;
		request.setAttribute("price", price);
	}
}
else{
	if(zone.equals("Urban")){
		int price=unit*6;
		request.setAttribute("price", price);
	}
	else{
		int price=unit*4;
		request.setAttribute("price", price);
	}
}
int subsidy;
%>
<div style="text-align: center;">
<h1>Abhi Power Distribution Private Limited</h1>
<c:set var="currdate" value="<%=new java.util.Date() %>"></c:set>

<table border="1px" style="margin-right: auto; margin-left: auto;">
<h2>Electricity Bill</h2>
<tr><th><h3> Meter Id:-&nbsp;&nbsp; </h3></th><td>${meterId}</td></tr>
<tr><th><h3> Consumer Name:-&nbsp;&nbsp; </h3></th><td>${UserName}</td></tr>
<tr><th><h3>Billing Date:-&nbsp;&nbsp;</h3></th><td><fmt:formatDate value="${currdate}" type="date" pattern="dd-MM-yyyy"></fmt:formatDate></td></tr>
<tr><th><h3>Pay By:-&nbsp;&nbsp;</h3></th><td>within 10 days of Bill Date</td></tr>

</table>
<table id="tables" border="1px" style="margin-right: auto; margin-left: auto;"">
<tr>
<th><h3> Meter Id&nbsp;&nbsp; </h3></th>
<th><h3> Current Meter Reading&nbsp;&nbsp; </h3></th>
<th><h3> Previous Meter Reading &nbsp;&nbsp;</h3></th>
<th><h3>  Zone &nbsp;&nbsp;</h3></th>
</tr>

<tr>
<td>${meterId}</td>
<td>${currRead}</td>
<td>${prevRead}</td>
<td>${zone}</td>
</tr>
<tr>
<th><h3> Total Unit Consumption:-&nbsp;&nbsp; </h3></th>
<td>${currRead-prevRead}</td>
</tr>
<tr>
<th>Subsidy(if any) :-</th>
<td><%if(unit<100){out.print(100);}else out.print(0); %></td>
</tr>
<tr>
<th>Amount Payable :-</th>
<td>${price}</td>
</tr>
</table>
</div>
<%@include file="footer.jsp" %>
</body>
</html>