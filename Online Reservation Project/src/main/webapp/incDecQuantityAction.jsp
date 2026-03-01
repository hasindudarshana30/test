<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
String indec=request.getParameter("Number_of_Nights");
int price=0;
int total=0;
int Number_of_Nights=0;
int final_total=0;
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select *from cart where email='"+email+"' and room_id='"+id+"' and address is NULL");
while(rs.next())
{
price=rs.getInt(4);
total=rs.getInt(5);
Number_of_Nights=rs.getInt(3);
}
if(Number_of_Nights==1 && indec.equals("dec"))
	response.sendRedirect("myCart.jsp?msg=notPossible");
else if(Number_of_Nights !=1&& indec.equals("dec"))
{
	total=total-price;
	Number_of_Nights=Number_of_Nights-1;
	st.executeUpdate("update cart set total='"+total+"',Number_of_Nights='"+Number_of_Nights+"' where email='"+email+"' and room_id='"+id+"' and address is NULL");
	response.sendRedirect("myCart.jsp?msg=dec");
}
else
{
	total=total+price;
	Number_of_Nights=Number_of_Nights+1;
	st.executeUpdate("update cart set total='"+total+"',Number_of_Nights='"+Number_of_Nights+"' where email='"+email+"' and room_id='"+id+"' and address is NULL");
	response.sendRedirect("myCart.jsp?msg=inc");
}
}
catch(Exception e)
{
	System.out.println(e);
	}
%>