<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String mobileno=request.getParameter("mobileno");
String email=request.getParameter("email");
String password=request.getParameter("password");

try{
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/atos","root","root");
	Statement st=con.createStatement();
	st.executeUpdate("insert into sys(name,mobileno,email,password) values ('"+name+"', '"+mobileno+"','"+email+"','"+password+"')");
	response.sendRedirect("save.html");
	
}

catch(Exception e){
	response.sendRedirect("error.html");
}

%>