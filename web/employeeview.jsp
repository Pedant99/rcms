<%
    if ((session.getAttribute("user") == null) || (session.getAttribute("user") == "")) {
%>

<%} else {
%>

<%
    }
%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <script language="javascript">
function editRecord(EmpID){
    var f=document.form;
    f.method="post";
    f.action='edit.jsp?EmpID='+EmpID;
    f.submit();
}
function deleteRecord(EmpID){
    var f=document.form;
    f.method="post";
    f.action='delete.jsp?EmpID='+EmpID;
    f.submit();
}
</script>
        <title>Admin | Revenue Collection Management System</title>
        <meta charset="utf-8" />
	<link rel="icon" type="image/png" href="images/BanLogo.png">
        <link href="css/icons.css" rel="stylesheet" type="text/css">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
        
    </head>
    <body>
        <div class="wrapper">
    <div class="sidebar" data-color="blue" data-image="assets/img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a class="simple-text">
                Donmex Exclusive Ventures
                <br>
                    (Revenue Collection Management System)
                </a>
            </div>

            <ul class="nav">
               <li class="active">
                <a href="residentview.jsp">
                      View Residents
                 </a>
                   
                <li class="active">
                <a href="userview.jsp">
                      View Users
                 </a>
                
                 <li class="active">
                <a href="aboutus.jsp">
                      About Us
                 </a>
                    
                </li>    
                </li>

                </li>                
            </ul>
    	</div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
             
                <div class="collapse navbar-collapse">
                   
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="signin.jsp">
                               Logout
                            </a>
                        </li>


                    </ul>
                </div>
            </div>
        </nav>
        <div class="header head1">
            <div class="container">
            </div>
            <div class="nav-top">
                <div class="container">
                    <div class="nav1">
                        
                        
                        <div class="clearfix"></div>
                    </div> 
                </div> 
            </div> 
        </div> 
        <div class="container">
            <div class="page-header">
                <h3>Welcome </h3>
            </div>
            <%@ page language="java" contentType="text/html; charset=UTF-8"
                     pageEncoding="UTF-8"%>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
                "http://www.w3.org/TR/html4/loose.dtd">
            <html>
                <body>
                    
       <div class="bs-example " data-example-id="simple-table">
           <form method="post" name="form">         
           <table class="table">
               <caption><i class="icon-stack"></i> &nbsp;EMPLOYEE LIST </caption>
                            <thead>
                                <tr>

                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Date of birth</th>
                                    <th>Employee ID</th>
                                    </tr>
                            </thead>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "rcs";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="";

int sumcount=0;
Statement st;
try{
Class.forName(driver).newInstance();
con = DriverManager.getConnection(url+db,userName,password);
String query = "select * from employee";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>

<%
while(rs.next()){
%>
<tr><td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><a onclick="editRecord(<%=rs.getString(1)%>);"><i class="icon-pencil"></i></a></td>
<td><a onclick="deleteRecord(<%=rs.getString(1)%>)"><i class="icon-remove"></i></a></td>
</tr>
<%
}
%>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>
</table>
<a href="employeeadd.jsp">
                      Add a New Employee
                 </a>  
</form>
        <!--//footer-->
    </body>
    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="assets/js/bootstrap-checkbox-radio-switch.js"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assets/js/light-bootstrap-dashboard.js"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>
    
</html>