<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>

<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<title>Add New Room</title>
<style>
body {
	font-family: Arial;
}

.container {
	width: 80%;
	margin: auto;
}

.form-row {
	display: flex;
	justify-content: space-between;
	margin-bottom: 20px;
}

.form-group {
	width: 48%;
}

.input-style {
	width: 100%;
	padding: 8px;
	font-size: 14px;
}

.button {
	padding: 10px 20px;
	font-size: 16px;
	cursor: pointer;
}

/* ✅ Centered Alert Style */
.alert {
	text-align: center;
	font-size: 18px;
	font-weight: bold;
	margin: 20px 0;
}

.success {
	color: yellow;
}

.error {
	color: red;
}
</style>
</head>

<body>

	<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
	<h3 class="alert success">Room Added Successfully!</h3>
	<%} 
else if("wrong".equals(msg)){
%>
	<h3 class="alert error">Something went wrong! Try Again!</h3>
	<%}
%>

	<%
int id=1;
try{
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select max(id) from product");
    while(rs.next()){
        id=rs.getInt(1);
        id=id+1;
    }
}catch(Exception e){}
%>

	<div class="container">
		<form action="addNewProductAction.jsp" method="post">

			<h3 style="color: blue; text-align: center;">
				Room ID:
				<%out.print(id); %>
			</h3>
			<input type="hidden" name="id" value="<%out.print(id); %>">

			<div class="form-row">
				<div class="form-group">
					<h3>Enter Room Type</h3>
					<input class="input-style" type="text" name="name"
						placeholder="Enter Room Typee" required>
				</div>

				<div class="form-group">
					<h3>Enter Category</h3>
					<input class="input-style" type="text" name="category"
						placeholder="Enter Category" required>
				</div>
			</div>

			<div class="form-row">
				<div class="form-group">
					<h3>Enter Price</h3>
					<input class="input-style" type="number" name="price"
						placeholder="Enter Price" required>
				</div>

				<div class="form-group">
					<h3>Active</h3>
					<select class="input-style" name="active">
						<option value="Yes">Yes</option>
						<option value="No">No</option>
					</select>
				</div>
			</div>

			<div style="text-align: center;">
				<button class="button">
					Save <i class='far fa-arrow-alt-circle-right'></i>
				</button>
			</div>

		</form>
	</div>

</body>
</html>