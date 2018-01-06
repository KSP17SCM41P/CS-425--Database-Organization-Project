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
     
     <br><br>
<center>
<form name="stock" action="addStockID.jsp" method="post">
	<br>
	<br>
	<br>
	<br>
	<td>
	<button type="submit">Add Stock</button>
	</td>
	

</form>
<br>
<br>
<br>
<br>
<form name="delete" action="deleteStock.jsp" method="post">
	<button type="submit">Delete Stock</button>

</form>
<br>
<br>
<br>
<br>
<form name="modify" action="updateStockID.jsp" method="post">
	<td><button type="submit">Modify Stock</button></td>

</form>
<br>
<br>
<br>
<br>
<form name="view" action="viewStock.jsp" method="post">
	<td><button type="submit">View Stock</button></td>

</form>
</center>
</body>
</html>