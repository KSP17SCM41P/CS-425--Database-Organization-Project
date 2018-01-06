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
  <title>Warehouse</title>
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
 String wid = request.getParameter("wid");
 Class.forName("oracle.jdbc.driver.OracleDriver");
 con =DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","ithakur1", "YCsBUo3...uK3Z17");
 stmt = con.createStatement();
 rs=stmt.executeQuery("select * from addwarehouse where wid='"+ wid +"'");
 while(rs.next())
 {
%>
<form method="get" action="updatingWarehouse.jsp">
<br>
<br>
 <table>
   <tr>
      <td>Warehouse ID : </td>
       <td><input type="text" name="wid"  value="<%=rs.getString(1)%>" ></td>
</tr>
 <tr>
      <td>Size : </td>
      <td><input type="text" name="wsize"  value="<%=rs.getString(2)%>" /></td>
</tr>
<tr>
      <td>Street :</td>
      <td><input type="text" name="wstreet"  value="<%=rs.getString(3)%>" /></td>
 </tr>
 <tr>
      <td>City :</td>
      <td><input type="text" name="wcity"  value="<%=rs.getString(4)%>" /></td>
 </tr>
 <tr>
      <td>State :</td>
      <td><input type="text" name="wstate"  value="<%=rs.getString(5)%>" /></td>
 </tr>
 <tr>
      <td>Zipcode :</td>
      <td><input type="text" name="wzipcode"  value="<%=rs.getString(6)%>" /></td>
 </tr>
 <tr>
      <td><input type="submit" value="Update" /> </td>
      <td><input type="reset" value="Reset" /></td>
      </tr>
</table>
<br>
<br>
<tr>
      <td colspan="2"><a href = "warehouseindex.jsp">Go to Warehouse Home Page</a></td>
</tr>
 <tr>
      <td colspan="2"><a href = "index.jsp">Staff Homepage</a></td>
</tr>
</form>
<%
 }
%>

</body>
</html>
