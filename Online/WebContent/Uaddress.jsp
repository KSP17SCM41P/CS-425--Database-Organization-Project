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
<%@page import = "java.io.IOException " %>
 <%@page import ="java.io.PrintWriter"%>
 <%@page import ="java.sql.*" %>
 <%@page import =" javax.servlet.ServletException" %>
 <%@page import = "javax.servlet.annotation.WebServlet" %>
 <%@page import = "javax.servlet.http.HttpServlet" %>
 <%@page import = "javax.servlet.http.HttpServletRequest "%>
 <%@page import = "javax.servlet.http.HttpServletResponse "%>
<% 
String id;
String uname= request.getParameter("username");
String atype=request.getParameter("atype");
String btype = request.getParameter("btype");
String astate=request.getParameter("astate");
String acity=request.getParameter("acity");
String astreet=request.getParameter("astreet");
String azipcode=request.getParameter("azipcode");
String bstate=request.getParameter("bstate");
String bcity =request.getParameter("bcity");
String bstreet=	request.getParameter("bstreet");
String bzipcode=request.getParameter("bzipcode");
	
ResultSet rs = null;
 try {
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con= DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","kparchand","Cognizant13");
	 PreparedStatement psts = con.prepareStatement("SELECT CUSTID FROM CUSTOMER WHERE USERNAME='"+uname+"'");
	 rs = psts.executeQuery();
	 while(rs.next()){
	  id = rs.getString(1);
	  if(atype.equals("PERMANENT"))
		 {
	Statement statement = con.createStatement();
	statement.executeUpdate("UPDATE  ADDRESS SET ADDRESSTYPE='"+atype+"',STATES='"+astate+"',CITY ='"+acity+"', STREET ='"+astreet+"',ZIPCODE ='"+azipcode+"'  WHERE CUSTID ='"+id+"'");
		
		 }
		 if(btype.equals("DELIVERY"))
		 {
			 Statement statement = con.createStatement();
			 statement.executeUpdate("UPDATE  ADDRESS SET ADDRESSTYPE='"+btype+"',STATES='"+bstate+"',CITY ='"+bcity+"', STREET ='"+bstreet+"',ZIPCODE ='"+bzipcode+"'  WHERE CUSTID ='"+id+"'");
		}
		 
	  
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