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
String sid = request.getParameter("id");
int id = Integer.parseInt(sid);
try {
	PreparedStatement ps = con.prepareStatement("delete from emp11 where id=?");
	ps.setInt(1,id);
	ps.executeUpdate();

} catch (Exception e) {
	// TODO: handle exception
}
response.sendRedirect("Viewdata.jsp");



%>

</body>
</html>