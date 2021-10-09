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

	<%
	try {
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from emp11");
		out.println("<html>");
		out.print("<table border='2'>");
		out.print("<tr>");
		out.print("<th> id </th>");
		out.print("<th> name </th>");
		out.print("<th> email </th>");
		out.print("<th> password </th>");
		out.print("<th> country </th>");
		out.print("<th> edit </th>");
		out.print("<th> delete </th>");
		out.print("</tr>");
		while(rs.next()) {
			int id = rs.getInt("id");
			out.print("<tr>");
			out.print("<td>" +rs.getInt("id")+"</td>");
			out.print("<td> " +rs.getString("name")+ "  </td>");
			out.print("<td>"  +rs.getString("email")+"</td>");
			out.print("<td> " +rs.getString("password")+"</td>");
			out.print("<td> " +rs.getString("country")+"</td>");
			out.print("<td><a href=Edit.jsp?id="+id+">edit</td>");
			out.print("<td> <a href=Delete.jsp?id="+id+">delete</a></td>");
			out.print("</tr>");
				
		}
	} catch (Exception e) {
		// TODO: handle exception
	}
	out.print("<a href='index.jsp'> insert record</a>");
	%>
	<form action="Search.jsp" method="post">
	<br>Id : <input type="text" name="sid">or
	Name :<input type="name" name="sname"><br>
	<input type="submit" value="search">
	</form>
</body>
</html>