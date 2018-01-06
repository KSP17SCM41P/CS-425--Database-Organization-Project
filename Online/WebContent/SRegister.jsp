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

 			    String uname	=	request.getParameter("username");
 				
 				String job	=	request.getParameter("job_title");
 				
 				String password	=	request.getParameter("passwrd");
 				
 				String fname	=	request.getParameter("fname");
 				
 				String lname	=	request.getParameter("lname");
   				
 				String salary  =  request.getParameter("salary");
 				  
 	 			String state	=	request.getParameter("state");
 	 				
 	 			String city	   =	request.getParameter("city");
 	 				
 	 			String street	=	request.getParameter("street");
 	 				
 	 			String zipcode	=	request.getParameter("zipcode");
 	 			
 	 			ResultSet rs = null;

 				try {
 					Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
 					java.sql.Connection con= DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","kparchand","Cognizant13");
 					
 					PreparedStatement pst=(PreparedStatement) con.prepareStatement("INSERT INTO STAFF(STAFFID,FNAME,LNAME,JOB_TITLE,SALARY,CITY,STREET,STATE,ZIPCODE,USERNAME,PASSWRD) values(seq_staff.nextval,?,?,?,?,?,?,?,?,?,?)");
 					//pst.setString(1, sid);
 					pst.setString(1, fname);
 					pst.setString(2, lname);
 					pst.setString(3, job);
 					pst.setString(4, salary);
 					pst.setString(5, city);
 					pst.setString(6, street); 
 					pst.setString(7,state); 
 					pst.setString(8, zipcode);
 					pst.setString(9,uname);
 					pst.setString(10, password);
 					int i = pst.executeUpdate(); 
 					
 					if(i!=0)
 					{ 
 						pst=con.prepareStatement("select seq_staff.currval from dual");
						 rs = pst.executeQuery();
						 if(rs.next()){
						 String id = rs.getString(1);
						 }
 					System.out.println("Record has been inserted"); 
 					response.sendRedirect("Staffhomepage.jsp");		
 					 
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