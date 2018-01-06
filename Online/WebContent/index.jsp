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
     <hr display="block"; margin-top: 0.5em;></hr><br><br><br>
<left>
<form name="viewStaff" action="viewStaffID.jsp" method="post">
	<button type="submit">View Profile</button>

</form>

<form name="updateStaff" action="updateStaffID.jsp" method="post">
	<button type="submit">Update Profile</button>

</form>
</left>
<center>
<form name="warehouse" action="warehouseindex.jsp" method="post">
	
	<td>
	<button type="submit">Warehouse</button>
	</td>
	

</form>
<br>
<br>
<br>
<br>
<form name="stock" action="stockIndex.jsp" method="post">
	<button type="submit">Stock</button>

</form>
<br>
<br>
<br>
<br>
<form name="productPricing" action="productPricing.jsp" method="post">
	<td><button type="submit">Product Pricing</button></td>

</form>
<br>
<br>
<br>
<br>
<form name="product" action="product.jsp" method="post">
	<td><button type="submit">Product Details</button></td>

</form>
</center>
</body>
</html>