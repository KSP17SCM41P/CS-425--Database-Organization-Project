<%@ page language="java" session="true" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111;
}



</style>
</head>

<body>


<header style="display:inline;">
    <img src="logo.png" align="left" width="15%" height="12%">
    <h1 align="center">SlipKART</h1>
  </header>
<form action = "shopping.jsp">
<div id="div2">
<p align="center" ><b><u>Customer Home Page</u></b></p>
<p align="right">Logged in as : <%=session.getAttribute("uname")%></p>
<ul>
<li><a href="Customerhome.jsp">HomePage</a></li>
<li><a href="Custegistration.jsp">View Profile</a></li>
<li><a href="Custegistration.jsp">Orders</a></li>
<li><a href="CustomerUpdate.jsp">Edit Profile</a></li>
<li><a href="Payment.jsp">Shopping Cart</a></li>
<li><a href="Logout.jsp">Logout</a></li>
</ul>


<%@page import = "java.io.IOException " %>
 <%@page import ="java.io.PrintWriter"%>
 <%@page import ="java.sql.*" %>
<%@page import =" javax.servlet.ServletException" %>
 <%@page import = "javax.servlet.annotation.WebServlet" %>
 <%@page import = "javax.servlet.http.HttpServlet" %>
 <%@page import = "javax.servlet.http.HttpServletRequest "%>
 <%@page import = "javax.servlet.http.HttpServletResponse "%>
<%
String prodname;
String arr[] = new String[10];
int i=0,n=0;
ResultSet rs =null;
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con= DriverManager.getConnection("jdbc:oracle:thin:@fourier.cs.iit.edu:1521:orcl","kparchand","Cognizant13");
PreparedStatement psts = con.prepareStatement("SELECT PRODNAME FROM PRODUCT");
rs = psts.executeQuery();
while(rs.next())
{
	arr[i]=rs.getString(1);
	i++;
	n=i;
}
System.out.println(n);
//for(i=0;i<n;i++)
//{
	//out.print(""+arr[i]+"<br>");


//}
}
catch (ClassNotFoundException e) {
	 e.printStackTrace();
}
%>

<body>


   <form name="first"  action="shopping.jsp" method="post">
    <IMG  SRC="apple.jpeg" ALT="" WIDTH=20% HEIGHT=20%> 
    <p>
   Product Name : <% out.print(""+arr[0]+"<br>");%><input type="hidden" name="ProdName" value="<%=arr[0]%>"> 
    
    		
    <br><br>
    <tr>
    <td>  Select Quantity : </td>
    <td>
    <select name="qty" onchange="">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    </select>  </td>
    </tr>
    </p>
    <input type="submit" name="first" value="Add to Cart">
    <br><br>
   
</form>
 
 <form name="second" action="shopping1.jsp" method="post">
    <IMG  SRC="banana.jpeg" ALT="" WIDTH=20% HEIGHT=20%> 
    <p>
    Product Name : <% out.print(""+arr[1]+"<br>");%><input type="hidden" name="ProdName" value="<%=arr[1]%>"> 
    
    <br><br>
    <tr>
    <td>  Select Quantity : </td>
    <td>
    <select name="qty" onchange="">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    </select>  </td>
    </tr>
    </p>
    <input type="submit" name= "second" value="Add to Cart"> 
    
   <br><br><br>
    
     
    </form>
    
    
<form name="third" action="shopping2.jsp" method="post">
    <IMG  SRC="milk.jpeg" ALT="" WIDTH=20% HEIGHT=20%> 
    <p>
    Product Name : <% out.print(""+arr[2]+"<br>");%><input type="hidden" name="ProdName" value="<%=arr[2]%>"> 
    
    <br><br>
    <tr>
    <td>  Select Quantity : </td>
    <td>
    <select name="qty" onchange="">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    </select>  </td>
    </tr>
    </p>
    <input type="submit" name= "second" value="Add to Cart"> 
    </div>
    <br><br><br>
    
     
    </form>
    
<form name="four" action="shopping3.jsp" method="post">
    <IMG  SRC="egg.jpeg" ALT="" WIDTH=20% HEIGHT=20%> 
    <p>
    Product Name : <% out.print(""+arr[3]+"<br>");%><input type="hidden" name="ProdName" value="<%=arr[3]%>"> 
    
    <br><br>
    <tr>
    <td>  Select Quantity : </td>
    <td>
    <select name="qty" onchange="">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    </select>  </td>
    </tr>
    </p>
    <input type="submit" name= "second" value="Add to Cart"> 
    <br><br><br>
    </form>



</form>
</body>
</html>