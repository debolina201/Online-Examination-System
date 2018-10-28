<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import = "javax.servlet.RequestDispatcher" %>
<%@ page import = "javax.servlet.http.HttpSession" %>
<% 
	String loginid = request.getParameter("loginid");
	String password = request.getParameter("password");
	String msg = "";
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","debo"); 
	String sql = "select * from DEBOLINA.STUDENTS where loginid=? and password=?";
	//Prep Stmt is used to separate sql query from value part
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, loginid);
	ps.setString(2, password);
	ResultSet rs = ps.executeQuery();
	
	if(rs.next())
	{
		session.setAttribute("user", loginid);
		if(loginid.equals("admin"))
			response.sendRedirect("AdminPage.jsp");
		else
			response.sendRedirect("MainExamPage.jsp");
	}
	else
	{
		response.sendRedirect("LoginPage.jsp?msg=Invalid SIC or Password");
	}
%>