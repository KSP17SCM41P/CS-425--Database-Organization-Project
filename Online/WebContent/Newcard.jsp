<%@ page language="java" session="true" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Credit card</title>
</head>
<body>

<header style="display:inline;">
    <img src="logo.png" align="left" width="15%" height="12%">
    <h1 align="center">SlipKART</h1>
  </header>
     <hr display="block"; margin-top: 0.5em;></hr>
<form name="add card" action="Newcardupdate.jsp" method="post">
<center>
<table>
<tr align="left" valign="top">
<td>Please fill in the below details :</td>
</tr>
<tr align="left" valign="top">
<td>User name : </td>
<td><input type="text" name="uname"  value="" required autofocus placeholder="User Name" title="Please enter in more than three letters"/></td>
</tr>
<tr align="left" valign="top">
      <td> Credit Card Number : </td>
      <td><input type="text" name="creditcard_num"  value="" required autofocus placeholder="Credit card number" title="Please enter only digits"/></td>
 </tr>
 <tr align="left" valign="top">
      <td> CVV : </td>
      <td><input type="text" name="cvv"  value="" required autofocus placeholder="CVV required" title="Please enter only digits"/></td>
 </tr>
 
<tr align="left" valign="top">
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
</select></td>
<td> Day
<select name="day" onchange="">
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
</select></td>
</tr>

<tr align="left" valign="top">

<td><button type="submit">Submit</button></td> 
<td><input type="button" onclick="history.go(-1)" value="Back"></td>
</tr>
</table></center>
</form>
</body>
</html>