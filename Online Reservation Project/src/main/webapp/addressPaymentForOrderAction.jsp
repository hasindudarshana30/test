<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String address=request.getParameter("address").toString();
String city=request.getParameter("city").toString();
String state=request.getParameter("state").toString();
String country=request.getParameter("country").toString();
String contact_number=request.getParameter("contact_number").toString();
String paymentMethod=request.getParameter("paymentMethod").toString();
String transactionId="";
transactionId=request.getParameter("transactionId");
String status="bill";

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("update user set address=?,city=?,state=?,country=?,contact_number=? where email=?");
ps.setString(1,address);
ps.setString(2,city);
ps.setString(3,state);
ps.setString(4,country);
ps.setString(5,contact_number);
ps.setString(6,email);
ps.executeUpdate();

PreparedStatement ps1=con.prepareStatement("update cart set address=?,city=?,state=?,country=?,contact_number=?,check_in_date=NOW(),check_out_Date=DATE_ADD(NOW(), INTERVAL 3 DAY),paymentMethod=?,transactionId=?,status=? where email=? and address is NULL");
ps1.setString(1,address);
ps1.setString(2,city);
ps1.setString(3,state);
ps1.setString(4,country);
ps1.setString(5,contact_number);
ps1.setString(6,paymentMethod);
ps1.setString(7,transactionId);
ps1.setString(8,status);
ps1.setString(9,email);
ps1.executeUpdate();
response.sendRedirect("bill.jsp");
}
catch(Exception e)
{
	System.out.println(e);
	}
%>