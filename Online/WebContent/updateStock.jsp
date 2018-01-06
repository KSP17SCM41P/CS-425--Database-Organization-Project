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
 String stockID = request.getParameter("stockID");
 Class.forName("oracle.jdbc.driver.OracleDriver");
 con =DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","ithakur1", "YCsBUo3...uK3Z17");
 stmt = con.createStatement();
 rs=stmt.executeQuery("select * from stock where stockID='"+ stockID +"'");
 while(rs.next())
 {
%>
<form method="get" action="updatingStock.jsp">
<br>
<br>
 <table>
   <tr>
      <td>Stock ID : </td>
       <td><input type="text" name="stockID"  value="<%=rs.getString(1)%>" readonly="readonly"></td>
</tr>
 <tr>
      <td>Warehouse ID : </td>
      <td><input type="text" name="wid"  value="<%=rs.getString(2)%>" readonly="readonly"/></td>
</tr>
<tr>
      <td>Product ID : </td>
       <td><input type="text" name="prodID"  value="<%=rs.getString(3)%>" readonly="readonly"/></td>
</tr>
 <tr>
      <td>Available Qty</td>
       <td><input type="text" name="savailQty"  value="<%=rs.getString(4)%>" /></td>
</tr>
 <tr>
      <td>Capacity</td>
      <td><input type="text" name="sCapacity"  value="<%=rs.getString(5)%>" /></td>
 </tr>
 <tr>
      <td><input type="submit" value="Update" /> </td>
      <td><input type="reset" value="Reset" /></td>
      </tr>
</table>
<br>
<br>
 <tr>
      <td colspan="2"><a href = "stockIndex.jsp">Go to Home</a></td>
</tr>
</form>
<%
 }
%>

</body>
</html>
