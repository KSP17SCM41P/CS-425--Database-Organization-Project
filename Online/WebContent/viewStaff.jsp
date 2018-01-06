<%@page import = "java.io.IOException " %>
 <%@page import ="java.io.PrintWriter"%>
 <%@page import ="java.sql.DriverManager" %>
 <%@page import ="java.sql.PreparedStatement"%>
  <%@page import ="java.sql.Statement"%>
 <%@page import ="java.sql.ResultSet"%>

 <%@page import =" javax.servlet.ServletException" %>
 <%@page import = "javax.servlet.annotation.WebServlet" %>
 <%@page import = "javax.servlet.http.HttpServlet" %>
 <%@page import = "javax.servlet.http.HttpServletRequest "%>
 <%@page import = "javax.servlet.http.HttpServletResponse "%>;

 <%@page import= "java.sql.Connection" %>
<%@ page language = "java" contentType = "text/html; charset = ISO-8859-1"
%>

<html>
<head>
  <title>Profile</title>
</head>
<body>



<header style="display:inline;">
    <img src="logo.png" align="left" width="15%" height="12%">
    <h1 align="center">SlipKART</h1>
  </header>
     <hr display="block"; margin-top: 0.5em;></hr>
<%!
  Connection con = null;  
  PreparedStatement ps = null;
  ResultSet rs = null;
  Statement stmt = null;
 %>
 <%
 String staffID = request.getParameter("staffID");
 Class.forName("oracle.jdbc.driver.OracleDriver");
 con =DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","ithakur1", "YCsBUo3...uK3Z17");
 stmt = con.createStatement();
 rs=stmt.executeQuery("select * from staff where staffID='"+ staffID +"'");
 while(rs.next())
 {
%>
<form method="get" action="">
<br>
<br>
 <table>
   <tr>
      <td>Staff ID : </td>
       <td><input type="text" name="staffID"  value="<%=rs.getString(1)%>" readonly="readonly"></td>
</tr>
 <tr>
      <td>First Name : </td>
      <td><input type="text" name="fName"  value="<%=rs.getString(4)%>" readonly="readonly"/></td>
</tr>
<tr>
      <td>Last Name: </td>
       <td><input type="text" name="lName"  value="<%=rs.getString(5)%>" readonly="readonly"/></td>
</tr>
 <tr>
      <td>Job Title: </td>
       <td><input type="text" name="jobTitle"  value="<%=rs.getString(6)%>" readonly="readonly"/></td>
</tr>
 <tr>
      <td>Salary :</td>
      <td><input type="text" name="salary"  value="<%=rs.getString(7)%>" readonly="readonly"/></td>
 </tr>

</table>
<br>
<br>
 <tr>
      <td colspan="2"><a href = "index.jsp">Go to Home</a></td>
</tr>
</form>
<%
 }
%>

</body>
</html>
