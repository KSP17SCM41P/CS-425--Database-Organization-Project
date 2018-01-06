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
 <%@page import ="java.sql.DriverManager" %>
 <%@page import ="java.sql.PreparedStatement"%>
 <%@page import ="java.sql.ResultSet"%>

 <%@page import =" javax.servlet.ServletException" %>
 <%@page import = "javax.servlet.annotation.WebServlet" %>
 <%@page import = "javax.servlet.http.HttpServlet" %>
 <%@page import = "javax.servlet.http.HttpServletRequest "%>
 <%@page import = "javax.servlet.http.HttpServletResponse "%>;

 <%@page import= "com.mysql.jdbc.Connection" %>
 <%
				String prodID = request.getParameter("prodID");	
 			    String state	=	request.getParameter("state");
 				
 				String prodPrice	=	request.getParameter("prodPrice");
 				
 				ResultSet rs = null;
 				
 				
 		          
 				try {
 					Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
 					java.sql.Connection con= DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","ithakur1","YCsBUo3...uK3Z17");
 					
 					PreparedStatement pst=(PreparedStatement) con.prepareStatement("INSERT INTO productPricing (prodID,state,prodPrice) values(?,?,?)");
 					pst.setString(1,prodID);
 					pst.setString(2, state);
 					pst.setString(3, prodPrice);
 					int i = pst.executeUpdate(); 
 					if(i!=0)
 					{ 					
 					System.out.println("Record has been inserted"); 
 					response.sendRedirect("successProdPricing.jsp");		
 					 
 					} 
 					else
 					{ 
 					System.out.println("failed to insert the data"); 
 					} 
 					} 
 					catch (Exception e)
 					{ 
 					System.out.println(e); 
 					}

 %>
</body>
</html>