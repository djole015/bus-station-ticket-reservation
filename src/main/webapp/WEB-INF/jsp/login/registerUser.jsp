<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register User</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<form action="registerUser" method="post">

		<div class="jumbotron jumbotron-fluid">
			<div class="container">
				<h3 class="display-2" align="center">User Registration:</h3>
			</div>
		</div>

		<div class="col-md-3">
			<div class="form-group ">
				<label for="firstName">First Name</label> <input
					class="form-control" type="text" id="firstName" name="firstName">
			</div>

			<div class="form-group">
				<label for="lastName">Last Name</label> <input class="form-control"
					type="text" id="lastName" name="lastName">
			</div>

			<div class="form-group">
				<label for="email">Email</label> <input type="email"
					class="form-control" id="email" name="email"
					placeholder="name@example.com">
			</div>

			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					class="form-control" id="password" name="password">
			</div>

			<div class="form-group">
				<label for="password">Confirm Password</label> <input
					type="password" class="form-control" id="password">
			</div>
			<button type="submit" class="btn btn-primary">Register</button>
		</div>


	</form>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>