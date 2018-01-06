<%@ page language="java" session="true" contentType="text/html; charset=ISO-8859-1"
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
 				
 				String email	=	request.getParameter("email");
 				
 				String password	=	request.getParameter("passwrd");
 				
 				String fname	=	request.getParameter("fname");
 				
 				String lname	=	request.getParameter("lname");
   
 								  
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
 	 			
 	 			String creditcardnum = request.getParameter("creditcard_num");
 	 			
 	 			String cvv = request.getParameter("cvv");
 	 			
 	 			String dd = request.getParameter("day");
 	 			
 	 			String mm = request.getParameter("month");
 	 			
 	 			String yy = request.getParameter("year");
 	 			
 	 			ResultSet rs = null;
 	 			
 				

 				try {
 					Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
 					java.sql.Connection con= DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","kparchand","Cognizant13");
 					
 					PreparedStatement pst=(PreparedStatement) con.prepareStatement("INSERT INTO CUSTOMER(CUSTID,FNAME,LNAME,EMAIL,USERNAME,PASSWRD) values(seq_customer.nextval,?,?,?,?,?)");
 					//pst.setString(1,cid);
 					pst.setString(1, fname);
 					pst.setString(2, lname);
 					pst.setString(3, email);
 					pst.setString(4, uname);
 					pst.setString(5, password);
 					
				int i = pst.executeUpdate(); 
	 				if(i!=0)
 					{ 
 						pst=con.prepareStatement("select seq_customer.currval from dual");
						 rs = pst.executeQuery();
						 if(rs.next()){
						 String id = rs.getString(1);
						
						 if(atype.equals("PERMANENT"))
						 {
						 PreparedStatement psta=(PreparedStatement) con.prepareStatement("INSERT INTO ADDRESS(CUSTID,ADDRESSTYPE,STATES,CITY,STREET,ZIPCODE) values(?,?,?,?,?,?)");
		 					psta.setString(1, id);
		 					psta.setString(2, atype);
		 					psta.setString(3, astate);
		 					psta.setString(4, acity);
		 					psta.setString(5, astreet);
		 					psta.setString(6, azipcode);
		 					int j = psta.executeUpdate();
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
		 					int j = psta.executeUpdate();
						 }
						 
		 					PreparedStatement pstc=(PreparedStatement) con.prepareStatement("INSERT INTO CREDITCARD_INFO(CUSTID,CREDITCARD_NUM,EXPIRY_DATE,CVV) values(?,?,?,?)");
		 					pstc.setString(1, id);
		 					pstc.setString(2, creditcardnum);
		 					pstc.setString(3, dd+mm+yy);
		 					pstc.setString(4, cvv);
		 					
		 	 				int k = pstc.executeUpdate();
						 }
 					System.out.println("Record has been inserted"); 
 					session.setAttribute("uname", uname);
 					 response.sendRedirect("Customerhome.jsp");		
 					 
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