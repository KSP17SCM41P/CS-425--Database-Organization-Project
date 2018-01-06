<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String prodID = request.getParameter("prodID");
String driverName = "oracle.jdbc.driver.OracleDriver";
String connectionUrl = "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";
//String dbName = "jsptutorials";
String userId = "ithakur1";
String password = "YCsBUo3...uK3Z17";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>PRODUCT PRICING DETAILS</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Product ID</b></td>
<td><b>State</b></td>
<td><b>Price</b></td>

</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl,userId,password);
statement=connection.createStatement();
String sql ="SELECT * FROM productPricing";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("prodID") %></td>
<td><%=resultSet.getString("state") %></td>
<td><%=resultSet.getString("prodPrice") %></td>
<td><a href="updateProdPricing.jsp">UPDATE</a></td>
   		<td><a href="deleteProduct.jsp">DELETE</a></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>