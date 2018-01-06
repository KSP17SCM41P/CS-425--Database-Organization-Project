
<%@ page language="java" session ="true" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration</title>
</head>
<body>

<header style="display:inline;">
    <img src="logo.png" align="left" width="15%" height="12%">
    <h1 align="center">SlipKART</h1>
  </header>
     <hr display="block"; margin-top: 0.5em;></hr>
<center>
<br>
<form name="customer_register" action="Register.jsp" method="post">
<h1  font="Times New Roman" fontsize="6"  >Customer Registration</h1>
<table align="center">

              
<tr>
Please fill in the below details :
<tr>
	<td>First name : </td>
      <td><input type="text" name="fname"  value="" required autofocus placeholder="First Name" title="Please enter in more than three letters"/></td>

</tr>

<tr>
      <td>Last name : </td>
       <td><input type="text" name="lname"  value="" required autofocus placeholder="Last Name" title="Please enter in more than three letters"/></td>
</tr>
 <tr>
      <td>User name : </td>
       <td><input type="text" name="username"  value="" required autofocus placeholder="User Name" title="Please enter in more than three letters"/></td>
</tr>
 <tr>
      <td>Password</td>
      <td><input type="password" name="passwrd"  value=""/></td>
 </tr>
 <tr>
      <td>Email: </td>
      <td><input type="text" name="email"  value="" required autofocus placeholder="Email" title="Please enter in more than three letters"/></td>
</tr>

<tr>
      <td> <b>Permanent Address : </b></td>
     <td> <input type="radio" name="atype" value="PERMANENT"/>Yes</td>
      <td><input type="radio" name="atype" value=""/>No</td>
</td>
 <tr>
<td>Street : </td>
<td><input type="text" name="astreet"  value="" required autofocus placeholder="street" title="Please enter in more than three letters"/></td>
</tr>
 
<tr>
<td> City : </td>
<td>
<select name="acity" onchange="">
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
<select name="astate" onchange="">
<option value="Arizona">Arizona</option>
<option value="Florida">Florida</option>
<option value="California">California</option>
<option value="Illinois">Illinois</option>
<option value="Texas">Texas</option>

</select>  </td>
</tr>
 
 <tr>
      <td> Zip code : </td>
      <td><input type="text" name="azipcode"  value="" required autofocus placeholder="Zipcode" title="Please enter only digits"/></td>
 </tr>
      
      

<tr>
<td><b>Delivery Address  </b></td>
 <td><input type="radio" name="btype" value="DELIVERY"/>Yes</td>
      <td><input type="radio" name="btype" value=""/>No</td>

</tr>
<tr>
      <td>Street : </td>
       <td><input type="text" name="bstreet"  value="" required autofocus placeholder="street" title="Please enter in more than three letters"/></td>
</tr>
 
<tr>
<td> City : </td>
<td>
<select name="bcity" onchange="">
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
<select name="bstate" onchange="">
<option value="Arizona">Arizona</option>
<option value="Florida">Florida</option>
<option value="California">California</option>
<option value="Illinois">Illinois</option>
<option value="Texas">Texas</option>

</select>  </td>
</tr>
 
 <tr>
      <td> Zip code : </td>
      <td><input type="text" name="bzipcode"  value="" required autofocus placeholder="Zipcode" title="Please enter only digits"/></td>
 </tr>
 <tr>
      <td> Credit Card Number : </td>
      <td><input type="text" name="creditcard_num"  value="" required autofocus placeholder="Credit card number" title="Please enter only digits"/></td>
 </tr>
 <tr>
      <td> CVV : </td>
      <td><input type="text" name="cvv"  value="" required autofocus placeholder="CVV required" title="Please enter only digits"/></td>
 </tr>
 
 <tr>
<td> Expiry Date : </td>
<td> Year
<select name="year" onchange="">
<option value="2018">2018</option>
<option value="2019">2019</option>
<option value="2020">2020</option>
<option value="2021">2021</option>
<option value="2022">2022</option>
</select></td>
<td> Month
<select name="month" onchange="">
<option value="Jan">Jan</option>
<option value="Feb">Feb</option>
<option value="Mar">Mar</option>
<option value="Apr">Apr</option>
<option value="May">May</option>
<option value="Jun">Jun</option>
<option value="Jul">Jul</option>
<option value="Aug">Aug</option>
<option value="Sep">Sep</option>
<option value="Oct">Oct</option>
<option value="Nov">Nov</option>
<option value="Dec">Dec</option>
</select>  </td>
<td> Day
<select name="day" onchange="">
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
</select>  </td>
</tr>
 <tr>
 <%@page import = "javax.servlet.http.HttpServlet" %>
 <%@page import = "javax.servlet.http.HttpServletRequest "%>
 <%@page import = "javax.servlet.http.HttpServletResponse "%>;
 <%
 
 String name = request.getParameter("username");
 
 %></tr>
 <tr></tr>
 <tr>
      <td><input type="submit" value="Submit " /> </td>
      <td><input type="reset" value="Reset" /></td>
      </tr>
      <tr>
      <td colspan="2"><a href = "Customer_login.jsp"> Click to go Back</a></td>
</tr>
</table>
</form>

</body>
</html>
</body>
</html>