<%-- 
    Document   : insertdata
    Created on : 15-Jun-2017, 16:05:24
    Author     : Asabir
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertion Page</title>
    </head>
    <body>
              <%
            String Fname= request.getParameter("Fname");
            String Lname= request.getParameter("Lname");
            String DOB= request.getParameter("DOB");
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rcs", "root","");
        Statement st = con.createStatement();
     
        
        st.executeUpdate("insert into employee(Fname , Lname , DOB  ) value('"+Fname+"' , '"+Lname+"' , '"+DOB+"' )");
        out.println("You have added a new application" + " <a href='application.jsp'>Go back to Admin page</a>");
        }catch(Exception e){
            out.println(e);
        
        }
        
        
        
        %>
    </body>
</html>
