
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>
			<form action="loginAction.jsp" method="post">
				<input type="email" name="email" placeholder="Enter Email" required>
				<input type="password" name="pass" placeholder="Enter Password"
					required> <input type="submit" value="login">
			</form>

			<h2>
				<a href="signup.jsp">SignUp</a>
			</h2>
			<h2>
				<a href="forgotPassword.jsp">Forgot Password?</a>
			</h2>
		</div>
		<div class='whysignLogin'>
			<%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
  %>
			<h3>Incorrect Username or Password</h3>
			<%} %>
			<%if("invalid".equals(msg))
	{%>
			<h1>Some thing Went Wrong! Try Again !</h1>
			<%} %>
			<h1>Online Room Reservation System</h1>
			<h2>Ocean View Resort</h2>
			<p>Ocean View Resort is a popular beachside hotel in Galle. Start
				your journey with us.</p>
		</div>
	</div>

</body>
</html>