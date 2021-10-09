<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="saveRegister.jsp" method="post">
		<table border="2">
			<tr>
				<td> name :</td>
				<td><input type="text" name="name" value=""></td>
			</tr>
			<tr>
				<td> email :</td>
				<td><input type="text" name="email" value=""></td>
			</tr>
			<tr>
				<td> password :</td>
				<td><input type="text" name="password" value=""></td>
			</tr>
			<tr>
				<td> country :</td>
				<td><select name="country">
					<option>india </option>
					<option>uk </option>
					<option>usa  </option>
					<option>other </option>
					</select>
				</td>
			</tr>
			<tr>
			<td colspan="2"><center><input type="submit" value="save details"/>
			</center></td>
			</tr>
			<tr>
			<td colspan="2"><center><a href="Viewdata.jsp"> view data </a>
			</center></td>
			</tr>
		</table>
		
	</form>
	
</body>
</html>