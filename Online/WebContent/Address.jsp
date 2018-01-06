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
<form name="address" action ="Addressnew.jsp">
<center>
Please enter below details
<table>
<tr>
<td>User name : </td>
       <td><input type="text" name="username"  value="" required autofocus placeholder="User Name" title="Please enter in more than three letters"/></td>

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
 
 <tr>
      <td><input type="submit" value="Submit " /> </td>
      </tr>
</table>
</center>
</form>
</body>
</html>