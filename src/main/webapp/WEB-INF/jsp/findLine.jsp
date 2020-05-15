<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Line</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<form action="findLine" method="post">
		
	<h2 align="center">Find Line:</h2></br></br>
	
	<div class="col-md-3">
		
		<div class="form-group">
			<label for="to">To</label> 
			<input class="form-control" id="to" name="to" >
		</div>
		
		<div class="form-group">
			<label for="departureDate">Departure Date</label> 
			<input class="form-control" id="departureDate" name="departureDate">
		</div>
		
		<button type="submit" class="btn btn-primary">Search</button>
		
	</div>
</form>
		
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>