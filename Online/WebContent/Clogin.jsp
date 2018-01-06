<%@ page language="java" session="true" contentType="text/html; charset=ISO-8859-1"
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
 <%@page import ="java.sql.DriverManager" %>
 <%@page import ="java.sql.PreparedStatement"%>

 <%@page import =" javax.servlet.ServletException" %>
 <%@page import = "javax.servlet.annotation.WebServlet" %>
 <%@page import = "javax.servlet.http.HttpServlet" %>
 <%@page import = "javax.servlet.http.HttpServletRequest "%>
 <%@page import = "javax.servlet.http.HttpServletResponse "%>
<%@page import ="java.sql.ResultSet"%>
 <%@page import= " com.mysql.jdbc.Connection" %>
 <%

try
{	   
	   
	  
	   String username = request.getParameter("txtUName");
	   String passwd = request.getParameter("txtPassword");
	   session.setAttribute("Username", username);
	   ResultSet rs = null;
	   boolean status = false;

			Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
			java.sql.Connection con= DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","kparchand","Cognizant13");
	    
			PreparedStatement pst = con.prepareStatement("SELECT * FROM CUSTOMER WHERE USERNAME=? AND PASSWRD=?");
			pst.setString(1, username);
            pst.setString(2, passwd);
			rs = pst.executeQuery();
            status = rs.next();
     if(status!=false)
     {
    	 session.setAttribute("uname", username);
    	 response.sendRedirect("Customerhome.jsp"); //logged-in page      		
     }
	        
     else 
          response.sendRedirect("invalidLogin.jsp"); //error page 
} 
		
		
catch (Throwable theException) 	    
{
     System.out.println(theException); 
}
       
	
 %>
</body>
</html>