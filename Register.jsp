<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Registration Form</title>
		<link rel="stylesheet" href="RegPage.css">
		<script language="javascript" src="md5.js"></script>
		<script language="javascript">
		function convert()
		{
			var password = document.getElementById("password").value;
			var npassword = md5(password);
			document.getElementById("password").value = npassword;
		}
		</script>
	</head>
	<body>
    <div class="registerBox">
    <%
			if(request.getParameter("msg")!=null)
			{
				out.println(request.getParameter("msg"));
			}
		%>
	<h1>Sign Up</h1>
	<form action="insert_student_info.jsp" method="post" onsubmit="convert()">
	<table>
		<tr>
            
			<td align="left">First Name :</td>
			<td align="right"><input type="text" name="firstname" autocomplete="off"/></td>
		</tr>
		<tr>
			<td align="left">Last Name :</td>
			<td align="right"><input type="text" name="lastname" autocomplete="off"/></td>
		</tr>
		<tr>
			<td align="left">SIC no. :</td>
            <td align="right"><input type="text" name="loginid" autocomplete="off"/></td>
		</tr>
		<tr>
			<td align="left">Password :</td>
			<td><input type="password" id="password" name="password" autocomplete="off"/></td>
		</tr>
		<tr>
			<td align="left">Mobile No :</td>
            <td align="right"><input type="text" name="mobileno" autocomplete="off"/></td>
		</tr>
		<tr>
			<td align="left">Email Id :</td>
			<td align="right"><input type="text" name="emailid" autocomplete="off"/></td>
		</tr>
		<tr>
			<td align="left">Semester :</td>
			<td>
			<select name="semester">
                <option value="1">1st Semester</option>
                <option value="2">2nd Semester</option>
                <option value="3">3rd Semester</option>
                <option value="4">4th Semester</option>
                <option value="5">5th Semester</option>
                <option value="6">6th Semester</option>
                <option value="7">7th Semester</option>
                <option value="8">8th Semester</option>
            </select>
            </td>
		</tr>
		<tr>
            <td align="left">Branch :</td>
                 
    <td><input type="radio" name="branch" value="CSE" checked>Computer Science and Engineering<br>
                <input type="radio" name="branch" value="IT">Information Technology<br>
                <input type="radio" name="branch" value="EEE">Electronics and Electrical Engineering<br>
                <input type="radio" name="branch" value="ECE">Electronics and Communication Engineering<br>
                <input type="radio" name="branch" value="EIE">Electronics and Instrumentation Engineering<br>
          
         </td>
          </tr>
         <div>
		<p><b>Already Registered? Click <a href='LoginPage.jsp' style="color:rgb(0,0,255)">here</a> to login. </b></p>
		</div>
		<tr>
		<td align="left"><input type="submit" class="button" value="Register"/></td>
		<td align="right"><input type="reset" class="button" value="Reset"/></td>
		</tr>
	</table>
	</form>
        </div>
	</body>
</html>
