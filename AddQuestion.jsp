<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/styleadd.css"/>
<title>Add Question</title>
</head>
<body>
<header>Administrator</header>
     <div class="box">
     <h2 align="center">Add Question</h2>
     <% if(request.getParameter("msg")!=null)
		{
			out.println(request.getParameter("msg"));
		}
	%>
     <form action="submit_question.jsp" method="post">
              <table>
              <tr>
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
		</tr>
              <tr>
        		<div class="center-on-page">
				<td align="left">
				<label>Question</label>
				</td>
        		<td align="right">
        		<textarea name="quest" required="required"></textarea>
        		</td>
        		</div>
        	</tr>
        	<tr>
                <td>
                <label>Option A</label>
                </td>
                <td>
                <input type="text" name="optA" id="opt" required="required">
                </td>
                </tr>
            <tr>
            <td>
                <label>Option B</label>
                </td>
                <td>
                <input type="text" name="optB" id="opt" required="required">
                </td>
           
           </tr>
           <tr>
           <td>
                <label>Option C</label>
           </td>
           <td>
                <input type="text" name="optC" id="opt" required="required">
           </td>
           </tr>
           <tr>
           <td>
                <label>Option D</label>
                </td>
                <td>
                <input type="text" name="optD" id="opt" required="required">
                </td>
                </tr>
                <tr>
                <td>
				<label>Correct Answer</label>
				</td>
				<td><input type="text" name="answer" id="opt" required="required">
                </td>
                </tr>
                <tr>
                <td align="left">
                <input type="submit" class="button" value="Submit"></input>
                </td>
                <td align="center">
                <input type="reset" class="button" value="Reset"/></input>
                </td>
                <td align="right"><a href="AdminPage.jsp" class="button">Go Back</a></td>
                </tr>
                </table>
      </form>
      </div>
</body>
</html>