<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

<header style="display:inline;">
    <img src="logo.png" align="left" width="15%" height="12%">
    <h1 align="center">SlipKART</h1>
  </header>
     <hr display="block"; margin-top: 0.5em;></hr>
     <br><br>
<center ><h1>New Warehouse Registration</h1></center>


<form method="get" action="addwarehousejdbc.jsp">
<br>
<br>
 <table  cellspacing="5" border="1" width="30%" cellpadding="5" align="center" >

<tr>
      <td>Warehouse Size : </td>
       <td><input type="text"   name="wsize" placeholder="in cubic meter" value="" ></td>
</tr>
 
     
<tr>
      <td>Street </td>
       <td><input type="text" name="wstreet" placeholder="street name"  value=""/></td>
</tr>
 <tr>
      <td>City : </td>
       <td><input type="text" name="wcity" placeholder="city name" value=""/></td>
</tr>
 <tr>
      <td>State :</td>
      <td><input type="text" name="wstate" placeholder="state name" value=""/></td>
 </tr>
<tr>
      <td>Zipcode :</td>
      <td><input type="text" name="wzipcode" placeholder="zipcode" value=""/></td>
 </tr>

 <tr>
      <td><input type="submit" value="Add Warehouse" /> </td>
      <td><input type="reset" value="Reset" /></td>
      </tr>
 </table>
 </form>
 </center>
</body>
</html>