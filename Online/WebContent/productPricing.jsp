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
     
     <br><br><br>
     <br>
     <center>
<form name="addProdPricing" action="addProdPricing.jsp" method="post">
	<button type="submit">Add New Product Pricing Details</button>
	</form>
<br><br>
<form name="viewProdPricing" action="viewProdPricing.jsp" method="post">
	<button type="submit">View Product Pricing Details</button>
	</form>
<br><br>
<form name="updateProdPricing" action="updateProdPricing.jsp" method="post">
	<button type="submit">Update Product Pricing Details</button>
	</form>
<br><br>
<form name="deleteProdPricing" action="deleteProdPricing.jsp" method="post">
	<button type="submit">Delete Product Pricing Details</button>
<br><br>
</form>
</body>
</html>