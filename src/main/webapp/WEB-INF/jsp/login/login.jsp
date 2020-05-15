<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<form action="login" method="post">

		<div class="jumbotron jumbotron-fluid">
			<div class="container">
				<h3 class="display-2" align="center">User Login:</h3>
			</div>
		</div>


		<div class="col-md-3">

			<div class="form-group">
				<label for="email">User Email</label> 
				<input type="email" class="form-control" id="email" name="email" placeholder="name@example.com">
			</div>

			<div class="form-group">
				<label for="password">User Password</label> 
				<input type="password" class="form-control" id="password" name="password">
			</div>

			<button type="submit" class="btn btn-primary">Login</button>
			<br />
			<br />
			<div>${msg }</div>
		</div>
	</form>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>