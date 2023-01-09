<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="index.css">
<title>Electricity</title>

</head>
<body>
<%@include file="header.jsp" %>

<main>
    <div class="intro">
        <h1>Abhi Power Distribution Company Limited</h1>
      <p>No. 1 Power Distribution Company in India.</p>
      <button>Learn More</button>
    </div>
    <div class="achievements">
      <div class="work">
        <i class="fas fa-atom"></i>
        <p class="work-heading">Projects</p>
        <p class="work-text">APDCL  worked on many projects and very proud of them.  and  always looking for new projects.</p>
      </div>
      <div class="work">
        <i class="fas fa-skiing"></i>
        <p class="work-heading">Solar</p>
        <p class="work-text">we have also provide solar System for Electricty </p>
      </div>
      <div class="work">
        <i class="fas fa-ethernet"></i>
        <p class="work-heading">Network</p>
        <p class="work-text">we have a lot of network at all over India. we are very good at them. we provides 24*7 Electricity.</p>
      </div>
    </div>
    <div class="about-me">
      <div class="about-me-text">
        <h2>Electricity Bill</h2>
        <h3>Click on below Button for Fetch your Bill or Input your Details.</h3>
        <a style="  background-color: #f44336;color: white;padding: 14px 25px;text-align: center;text-decoration: none;display: inline-block;" href="bill.jsp">Show Bill</a>
        <a style="  background-color: #f44336;color: white;padding: 14px 25px;text-align: center;text-decoration: none;display: inline-block;"  href="consumer.jsp">Fill Consumer Reading</a>
      </div>
    </div>
  </main>

<%@include file="footer.jsp" %>

</body>
</html>