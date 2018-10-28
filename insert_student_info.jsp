<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	String loginid = request.getParameter("loginid");
	String password = request.getParameter("password");
	String mobileno = request.getParameter("mobileno");
	String emailid = request.getParameter("emailid");
	String semester = request.getParameter("semester");
	String branch = request.getParameter("branch");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SYSTEM", "debo");
	Statement st = con.createStatement();	
	String sql = "insert into DEBOLINA.STUDENTS values('"+firstname+"','"+lastname+"','"+loginid+"','"+password+"','"+mobileno+"','"+emailid+"','"+branch+"','"+semester+"')";
	int count = st.executeUpdate(sql);
	if(count>0)
	{
		response.sendRedirect("Register.jsp?msg=Registered Successfully!!");
	}
	else
	{
		response.sendRedirect("Register.jsp?msg=Please try Again..");
	}
	con.close();
%>