<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import = "javax.servlet.RequestDispatcher" %>
<%@ page import = "javax.servlet.http.HttpSession"%>
<% 
    	  String subject = request.getParameter("subject");
    	  Class.forName("oracle.jdbc.driver.OracleDriver");
    	  Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","debo");
    	  Statement st=conn.createStatement();
    	  String sql = "select * from DEBOLINA.QUESTIONS where SUBJECT="+"'"+subject+"'";
    	  ResultSet rs = st.executeQuery(sql);
%>
<html>
<head>
<title>Online Exam</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css"/>
<body>
	<div class="header">
  		<h2>Online Examination</h2>
  </div>
  <h2 align="center" >Your Examination Begins</h2>
  <h3 align="center">Attempt all the questions! There is no negative marking.</h3>
  <h3 align="center">Subject Code: <%=subject%></h3>
  <form id="examform" method="post" action="ResultPage.jsp">
  <input type="hidden" name="sub" value="<%=subject%>"></input>
  	<p align="center">
  	<label>Time left : </label>
  	<label id="clockdiv">
  	<script  src="timer.js"></script>
    </label>
    </p>
    <ol>
      <%
    	  int i=1;
    	  while(rs.next()){
%>
 	<li style="font-size:18px">
          <%=rs.getString("ques")%>  
          <div>
          <input type="radio" value="<%=rs.getString("OP_A")%>" name="radio<%=i%>"/>A) <%=rs.getString("OP_A")%>
          </div>
          <div>
          <input type="radio" value="<%=rs.getString("OP_B")%>" name="radio<%=i%>"/>B) <%=rs.getString("OP_B")%>
          </div>
          <div>         
          <input type="radio" value="<%=rs.getString("OP_C")%>" name="radio<%=i%>"/>C) <%=rs.getString("OP_C")%>
          </div>
          <div>
          <input type="radio" value="<%=rs.getString("OP_D")%>" name="radio<%=i%>"/>D) <%=rs.getString("OP_D")%>
          </div>
          <input type="hidden" value='<%=rs.getString("ans")%>' name="ans<%=i%>"/>
          <br>
          <br>
<%
	i++;
}
%>
	</ol>
	<table align="center">
		<tr>
        <td>
          <input type="submit" class="button" value="SUBMIT"></input>
        </td>
        <td>
        <input type="reset" class="button" value="RESET"></input>
        </td>
      </tr>
  </table>
  </form>
  </body>
</html>