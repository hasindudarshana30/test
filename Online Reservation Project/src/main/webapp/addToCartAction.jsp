<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String room_id=request.getParameter("id");
int Number_of_Nights=1;
int room_price=0;
int room_total=0;
int bill_total=0;

int z=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from product where id='"+room_id+"'");
	while(rs.next())
	{
		room_price=rs.getInt(4);
		room_total=room_price;
	}
	ResultSet rs1=st.executeQuery("select *from cart where room_id='"+room_id+"' and email='"+email+"' and address is NULL");
while(rs1.next())
{
	bill_total=rs1.getInt(5);
	bill_total=bill_total+room_total;
	Number_of_Nights=rs1.getInt(3);
	Number_of_Nights=Number_of_Nights+1;
	z=1;
}
if(z==1)
{
	st.executeUpdate("update cart set total='"+bill_total+"',Number_of_Nights='"+Number_of_Nights+"' where room_id="+room_id+" and email='"+email+"' and address is NULL");
response.sendRedirect("home.jsp?msg=exist");
}
if(z==0)
{
	PreparedStatement ps=con.prepareStatement("insert into cart(email,room_id,Number_of_Nights,price,total) values(?,?,?,?,?)");
	ps.setString(1,email);
	ps.setString(2,room_id);
	ps.setInt(3,Number_of_Nights);
	ps.setInt(4,room_price);
	ps.setInt(5,room_total);
	ps.executeUpdate();
	response.sendRedirect("home.jsp?msg=added");
}
}
catch(Exception e)
{
System.out.println(e);
response.sendRedirect("home.jsp?msg=invalid");
}
%>