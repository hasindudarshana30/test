<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<!--Header-->
<br>
<div class="topnav sticky">
	<%String email=session.getAttribute("email").toString(); %>
	<center>
		<h2>Online Room Reservation System</h2>
	</center>
	<a href="addNewProduct.jsp">Add New Rooms <i
		class='fas fa-plus-square'></i></a> <a href="allProductEditProduct.jsp">All
		Rooms & Edit Rooms <i class='fab fa-elementor'></i>
	</a> <a href="messagesReceived.jsp">Messages Received <i
		class='fas fa-comment-alt'></i></a> <a href="ordersReceived.jsp">Booking
		Received <i class="fas fa-archive"></i>
	</a> <a href="">Cancel Booking <i class='fas fa-window-close'></i></a> <a
		href="">Confirm Booking <i class='fas fa-dolly'></i></a> <a
		href="../logout.jsp">Logout <i class='fas fa-share-square'></i></a>
</div>
<br>
<!--table-->