<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Credit Card</title>
</head>
<body>
<center>
<header style="display:inline;">
    <img src="logo.png" align="left" width="15%" height="12%">
    <h1 align="center">SlipKART</h1>
  </header>
     <hr display="block"; margin-top: 0.5em;></hr>
<form action="Deletecard.jsp">
<table>
<tr>
<td>Enter Credit Card Number To Delete</td>
<td><input type="text" name="ccn"/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Delete"/></td>
</tr>
</table>
</form>
<%@page import = "java.io.IOException " %>
 <%@page import ="java.io.PrintWriter"%>
 <%@page import ="java.sql.*" %>


 <%@page import =" javax.servlet.ServletException" %>
 <%@page import = "javax.servlet.annotation.WebServlet" %>
 <%@page import = "javax.servlet.http.HttpServlet" %>
 <%@page import = "javax.servlet.http.HttpServletRequest "%>
 <%@page import = "javax.servlet.http.HttpServletResponse "%>
<%! String driverName = "oracle.jdbc.driver.OracleDriver";%>
<%!String url = "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";%>
<%!String user = "kparchand";%>
<%!String psw = "Cognizant13";%>
<%
String creditcard = request.getParameter("ccn");
if(creditcard != null)
{
Connection con = null;
PreparedStatement ps = null;
int cardID = Integer.parseInt(creditcard);
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","kparchand","Cognizant13");
String sql = "DELETE FROM CREDITCARD_INFO WHERE CREDITCARD_NUM="+cardID;
ps = con.prepareStatement(sql);
int i = ps.executeUpdate();
if(i > 0)
{%>
<jsp:forward page="/successDelete.jsp"/>
<% 
}
else
%>
<jsp:forward page="/failureDelete.jsp"/>
<%
}
catch(SQLException sqe)
{
request.setAttribute("error", sqe);
out.println(sqe);
}
}
%>


</body>
</html>