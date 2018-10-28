<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exam Homepage</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styleexam.css"/>
</head>
<body>
    <header>Welcome To Exam Homepage</header>
    <div class="box">
         <h1>Enter exam details</h1>
<form action="BeginExam.jsp" method="post">
<table>
	<tr>
        <div class="center-on-page">
		<td>Branch</td>
		<td>
                        <div class="select">

		<select id="branch">
		<option value="CSE">Computer Science and Engineering</option>
        <option value="IT">Information Technology</option>
        <option value="EEE">Electronics and Electrical Engineering</option>
        <option value="ECE">Electronics and Communication Engineering</option>
        <option value="EIE">Electronics and Instrumentation Engineering</option>
        </select>
            </div>
        </td>
            </div>
		</tr>
		<tr>
            <div class="center-on-page">
			<td>Semester</td>
			<td>
                <div class="select">
			<select name="semester">
                <option style="column-rule-color: antiquewhite;" value="1">1st Semester</option>
                <option value="2">2nd Semester</option>
                <option value="3">3rd Semester</option>
                <option value="4">4th Semester</option>
                <option value="5">5th Semester</option>
                <option value="6">6th Semester</option>
                <option value="7">7th Semester</option>
                <option value="8">8th Semester</option>
            </select>
                </div>
            </td>
            </div>
		</tr>
		<tr>
            <div class="center-on-page">
			<td>Subject</td>
			<td>
			<div class="select">
			<select name="subject">
			<option value="DS" style="column-rule-color: antiquewhite;">Data Structures</option>
                <option value="ALGO">Algorithms</option>
                <option value="CPROG">C Programming</option>
                <option value="DBMS">Database Management Systems</option>
                <option value="DIG">Digital Electronics</option>
                <option value="AE">Analog Electronics</option>
			</select>
			</div>
			</td>
            </div>
		</tr>    
		<tr>
		<td align="left"><input type="submit" class="button" value="Begin Exam"/></td>
		<td align="center"><a href="Rules.html" class="button">Read Instructions</a></td>
		<td align="right"><a href="logout.jsp" class="button">Logout</a></td>
		</tr>
	</table>
	</form>
    </div>
</body>
</html>