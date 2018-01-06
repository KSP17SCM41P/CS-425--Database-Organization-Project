<%@ page language="java" session="true" contentType="text/html; charset=ISO-8859-1"
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
     <br>
     
     <h1 align="center">Customer Login</h1>
<form name="customer_login" action="Clogin.jsp" method="get">

<table  cellspacing="5" border="2" width="30%" cellpadding="5" align="center" >
<tr>
	<td> Username</td>
	<td><input type="text" name="txtUName" required autofocus placeholder="Your Username" title="Please enter in more than three letters"/></td>
</tr>


<tr>
	<td> Password</td>
	<td><input type="password" name="txtPassword" required autofocus placeholder="Your Password" title="Please enter in more than five letters"/></td>
</tr>
		<td><button type="submit">Submit</button></td>
		<td><input type="reset" value="Reset" /></td>
	<tr>
		
		    <td colspan="2">Create Account<a href="Custegistration.jsp">Sign Up</a></td>
		</tr>
</form>

</body>
</html>