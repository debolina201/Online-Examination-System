<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<title>Login Page</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/loginpage.css"/>
</head>
<body>
	<body>
	<% 
	session.removeAttribute("user");
	request.getSession().invalidate(); 
	%>
   <div class="header">
   		<img src="mylogo.png" alt="logo"/>
  		<h1>Online Examination System</h1>
  </div>
  <div class="box">
		<div class="registerBox">
			<h1>Logged Out !</h1>
			<h3 align="center" style="color:white">Click <a href="LoginPage.jsp">here</a> to login again.</h3>
		</div>
	</body>
</html>