<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">
	function validate() {
		var a = document.getElementById("prodName").value;

		if (a == "" || a == null) {
			alert('Please enter Product Name!!');
			return false;
		}

		var a = document.getElementById("prodType").value;
		if (a == "" || a == null) {
			alert('Please enter Product Type!!');
			return false;
		}

		var a = document.getElementById("availQty").value;
		if (a == "" || a == null) {
			alert('Please enter Available Quantity');
			return false;
		}
		if (isNaN(a)) {
			alert('Please enter valid Quantity(only numeric)!!');
			return false;
		}
		if (a == 0) {
			alert('Quantity cannot be zero!!');
			return false;
		}

		var a = document.getElementById("prodSize").value;
		if (a == "" || a == null) {
			alert('Please enter Product Size!!');
			return false;
		}
		if (isNaN(a)) {
			alert('Please enter valid Product Size(only numeric)!!');
			return false;
		}
		if (a == 0) {
			alert('Size cannot be zero!!');
			return false;
		}
		
	}
</script>
<title>New Product Registration</title>
</head>
<body>


<header style="display:inline;">
    <img src="logo.png" align="left" width="15%" height="12%">
    <h1 align="center">SlipKART</h1>
  </header>
     <hr display="block"; margin-top: 0.5em;></hr>
     <br><br>
     <h1 align="center">Add Product</h1>
<center>
<form method="get" action="addProductJdbc.jsp" onSubmit="return validate()">
<br>
<br>
 <table>
 <!--  <tr>
      <td>Product Identification : </td>
       <td><input type="text" name="prodID"  value="" ></td>
</tr>-->
 <tr>
      <td>Product name : </td>
      <td><input type="text" name="prodName" id="prodName" value=""/></td>
</tr>
<tr>
      <td>Product Type: </td>
       <td><input type="text" name="prodType"  id="prodType" value=""/></td>
</tr>
 <tr>
      <td>Available Quantity : </td>
       <td><input type="text" name="availQty" id="availQty" value=""/></td>
</tr>
 <tr>
      <td>Product Size :</td>
      <td><input type="text" name="prodSize"  id="prodSize" value=""/></td>
 </tr>
 
 <tr>
      <td><input type="submit"  value="Add Product " /> </td>
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