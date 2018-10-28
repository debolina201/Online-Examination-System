<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Welcome to Admin Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styleadmin.css"/>
</head>
<body>
    <header>Administrator</header>
     <div class="box">
         <h1>Subject Details</h1>
<form>
<table>
	<tr>
        <div class="center-on-page">
		<td>Branch</td>
		<td><div class="select">
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
			<select id="semester">
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
		<td align="left"><a href="AddQuestion.jsp" class="button">Add Question</a></td>
		<td align="center"><input type="reset" class="button" value="Reset"/></td>
		<td align="right"><a href="logout.jsp" class="button">Logout</a></td>
		</tr>
		</table>
	</form>
    </div>
</body>
</html>