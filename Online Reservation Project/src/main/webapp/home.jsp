<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>

<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3 {
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
	<div style="color: white; text-align: center; font-size: 30px;">
		Home <i class="fa fa-institution"></i>
	</div>
	<%
String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>
	<h3 class="alert">Room added successfully!</h3>
	<%} %>
	<%
if("exist".equals(msg))
{
%>
	<h3 class="alert">Room already exist in you bill! Number_of_Nights
		increased!</h3>
	<%} %>
	<%
if("invalid".equals(msg))
{
%>
	<h3 class="alert">Some thing went wrong! Try Again!</h3>
	<%} %>
	<table>
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Type</th>
				<th scope="col">Category</th>
				<th scope="col"><i class="fa fa-inr"></i> Price</th>
				<th scope="col">Add to bill <i class='fas fa-cart-plus'></i></th>
			</tr>
		</thead>
		<tbody>
			<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from product where active='Yes'");
	while(rs.next())
	{
%>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><i class="fa fa-inr"></i><%=rs.getString(4)%></td>
				<td><a href="addToCartAction.jsp?id=<%=rs.getString(1)%>">Add
						to bill <i class='fas fa-cart-plus'></i>
				</a></td>
			</tr>
			<%
	}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
		</tbody>
	</table>
	<br>
	<br>
	<br>

</body>
</html>