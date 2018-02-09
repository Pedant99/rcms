<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Application Catalogue</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link rel="icon" type="image/png" href="images/BanLogo.png">
<link href="css/londinium-theme.css" rel="stylesheet" type="text/css">
<link href="css/styles.css" rel="stylesheet" type="text/css">
<link href="css/icons.css" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>

<script type="text/javascript" src="js/plugins/charts/sparkline.min.js"></script>

<script type="text/javascript" src="js/plugins/forms/uniform.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/select2.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/inputmask.js"></script>
<script type="text/javascript" src="js/plugins/forms/autosize.js"></script>
<script type="text/javascript" src="js/plugins/forms/inputlimit.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/listbox.js"></script>
<script type="text/javascript" src="js/plugins/forms/multiselect.js"></script>
<script type="text/javascript" src="js/plugins/forms/validate.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/tags.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/switch.min.js"></script>

<script type="text/javascript" src="js/plugins/forms/uploader/plupload.full.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/uploader/plupload.queue.min.js"></script>

<script type="text/javascript" src="js/plugins/forms/wysihtml5/wysihtml5.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/wysihtml5/toolbar.js"></script>

<script type="text/javascript" src="js/plugins/interface/daterangepicker.js"></script>
<script type="text/javascript" src="js/plugins/interface/fancybox.min.js"></script>
<script type="text/javascript" src="js/plugins/interface/moment.js"></script>
<script type="text/javascript" src="js/plugins/interface/jgrowl.min.js"></script>
<script type="text/javascript" src="js/plugins/interface/datatables.min.js"></script>
<script type="text/javascript" src="js/plugins/interface/colorpicker.js"></script>
<script type="text/javascript" src="js/plugins/interface/fullcalendar.min.js"></script>
<script type="text/javascript" src="js/plugins/interface/timepicker.min.js"></script>

<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/application.js"></script>




</head>
<body>


<!-- Navbar -->
	<div class="navbar navbar-inverse" role="navigation">
            
           <div class="navbar-header">
			
			
               <span> <img src="images/BanLogo.png" height="50px" width="50px"> <b style="color:white; font-size:15pt; font-weight:1pt">APPLICATION CATALOGUE</b></span>
                      
		</div>
        </div>
<br>
            
            
            
            
            
               
                   
                
	<!-- /Navbar -->
        

                        
                        
                   
 
        <div>    
            <br>
 
        <br><br>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "catalogue";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="";

int sumcount=0;
Statement st;
try{
Class.forName(driver).newInstance();
con = DriverManager.getConnection(url+db,userName,password);
String query = "select * from app";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>

<%
while(rs.next()){
%>

                                                        
                                                                                

<!-- Info blocks -->

	
							<div class="col-lg-3 col-md-6 col-sm-6">
								<div  class="info-blocks">
									<div class="thumbnail">
										<a data-toggle="modal" role="button" href="#<%=rs.getString(1)%>">
											
                                                                                        <img src="images/notebook-free-icon-png-6.png" height="20px" weight="20px" alt=""/>
										</a>
									
								    	<div class="caption text-center">
								    		<h6> <%=rs.getString(2)%></h6>
							    			
								    	</div>
							    	</div>
								</div>			
  
	                            
<!-- All the Models -->

		</div>
		<!-- /page content -->

<!-- QT modal -->
			<div id="<%=rs.getString(1)%>" class="modal fade" tabindex="-1" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title"> <%=rs.getString(2)%></h4>
						</div>

						<div class="modal-body with-padding">
							<h5> Description</h5>
							<p>
                                                            <%=rs.getString(6)%>
                                                        </p>
						</div>

						<div class="modal-footer">
						<a class="btn btn-warning"  href="<%=rs.getString(3)%>"> User Application</a>
						<a class="btn btn-warning"  href="<%=rs.getString(4)%>"> Admin Application</a>
						<a class="btn btn-warning"  href="<%=rs.getString(5)%>"> New-User Application</a>
						</div>
					</div>
				</div>
			</div>
<!-- / modal -->

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
</form>

	                 
	                        
	                            
<!-- All the Models -->

		</div>
		<!-- /page content -->

<!-- QT modal -->
			<div id="qt" class="modal fade" tabindex="-1" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title"><i class="icon-accessibility"></i> QUERY TRACKER</h4>
						</div>

						<div class="modal-body with-padding">
							<h5><i class="icon-text-height"></i> Description</h5>
							<p>
								Application for logging and Tracking Complaints Received by the Customer Care Center (CCC).
								The Application is in 2 versions. V1.0 was accepting customer complaint.
								Complaint were either solved immediately or escalated for an office or Department to resolve.
							</p>
						</div>

						<div class="modal-footer">
						<a class="btn btn-warning"  href="http://ghaprodwebserv1/qr"><i class="icon-cancel-circle"></i> User Application</a>
						<a class="btn btn-warning"  href="http://ghaprodwebserv1/qrmanager"><i class="icon-cancel-circle"></i> Admin Application</a>
						<a class="btn btn-warning"  href="http://ghaprodwebserv1/qtv2"><i class="icon-cancel-circle"></i> New-User Application</a>
						</div>
					</div>
				</div>
			</div>
<!-- /QT modal -->




			


<!-- /All the modals Used -->

  
</body>
</html>