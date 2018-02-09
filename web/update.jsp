<%@page import="java.sql.*"%>

<%
String app_id=request.getParameter("id");
int num=Integer.parseInt(app_id);
String app_name=request.getParameter("app_name");
String link1=request.getParameter("link1");
String link2=request.getParameter("link2");
String link3=request.getParameter("link3");
String description=request.getParameter("description");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/catalogue","root", "");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update app set app_name='"+app_name+"',link1='"+link1+"', link2='"+link2+"',link3='"+link3+"',description='"+description+"' where app_id='"+num+"'");
response.sendRedirect("application.jsp");
}
catch(Exception e){
System.out.println(e);
    }
%>