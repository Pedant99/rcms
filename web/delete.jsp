<%@page import="java.sql.*"%>
<%

String EmpID=request.getParameter("EmpID");
int no=Integer.parseInt(EmpID);
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rcs", "root", "");
Statement st = conn.createStatement();
st.executeUpdate("DELETE FROM employee WHERE EmpID = '"+no+"'");
response.sendRedirect("employeeview.jsp");
}
catch(Exception e){}
%>