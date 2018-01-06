<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>



.stretch {
    width:120%;
    height:100%;
}








</style>


</head>
<body>

<header style="display:inline;">
    <img src="logo.png" align="left" width="15%" height="12%">
    <h1 align="center">SlipKART</h1>
  </header>
     <hr display="block"; margin-top: 0.5em;></hr><br><br><br>
<center>

<form name="Customer" action="customer_login.jsp" method="post">


	<td>
	<h1 Align="center" > Are You A Customer OR Staff</h1>
	<div style="width:104%;height:100%;position:absolute;vertical-align:middle;text-align:center;margin-top:6%">
	
	<button type="submit" class="name" style="height:100px; width:200px;"><h2>Customer</h2></button>
	</td>
	</div>

</form>
<br>
<br>
<br><br><br><br>
<br>
<br>
<div style="width:104%;height:100%;position:absolute;vertical-align:middle;text-align:center;margin-top:14%">
	
<form name="Staff" action="stafflogin.jsp" method="post">
	<td><button type="submit" style="height:100px;width:200px;"><h2>Staff</h2></button></td>
</div>
</form>
<br>
<br>

</center>
</body>
</html>