<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Signup</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: Arial, Helvetica, sans-serif;
}

body {
	background: linear-gradient(135deg, #00b4db, #0083b0);
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

/* Main container */
#container {
	width: 900px;
	display: flex;
	background: #ffffff;
	border-radius: 10px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
	overflow: hidden;
}

/* Signup section */
.signup {
	width: 50%;
	padding: 40px;
}

.signup h2 {
	text-align: center;
	margin-top: 15px;
}

.form-group {
	margin-bottom: 20px;
}

.form-group input {
	width: 100%;
	padding: 10px 12px;
	border-radius: 5px;
	border: 1px solid #ccc;
	font-size: 14px;
}

input[type="submit"] {
	width: 100%;
	padding: 12px;
	background-color: #0083b0;
	border: none;
	border-radius: 5px;
	color: white;
	font-size: 16px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #005f7a;
}

/* Right side section */
.whysign {
	width: 50%;
	padding: 40px;
	background-color: #f4f4f4;
	text-align: center;
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.whysign h1 {
	font-size: 22px;
	margin-bottom: 15px;
	color: #0083b0;
}

.whysign h2 {
	margin-bottom: 10px;
}

.whysign p {
	font-size: 14px;
	color: #555;
}
</style>

</head>

<body>

	<div id="container">

		<div class="signup">
			<form action="signupAction.jsp" method="post">

				<div class="form-group">
					<input type="text" name="name" placeholder="Guest Name" required>
				</div>

				<div class="form-group">
					<input type="email" name="email" placeholder="Your Email" required>
				</div>

				<div class="form-group">
					<input type="password" name="pass" placeholder="Password" required>
				</div>

				<div class="form-group">
					<input type="text" name="adds" placeholder="Address" required>
				</div>

				<div class="form-group">
					<input type="text" name="contact" placeholder="Contact No" required>
				</div>

				<div class="form-group">
					<input name="roomtype" list="rt" placeholder="Room Type" required>
					<datalist id="rt">
						<option value="Suite">
						<option value="Deluxe Room">
						<option value="Double Room">
						<option value="Single Room">
					</datalist>
				</div>

				<div class="form-group">
					<label for="checkindate">Check-In Date</label> <input type="date"
						id="checkindate" name="checkindate" required>
				</div>

				<div class="form-group">
					<label for="checkoutdate">Check-Out Date</label> <input type="date"
						id="checkoutdate" name="checkoutdate" required>
				</div>

				<input type="submit" value="Signup">
			</form>

			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>

		<div class="whysign">
			<%
    String msg=request.getParameter("msg");
    		if("valid".equals(msg))
{
    %>
			<h1>Successfully Registered !</h1>
			<%} %>
			<%
    if("invalid".equals(msg))
    {
    %>
			<h1>Some thing went Wrong! Try Again!</h1>
			<%} %>
			<h1>Online Room Reservation System</h1>
			<h2>Ocean View Resort</h2>
			<p>Ocean View Resort is a popular beachside hotel in Galle. Start
				your journey with us.</p>
		</div>

	</div>

</body>
</html>