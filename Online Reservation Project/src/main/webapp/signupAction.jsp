<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String guest_name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("pass");
String address=request.getParameter("adds");
String contact_number=request.getParameter("contact");
String room_type=request.getParameter("roomtype");
String check_in_date=request.getParameter("checkindate");
String check_out_date=request.getParameter("checkoutdate");
String city="";
String state="";
String country="";
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement(
			"INSERT INTO user (guest_name, email, password, address, contact_number, room_type, check_in_date, check_out_date, city, state, country) VALUES (?,?,?,?,?,?,?,?,?,?,?)");

	ps.setString(1,guest_name);
	ps.setString(2,email);
	ps.setString(3,password);
	ps.setString(4,address);
	ps.setString(5,contact_number);
	ps.setString(6,room_type);
	ps.setString(7,check_in_date);
	ps.setString(8,check_out_date);
	ps.setString(9,city);
	ps.setString(10,state);
	ps.setString(11,country);
	ps.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");	
}
%>



