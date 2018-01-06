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
<center>
<form name="warehouse" action="addwarehouse.jsp" method="post">
	<br>
	<br>
	<br>
	<br>
	<td>
	<button type="submit">Add Warehouse</button>
	</td>
	

</form>
<br>
<br>
<br>
<br>
<form name="Delete" action="deleteWarehouse.jsp" method="post">
	<button type="submit">Delete Warehouse</button>

</form>
<br>
<br>
<br>
<br>
<form name="modify" action="updateWarehouseID.jsp" method="post">
	<td><button type="submit">Modify Warehouse</button></td>

</form>
<br>
<br>
<br>
<br>
<form name="view" action="viewWareHouse.jsp" method="post">
	<td><button type="submit">View Warehouse</button></td>

</form>
</center>
</body>
</html>