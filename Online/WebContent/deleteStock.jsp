<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Data</title>
</head>
<body>

<header style="display:inline;">
    <img src="logo.png" align="left" width="15%" height="12%">
    <h1 align="center">SlipKART</h1>
  </header>
     <hr display="block"; margin-top: 0.5em;></hr>
<form action="deleteStock.jsp">
<table>
<tr>
<td>Enter Stock ID To Delete</td>
<td><input type="text" name="stockID"/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Delete"/></td>
</tr>
</table>
</form>
<%! String driverName = "oracle.jdbc.driver.OracleDriver";%>
<%!String url = "jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl";%>
<%!String user = "ithakur1";%>
<%!String psw = "YCsBUo3...uK3Z17";%>
<%
String id = request.getParameter("stockID");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int stockID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql = "DELETE FROM stock WHERE stockID="+stockID;
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