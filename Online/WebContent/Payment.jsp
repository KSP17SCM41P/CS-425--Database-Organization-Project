<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
</head>
<body>

<header style="display:inline;">
    <img src="logo.png" align="left" width="15%" height="12%">
    <h1 align="center">SlipKART</h1>
  </header>
     <hr display="block"; margin-top: 0.5em;></hr>
<h5 align="right">Logged in as <%= session.getAttribute( "uname" )  %><br>
<a href='Logout.jsp'>Log out</a></h5>

 <form action="TransactionSuccess.jsp" method="post"> 
 <table >
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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
 
<%

ResultSet rs = null;
Integer tamt = 0;
Integer i;

%>

<tr>
<td><b>ProductNo</b></td>
<td><b>ProductName</b></td>
<td><b>Product type</b></td>
<td><b>Quantity</b></td>
<td><b>Amount</b></td>
</tr>
<%String usern = (String)session.getAttribute("uname");
try{ 
	
	Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
	java.sql.Connection con= DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","kparchand","Cognizant13");
	Statement st = null;	
	st= con.createStatement();
	 
	 System.out.println(usern);
	 String sqlQuery = "SELECT PRODUCT.PRODID,ORDERLIST.PRODNAME,ORDERLIST.QUANTITY,ORDERLIST.TOTALPRICE,ORDERLIST.SUBTOTAL FROM PRODUCT,ORDERLIST,CUSTOMER WHERE PRODUCT.PRODNAME=ORDERLIST.PRODNAME  AND ORDERLIST.CUSTID=CUSTOMER.CUSTID AND ORDERLIST.CUSTID IN(SELECT CUSTOMER.CUSTID FROM CUSTOMER JOIN ORDERLIST ON CUSTOMER.CUSTID=ORDERLIST.CUSTID AND CUSTOMER.USERNAME= '" + usern + "')";
	 rs = st.executeQuery(sqlQuery);

while(rs.next()){
%>

<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2)  %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
</tr>

<% 
 i = Integer.parseInt(rs.getString(5));
tamt=tamt+i;
//System.out.println(tamt);
//System.out.println(i);
request.setAttribute("res", tamt);
}

} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}

%>
<tr>
    <td> Delivery Address</td>
</tr>
<tr>
    <td>Street : </td>
    <td><input type="text" name="dstreet"  value="" required autofocus placeholder="street" title="Please enter in more than three letters"/></td>
</tr>
 
<tr>
   <td> City : </td>
   <td>
<select name="dcity" onchange="">
<option value="Chicago">Chicago</option>
<option value="Houston">Houston</option>
<option value="Los Angels">LosAngels</option>
<option value="San Diego">SanDiego</option>
<option value="Phoneix">Phoniex</option>

</select>  </td>
</tr>
<tr>
<td> State : </td>
<td>
<select name="dstate" onchange="">
<option value="Arizona">Arizona</option>
<option value="Florida">Florida</option>
<option value="California">California</option>
<option value="Illinois">Illinois</option>
<option value="Texas">Texas</option>

</select>  </td>
</tr>
 
 <tr>
   <td> Zipcode: </td>
    <td><input type="text" name="dzipcode"  value="" required autofocus placeholder="Zipcode" title="Please enter only digits"/></td>
 </tr>

<tr></tr>
<tr></tr>
<tr>
<td><b>Choose Delivery Options  </b></td> </tr>
<tr>
 <td><input type="radio" name="dtype" value="FREEONE"/>FREE- One day Shipping</td></tr>
     <tr> <td><input type="radio" name="dtype" value="FREE"/>FREE- Standard shipping (7-8 days)</td></tr>
       <tr><td><input type="radio" name="dtype" value="CHARGE"/> One day Shipping</td></tr>


<tr>
<td>Choose Credit Card for payment</td>

<tr>
<td><b>Credit Card Type</b></td>
<td><b>Credit card Name</b></td>
<td><b>Expiry Date</b></td>
<td><b>Total Amount</b></td>

</tr>
<%@page import ="java.io.IOException" %>
 <%@page import ="java.io.PrintWriter"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import ="java.sql.PreparedStatement"%>

<%@page import ="javax.servlet.ServletException"%>
<%@page import ="javax.servlet.annotation.WebServlet"%>
<%@page import ="javax.servlet.http.HttpServlet"%>
<%@page import ="javax.servlet.http.HttpServletRequest"%>
<%@page import ="javax.servlet.http.HttpServletResponse"%>


<%@page import ="java.sql.*"%>
<%@page import ="javax.servlet.*"%>
 <% 

				try {
					ResultSet rs1 = null;
					Class.forName("oracle.jdbc.driver.OracleDriver").newInstance(); 
					java.sql.Connection con= DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","kparchand","Cognizant13");
					Statement st = null;	
					st= con.createStatement();
					
					
					rs1 = st.executeQuery("SELECT CREDITCARD_NUM, EXPIRY_DATE FROM CREDITCARD_INFO , CUSTOMER WHERE CREDITCARD_INFO.CUSTID = CUSTOMER.CUSTID AND CUSTOMER.USERNAME= '" + usern + "' ");
					while(rs1.next()){
					
					%>
					<tr>
					<td><select name="cardtype" onchange="">
					<option value="Visa">Visa</option>
					<option value="Master">Master</option>
					<option value="Mastero">Mastero</option>
					</select></td>
					<td><%=rs1.getString(1) %></td>
					<td><%=rs1.getString(2)  %></td>
					<td>${res}</td>
					</tr>
					<%
					
					}
					
 					
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
					}
			
%>

</tr>

<tr>
	<td><input type="submit" name="Submit" value="SUBMIT"></td>
</tr>

</table>
</form>
</body>
</html>