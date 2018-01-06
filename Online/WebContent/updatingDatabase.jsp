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
  <title>Updating Database</title>
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
 String prodID = request.getParameter("prodID");
 Class.forName("oracle.jdbc.driver.OracleDriver");
 con =DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","ithakur1", "YCsBUo3...uK3Z17");
 stmt = con.createStatement();
 rs=stmt.executeQuery("select * from product1 where prodID='"+ prodID +"'");
 while(rs.next())
 {
%>
<form method="get" action="updateProduct.jsp">
<br>
<br>
 <table>
   <tr>
      <td>Product Identification : </td>
       <td><input type="text" name="prodID"  value="<%=rs.getString(1)%>" ></td>
</tr>
 <tr>
      <td>Product name : </td>
      <td><input type="text" name="prodName"  value="<%=rs.getString(2)%>"/></td>
</tr>
<tr>
      <td>Product Type: </td>
       <td><input type="text" name="prodType"  value="<%=rs.getString(3)%>"/></td>
</tr>
 <tr>
      <td>Available Quantity : </td>
       <td><input type="text" name="availQty"  value="<%=rs.getString(4)%>"/></td>
</tr>
 <tr>
      <td>Product Size :</td>
      <td><input type="text" name="prodSize"  value="<%=rs.getString(5)%>"/></td>
 </tr>
 <tr>
      <td><input type="submit" value="Update" /> </td>
      <td><input type="reset" value="Reset" /></td>
      </tr>
</table>
</form>
<%
 }
%>

</body>
</html>
