<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.headerTop{
    display:flex;
    justify-content:space-between;
    align-items:center;
    background:#333;
    color:white;
    padding:10px 20px;
}

.headerTop h2{
    margin:0;
}

.headerTop a{
    color:white;
    text-decoration:none;
    font-size:16px;
}

.topnav{
    display:flex;
    justify-content:center;
    background:#444;
}

.topnav a{
    color:white;
    padding:12px 15px;
    text-decoration:none;
    font-size:15px;
}

.topnav a:hover{
    background:#ddd;
    color:black;
}
</style>

</head>

<body>

<%
String email=session.getAttribute("email").toString();
%>

<!-- Top Header -->
<div class="headerTop">
    <center>Online Room Reservation System</center>
    <a href="../logout.jsp">Logout <i class="fas fa-share-square"></i></a>
</div>

<!-- Navigation Menu -->
<div class="topnav sticky">

<a href="addNewProduct.jsp">Add New Rooms <i class="fas fa-plus-square"></i></a>

<a href="allProductEditProduct.jsp">All Rooms & Edit Rooms <i class="fab fa-elementor"></i></a>

<a href="messagesReceived.jsp">Messages Received <i class="fas fa-comment-alt"></i></a>

<a href="ordersReceived.jsp">Booking Received <i class="fas fa-archive"></i></a>

<a href="cancelOrders.jsp">Cancel Booking <i class="fas fa-window-close"></i></a>

<a href="deliveredOrders.jsp">Confirm Booking <i class="fas fa-dolly"></i></a>

<a href="abouts.jsp">Help <i class="fa fa-address-book"></i></a>

</div>

<br>

<!-- table -->

</body>
</html>