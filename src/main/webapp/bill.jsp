<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill</title>
</head>
<body>
<%@include file="header.jsp" %>
<form style="background-color:rgb(84, 228, 17);text-align: center;"  action="<%=request.getContextPath()%>/BillServlet" method="post">
<h3>Enter Details for fetch the Bill</h3>
<label for="meterID">Meter ID:-</label>
<input type="text" name="meterId" placeholder="Meter ID" ><br><br>
<br><br>
<input id="button1" type="submit" value="Submit Details">
</form>
<%@include file="footer.jsp" %>
</body>
</html>