<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="connection.jsp" %>
<%! int id; %>
<%! String name,email,password,country; %>
<%
String sid = request.getParameter("id");
int id = Integer.parseInt(sid);
	PreparedStatement ps = con.prepareStatement("select * from emp11 where id = ?");
	ps.setInt(1,id);
	ResultSet rs = ps.executeQuery();
		if(rs.next()){
		id=rs.getInt(1);
		name = rs.getString(2);
		email = rs.getString(3);
		password = rs.getString(4);
		country = rs.getString(5);
		
	}
	%>
	<form action='Editdone.jsp' method='post'>
	<table border='2'>
	<tr>
	<td> </td>
			<td><input type='hidden' name='id' value=<%= id %>></td>
	</tr>
	<tr>
	<td>name </td>
			<td><input type='text' name='name' value=<% out.print(name); %>></td>
	</tr>
	<tr>
	<td>email </td>
			<td><input type='text' name='email' value=<% out.print(email); %>></td>
	</tr>
	<tr>
	<td>password </td>
			<td><input type='text' name='password' value=<% out.print(password); %>></td>
	</tr>
	
	<tr>	
	<td> country :</td>	
	<td><select name='country'>
	<option>india </option>			
	<option>uk </option>
	<option>usa </option>
	<option>other </option>
	</select>	
	</td>		
	</tr>	
	<tr>		
	<td colspan='2'><center><input type='submit' value='update record'/>		
	</center></td>
	</tr>		
	</table>
	</form>
</body>
</html>