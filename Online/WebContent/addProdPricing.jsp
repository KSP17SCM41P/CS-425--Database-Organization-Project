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
     <br>
     <br><br>
     <h1 align="center"> Add Product Pricing</h1>
<center>
<form method="get" action="addProdPricingJdbc.jsp">
<br>
<br>
 <table>
  <tr>
      <td>Product Identification : </td>
       <td><input type="text" name="prodID"  value="" ></td>
</tr>
 <tr>
      <td>State : </td>
      <td><input type="text" name="state"  value=""/></td>
</tr>
<tr>
      <td>Product Price: </td>
       <td><input type="text" name="prodPrice"  value=""/></td>
</tr>
<tr>
      <td><input type="submit" value="Add Product Price" /> </td>
      <td><input type="reset" value="Reset" /></td>
      </tr>
      <tr>
      <td colspan="2"><a href = "index.jsp">Go to Home</a></td>
</tr>
</table>
</form>
</center>
</body>
</html>