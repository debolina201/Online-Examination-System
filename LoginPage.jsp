<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>User Login Page</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/loginpage.css"/>
		<script src="md5.js"></script>
		<script>
		function convert()
		{
			var password = document.getElementById("password").value;
			var npassword = md5(password);
			document.getElementById("password").value = npassword;
		}
		</script>
</head>
<body>
   <div class="header">
   		<img src="mylogo.png" alt="logo"/>
  		<h1>Online Examination System</h1>
  </div>
	<%
		response.addHeader("X-FRAME-OPTIONS", "DENY"); //prevent other websites to use your webpage via iframe concept
	%>
	<div class="box">
            <h1>Login</h1>
            <form action="CheckUser.jsp" method="post" onsubmit="convert()">
                <div class="inputBox">
                    <input type="text" name="loginid" autocomplete="off" required="">
                    <label>Enter your SIC</label>
                </div>
                <div class="inputBox">
                    <input type="password" id="password" name="password" autocomplete="off" required="">
                    <label>Password</label>
                </div>
                <input type="submit" class="button" value="Sign In"/>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <a href="Register.jsp" class="button">New User?</a>
                <br> <br>
                <%
                if(request.getParameter("msg")!=null)
				{%>
					<font color="red"><%out.println(request.getParameter("msg"));%></font>
				<%}%> 
				
            </form>
        </div>
</html>