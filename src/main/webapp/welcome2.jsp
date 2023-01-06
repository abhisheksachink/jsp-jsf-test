<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<%@ page import="java.util.List" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Electricity Bill</title>
</head>
<body>
<h1>Electricity Bill</h1>
<table id="tables">
<tr>
<th>Meter Id</th>
<th>Consumer Name</th>
<th>Current Reading</th>
<th>Previous Reading</th>
<th>Zone</th>
</tr>

<tr>
<td>${meterId}</td>
<td>"${UserName}"</td>
<td>"${currRead}"</td>
<td>"${prevRead}"</td>
<td>"${zone}"</td>
</tr>




</table>


</body>
</html>