<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<header style="display:inline;">
    <img src="logo.png" align="left" width="15%" height="12%">
    <h1 align="center">SlipKART</h1>
  </header>
     <hr display="block"; margin-top: 0.5em;></hr>
<center>
<font color="blue">Please Enter Your Product ID </font><br><br>
<form name="frm" method="get" action="updateProdPricing1.jsp">
<table border = "0">
  <tr align="left" valign="top">
  <td>Product ID:</td>
  <td><input type="text" name ="prodID" /></td>
  </tr>
  <tr align="left" valign="top">
  <td></td>
  <td><input type="submit" name="submit" value="Submit"/></td>
  </tr>
</table>
</form>
</center>
</body>
</html>