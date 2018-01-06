<%@ page language="java" session="true" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Credit Card</title>
</head>
<body>
<%@page import = "java.io.IOException " %>
 <%@page import ="java.io.PrintWriter"%>
 <%@page import ="java.sql.*" %>


 <%@page import =" javax.servlet.ServletException" %>
 <%@page import = "javax.servlet.annotation.WebServlet" %>
 <%@page import = "javax.servlet.http.HttpServlet" %>
 <%@page import = "javax.servlet.http.HttpServletRequest "%>
 <%@page import = "javax.servlet.http.HttpServletResponse "%>

<% 
String username =request.getParameter("uname");
String id;
String number=request.getParameter("creditcard_num");
String cvv	=request.getParameter("cvv");
String dd = request.getParameter("day");
String mm = request.getParameter("month");
String yy = request.getParameter("year");
ResultSet rs =null;
 try {
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con= DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","kparchand","Cognizant13");
	 PreparedStatement psts = con.prepareStatement("SELECT CUSTID FROM CUSTOMER WHERE USERNAME='"+username+"'");
	 rs = psts.executeQuery();
	 if(rs.next()){
	  id = rs.getString(1);
	 
	PreparedStatement pstc=(PreparedStatement) con.prepareStatement("INSERT INTO CREDITCARD_INFO(CUSTID,CREDITCARD_NUM,EXPIRY_DATE,CVV) values(?,?,?,?)");
		pstc.setString(1, id);
		pstc.setString(2, number);
		pstc.setString(3, dd+mm+yy);
		pstc.setString(4, cvv);
		int k = pstc.executeUpdate();
		if(k!=0)
		{
		response.sendRedirect("Successcard.jsp");		
		}
		else 
		{
		System.out.println("failed to insert the data"); 
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