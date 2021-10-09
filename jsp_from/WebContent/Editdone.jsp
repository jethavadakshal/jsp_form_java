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
String name= request.getParameter("name");
String email= request.getParameter("email");
String password= request.getParameter("password");	
String country= request.getParameter("country");

try {
	PreparedStatement ps1 = con.prepareStatement("update emp11 set name=?,email=?,password=?,country=? where id=?");
	ps1.setString(1,name);
	ps1.setString(2,email);
	ps1.setString(3,password);
	ps1.setString(4,country);
	ps1.setInt(5,id);
	ps1.executeUpdate();
	out.print("record updated");
} catch (Exception e) {
	e.printStackTrace();
}
RequestDispatcher rd = request.getRequestDispatcher("Viewdata.jsp");
rd.include(request, response);



%>

</body>
</html>