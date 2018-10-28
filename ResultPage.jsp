<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<title>Exam Result</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css"/>
</head>
<body>
<div class="header">
  		<h2>EXAM RESULT</h2>
</div>
<p>
</p>
<p>
</p>
<div align="right">
<a href="logout.jsp" class="button">Logout</a>
</div>
</body>
</html>
<% 	String subject = request.getParameter("sub");
	Class.forName("oracle.jdbc.driver.OracleDriver");	
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","debo");
	Statement stmt=con.createStatement();
	String sql = "select * from DEBOLINA.QUESTIONS where SUBJECT="+"'"+subject+"'";
	ResultSet rs = stmt.executeQuery(sql);
	String s1,s2,s3,s4;
	int i=1;
	int correct=0, incorrect=0, total=0;
	out.println("<h2> <br> <center> <table width=1200px border=1 cellpadding=1 cellspacing=1> <tr> <th> Questions </th> <th> Your Answers </th><th> Correct Answers </th> <th> Status </th> </tr>");
	while(rs.next())
	{
		total++;
		s1=rs.getString(2);
		s2=request.getParameter("radio"+i);
		s3=rs.getString(7);
		if(s2!=null){
			if(s2.equals(s3))
			{
			s4="correct";
			correct++;
			}
			else 
			{
			s4="incorrect";
			incorrect++;
		}
		out.println("<tr><td>"+s1+ "</td><td>"+s2 +"</td><td>"+s3 +"</td><td>"+s4 +"</td></tr>");
	i++;
	} 
}
out.println("</table><br><table width=200px border-bottom: 1px><br><tr><td> No. of Correct Answers  :</td><td>" +correct+ "</td></tr>");
out.println("<tr><td> No. of Incorrect 	Answers  :</td><td>" +incorrect+ "</td></tr>");
out.println("<tr><td> Total no. of Questions  :</td><td>" +total+ "</td></tr>");
%>