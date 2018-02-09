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
            String Firstname= request.getParameter("Firstname");
            String Lastname= request.getParameter("Lastname");
            String Gender= request.getParameter("Gender");
            String MaritalStatus = request.getParameter("MaritalStatus");
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rcs", "root","");
        Statement st = con.createStatement();
     
        
        st.executeUpdate("insert into employee(Firstname , Lastname , Gender, MaritalStatus  ) value('"+Firstname+"' , '"+Lastname+"' , '"+Gender+"', '"+MaritalStatus+"' )");
        out.println("You have added a new resident" + " <a href='residentview.jsp'>Go back to Admin page</a>");
        }catch(Exception e){
            out.println(e);
        
        }
        
        
        
        %>
    </body>
</html>
