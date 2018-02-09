<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<html>
    <body>
    <head><title>Login Error</title></head>
<%
String username = request.getParameter("Username");
String strigng=request.getParameter("Password");
try{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/rcs","root","");
	Statement statement=connection.createStatement();
	ResultSet resultSet=statement.executeQuery("SELECT * FROM user WHERE Uname = '"+username+"' AND Password = '"+strigng+"'");
	if(resultSet.next()){
		response.sendRedirect("employeeview.jsp");
	}
	else{
		out.print("There was no match found for the entered username and password. Please <a href='signin.jsp'>go back</a>, check and try again.");
	}
	
	
}

catch(Exception ecException){ecException.getMessage();}






%>
    </body>
</html>