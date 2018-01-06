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
<%@page import = "java.io.IOException " %>
 <%@page import ="java.io.PrintWriter"%>
 <%@page import ="java.sql.*" %>


 <%@page import =" javax.servlet.ServletException" %>
 <%@page import = "javax.servlet.annotation.WebServlet" %>
 <%@page import = "javax.servlet.http.HttpServlet" %>
 <%@page import = "javax.servlet.http.HttpServletRequest "%>
 <%@page import = "javax.servlet.http.HttpServletResponse "%>;

<% 
String stockID =request.getParameter("stockID");
String wid	=	request.getParameter("wid");
String prodID	=	request.getParameter("prodID");
	
	String savailQty	=	request.getParameter("savailQty");
	
	String sCapacity	=	request.getParameter("sCapacity");
 try {
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con= DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","ithakur1","YCsBUo3...uK3Z17");
	
	 Statement statement = con.createStatement();
	 statement.executeUpdate("update stock set stockID='"+stockID+"',wid='"+wid+"',prodID='"+prodID+"',savailQty='"+savailQty+"',sCapacity='"+sCapacity+"'where stockID='"+stockID+"'");
	 }
	
 catch (ClassNotFoundException e) {
	 e.printStackTrace();
	 }

	out.print("Updation done successfully");


	





%>
<a href = "stockIndex.jsp">Go to Home</a>

</body>
</html>