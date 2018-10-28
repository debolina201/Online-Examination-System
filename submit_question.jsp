<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%	
	String sub = request.getParameter("subject");
	String ques = request.getParameter("quest");
	String opA = request.getParameter("optA");
	String opB = request.getParameter("optB");
	String opC = request.getParameter("optC");
	String opD = request.getParameter("optD");
	String ans = request.getParameter("answer");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "SYSTEM", "debo");
	Statement st = con.createStatement();
	String sql = "insert into DEBOLINA.QUESTIONS values('"+sub+"','"+ques+"','"+opA+"','"+opB+"','"+opC+"','"+opD+"','"+ans+"')";
	int count = st.executeUpdate(sql);
	if(count>0)
	{
		response.sendRedirect("AddQuestion.jsp?msg=Entered Sucessfully!!");
	}
	else
	{
		response.sendRedirect("AddQuestion.jsp?msg=Try Again..");
	}
	con.close();
%>