<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Credit Card</title>
</head>
<body>

<header style="display:inline;">
    <img src="logo.png" align="left" width="15%" height="12%">
    <h1 align="center">SlipKART</h1>
  </header>
     <hr display="block"; margin-top: 0.5em;></hr>
<%@page import = "java.io.IOException " %>
 <%@page import ="java.io.PrintWriter"%>
 <%@page import ="java.sql.*" %>
 <%@page import =" javax.servlet.ServletException" %>
 <%@page import = "javax.servlet.annotation.WebServlet" %>
 <%@page import = "javax.servlet.http.HttpServlet" %>
 <%@page import = "javax.servlet.http.HttpServletRequest "%>
 <%@page import = "javax.servlet.http.HttpServletResponse "%>;
<% 
String id;
String uname= request.getParameter("uname");
String oldcard =request.getParameter("oldccn");
String newcard	=request.getParameter("newccn");
String cvv = request.getParameter("cvv");
String dd = request.getParameter("day");	
String mm = request.getParameter("month");
String yy = request.getParameter("year");
ResultSet rs = null;
 try {
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con= DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","kparchand","Cognizant13");
	 PreparedStatement psts = con.prepareStatement("SELECT CUSTID FROM CUSTOMER WHERE USERNAME='"+uname+"'");
	 rs = psts.executeQuery();
	 if(rs.next()){
	  id = rs.getString(1);
	 Statement statement = con.createStatement();
	 statement.executeUpdate("UPDATE CREDITCARD_INFO SET CREDITCARD_NUM='"+newcard+"',EXPIRY_DATE='"+dd+mm+yy+"',CVV ='"+cvv+"' WHERE CUSTID ='"+id+"'");
	 }
 }
 catch (ClassNotFoundException e) {
	 e.printStackTrace();
	 }

	out.print("Updation done successfully");


%>
<a href = "Customerhome.jsp">Go to Home</a>

</body>
</html>