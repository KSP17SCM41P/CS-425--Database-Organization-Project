
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Staff Registration</title>
</head>
<body>


<header style="display:inline;">
    <img src="logo.png" align="left" width="15%" height="12%">
    <h1 align="center">SlipKART</h1>
  </header>
     <hr display="block"; margin-top: 0.5em;></hr>
     <center>
     <br>
     <br>
<form name="staff_register" action="SRegister.jsp" method="post">
<h1 align="center" font="Times New Roman" fontsize="6"  >Staff Registration</h1>
<table>
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
      <td>Job Title: </td>
      <td><input type="text" name="job_title"  value="" required autofocus placeholder="Job title" title="Please enter in more than three letters"/></td>
</tr>
 <tr>
      <td>Salary: </td>
      <td><input type="text" name="salary"  value="" required autofocus placeholder="Salary (in $)" title="Please enter only digits"/></td>
</tr>

<tr>
      <td>Street : </td>
       <td><input type="text" name="street"  value="" required autofocus placeholder="street" title="Please enter in more than three letters"/></td>
</tr>
 
<tr>
<td> City : </td>
<td>
<select name="city" onchange="">
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
<select name="state" onchange="">
<option value="Arizona">Arizona</option>
<option value="Florida">Florida</option>
<option value="California">California</option>
<option value="Illinois">Illinois</option>
<option value="Texas">Texas</option>
</select>  </td>
</tr>
 
 <tr>
      <td> Zipcode : </td>
      <td><input type="text" name="zipcode"  value="" required autofocus placeholder="Zipcode" title="Please enter only digits"/></td>
 </tr>
 
 <tr>
      <td><input type="submit" value="Submit " /> </td>
      <td><input type="reset" value="Reset" /></td>
      </tr>
      <tr>
      <td colspan="2"><a href = "Staff_login.jsp"> Click to go Back</a></td>
</tr>
</table>
</form>

</body>
</html>