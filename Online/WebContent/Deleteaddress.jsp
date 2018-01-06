<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Address</title>
</head>
<body>

<header style="display:inline;">
    <img src="logo.png" align="left" width="15%" height="12%">
    <h1 align="center">SlipKART</h1>
  </header>
     <hr display="block"; margin-top: 0.5em;></hr>
<form action="Deleteaddress.jsp">
<center>
<table >
<tr align="left" valign="top">
<td> Please select the address to be deleted: </td>
</tr>
<tr align="left" valign="top">
<td>User name : </td>
<td><input type="text" name="username"  value="" required autofocus placeholder="User Name" title="Please enter in more than three letters"/></td>
</tr>
<tr align="left" valign="top">
<td> Address Type : </td>
<td>
<select name="atype" onchange="">
<option value="PERMANENT">PERMANENT</option>
<option value="DELIVERY">DELIVERY</option>
</select></td> 
</tr>

<tr align="left" valign="top">
<td></td>
<td><input type="submit" value="Delete"/></td>
</tr>
</table>
</center>
</form>

<%@page import = "java.io.IOException " %>
 <%@page import ="java.io.PrintWriter"%>
 <%@page import ="java.sql.*" %>
 <%@page import =" javax.servlet.ServletException" %>
 <%@page import = "javax.servlet.annotation.WebServlet" %>
 <%@page import = "javax.servlet.http.HttpServlet" %>
 <%@page import = "javax.servlet.http.HttpServletRequest "%>
 <%@page import = "javax.servlet.http.HttpServletResponse "%>
<%
String addresstype = request.getParameter("atype");
String uname = request.getParameter("username");
String id;
ResultSet rs = null;
if(addresstype != null)
{
	Connection con = null;
	PreparedStatement ps = null;
	try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","kparchand","Cognizant13");
			PreparedStatement pst = con.prepareStatement("SELECT CUSTID FROM CUSTOMER WHERE USERNAME='"+uname+"'");
			rs = pst.executeQuery();
			if(rs.next()){
 				id = rs.getString(1);
 				//System.out.println(id);
 				//System.out.println(addresstype);
 			String sql = "DELETE FROM ADDRESS WHERE CUSTID='"+id+"' AND ADDRESSTYPE = '"+addresstype+"'" ;
			ps = con.prepareStatement(sql);
			int i = ps.executeUpdate();
			if(i > 0)
			{%>
				 <a href = "CustomerUpdate.jsp">Continue to Edit Profile</a>
			<% 
			}
			else
			%>
				<jsp:forward page="/failureDelete.jsp"/>
			<%
			}
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