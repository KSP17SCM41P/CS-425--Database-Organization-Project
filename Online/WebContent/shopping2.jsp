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
 <%@page import ="java.sql.*" %>
 <%@page import =" javax.servlet.ServletException" %>
 <%@page import = "javax.servlet.annotation.WebServlet" %>
 <%@page import = "javax.servlet.http.HttpServlet" %>
 <%@page import = "javax.servlet.http.HttpServletRequest "%>
 <%@page import = "javax.servlet.http.HttpServletResponse "%>
<% 


try {
	ResultSet rs = null;
	ResultSet rs1 = null;
	ResultSet rs2= null;
	Integer i;
	String prodname= request.getParameter("ProdName");
	String qty = request.getParameter("qty");
	String uname= (String)session.getAttribute("uname");
	Integer totalamt =0;
	Integer subtotal=0;
	Integer uprice=0;
	Integer quantity=0;
	System.out.println(prodname);
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con= DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","kparchand","Cognizant13");
	 PreparedStatement ps = con.prepareStatement("SELECT CUSTID FROM CUSTOMER WHERE USERNAME = '"+uname+"'");
	 rs2= ps.executeQuery();
	 if(rs2.next())
	 {
	  i =Integer.parseInt(rs2.getString(1));
	 PreparedStatement p = con.prepareStatement("SELECT UNITPRICE FROM PRODPRICING WHERE PRODTNAME = '"+prodname+"'");
	 
	  rs1 = p.executeQuery();
	  
	  if(rs1.next())
	  {  
		  
		  String str = rs1.getString(1);
		  uprice = Integer.parseInt(str);
		  quantity = Integer.parseInt(qty);
		  totalamt= uprice* quantity;
		  subtotal= subtotal + totalamt;
		  System.out.println(subtotal);
		  System.out.println(totalamt);
		  
	 PreparedStatement pst = con.prepareStatement("INSERT INTO ORDERLIST (PRODNAME,QUANTITY,TOTALPRICE,SUBTOTAL,CUSTID) VALUES(?,?,?,?,?)");
	    pst.setString(1, prodname);
		pst.setString(2, qty);
		pst.setInt(3, totalamt);
		pst.setInt(4, subtotal);
		pst.setInt(5, i);
		 rs= pst.executeQuery();
		 if(rs.next())
		 {
			 out.print("Addition to cart done successfully");
			 response.sendRedirect("Shoporder.jsp");
		 }
	  }
}
}
catch (ClassNotFoundException e) {
	 e.printStackTrace();
	 }
%>
</body>
</html>