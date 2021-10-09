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
String sid = request.getParameter("sid");
String name = request.getParameter("sname");

if(sid != ""){
	int id = Integer.parseInt(sid);
	PreparedStatement ps = con.prepareStatement("select * from emp11 where id = ? ");
	ps.setInt(1,id);
	ResultSet rs = ps.executeQuery();
	if(rs.next()){
	id=rs.getInt(1);
	name = rs.getString(2);
	email = rs.getString(3);
	password = rs.getString(4);
	country = rs.getString(5);
	}

}else{
	PreparedStatement ps = con.prepareStatement("select * from emp11 where name = ? ");
	ps.setString(1,name);
	ResultSet rs = ps.executeQuery();
	if(rs.next()){
	id=rs.getInt(1);
	name = rs.getString(2);
	email = rs.getString(3);
	password = rs.getString(4);
	country = rs.getString(5);
	}

}

%>
	
	<table border='2'>
		<tr>
		<th> id </th>
		<th> name </th>
		<th> email </th>
		<th> password </th>
		<th> country </th>
		<th> edit </th>
		<th> delete </th>
		</tr>
		<tr>
		<td><% out.print(id); %></td>
		<td><% out.print(name); %></td>
		<td><% out.print(email); %></td>
		<td><% out.print(password); %></td>
		<td><% out.print(country); %></td>
		<td><a href=Edit.jsp?id=<%=id %>>edit</td>
		<td><a href=Delete.jsp?id=<%=id %>>delete</a></td>
			
		</tr>
	</table>

</body>
</html>