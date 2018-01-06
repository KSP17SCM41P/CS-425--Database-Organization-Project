<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
String id;
int j,k;

String uname	=	request.getParameter("username");

String atype	=	request.getParameter("atype");
	
	String btype = request.getParameter("btype");
		
	String astate	=	request.getParameter("astate");
		
	String acity	   =	request.getParameter("acity");
		
	String astreet	=	request.getParameter("astreet");
		
	String azipcode	=	request.getParameter("azipcode");
	
	String bstate	=	request.getParameter("bstate");
		
	String bcity	   =	request.getParameter("bcity");
		
	String bstreet	=	request.getParameter("bstreet");
		
	String bzipcode	=	request.getParameter("bzipcode");
ResultSet rs =null;
 try {
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con= DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","kparchand","Cognizant13");
	 PreparedStatement psts = con.prepareStatement("SELECT CUSTID FROM CUSTOMER WHERE USERNAME='"+uname+"'");
	 rs = psts.executeQuery();
	 if(rs.next()){
	  id = rs.getString(1);
	 if(atype.equals("PERMANENT"))
	 {
	 PreparedStatement psta=(PreparedStatement) con.prepareStatement("INSERT INTO ADDRESS(CUSTID,ADDRESSTYPE,STATES,CITY,STREET,ZIPCODE) values(?,?,?,?,?,?)");
			psta.setString(1, id);
			psta.setString(2, atype);
			psta.setString(3, astate);
			psta.setString(4, acity);
			psta.setString(5, astreet);
			psta.setString(6, azipcode);
			 j = psta.executeUpdate();
	 }
	 if(btype.equals("DELIVERY"))
	 {
	 PreparedStatement psta=(PreparedStatement) con.prepareStatement("INSERT INTO ADDRESS(CUSTID,ADDRESSTYPE,STATES,CITY,STREET,ZIPCODE) values(?,?,?,?,?,?)");
			psta.setString(1, id);
			psta.setString(2, btype);
			psta.setString(3, bstate);
			psta.setString(4, bcity);
			psta.setString(5, bstreet);
			psta.setString(6, bzipcode);
			 k = psta.executeUpdate();
	 }
	 out.print("Updation done successfully");
	 %>
	 <a href = "CustomerUpdate.jsp">Continue to Edit Profile</a><%
	 }
	 
 }
 catch (ClassNotFoundException e) {
	 e.printStackTrace();
	 }


%>
</body>
</html>




