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
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='edit.jsp?id='+id;
    f.submit();
}
function deleteRecord(id){
    var f=document.form;
    f.method="post";
    f.action='delete.jsp?id='+id;
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
                    Revenue Collection Management System
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                <a href="employeeview.jsp">
                      Back to Admin
                 </a>
                   
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
            <%@ page language="java" contentType="text/html; charset=UTF-8"
                     pageEncoding="UTF-8"%>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
                "http://www.w3.org/TR/html4/loose.dtd">
            <html>
                <body>
                           
       <div class="bs-example " data-example-id="simple-table">
          <form action="residentinsert.jsp">      
           
              <caption><h3>ADD NEW RESIDENT </h3></caption>
 <br><br>         

 <div> <input type="text" placeholder="First Name" name="Fname" required=""></div><br>
 
 
 <div> <input type="text" placeholder="Last Name" name="Lname" required=""></div><br>
 
 
 <div> <input type="text" placeholder="Gender" name="Gender"></div><br>
 
 
 <div> <input type="text" placeholder="Marital Statuts" name="MaritalStatus"></div><br>
 

 <div>
     <input type="submit" name="Submit" value="Save" style="background-color:#49743D;font-weight:bold;color:#ffffff;">
 </div>
 
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