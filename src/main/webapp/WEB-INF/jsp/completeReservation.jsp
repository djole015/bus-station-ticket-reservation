<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complete Reservation</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
<br/>
<br/>
<h3>Carrier: ${line.carrier.getName() }</h3>
<h3>Arrival City: ${line.arrivalCity }</h3>
<h3>Departure Time: ${line.departureTime }</h3>

<form action="completeReservation" method="post">
		
	<h2 align="center">Passanger Details:</h2></br></br>
	
	<div class="col-md-3">
		
		<div class="form-group">
			<label for="firstName">First Name</label> 
			<input class="form-control" id="firstName" name="firstName" >
		</div>
		
		<div class="form-group">
			<label for="lastName">Last Name</label> 
			<input class="form-control" id="lastName" name="lastName" >
		</div>
		
		<div class="form-group">
			<label for="email">Email</label> 
			<input class="form-control" id="email" name="email">
		</div>
		
		<div class="form-group">
			<label for="phone">Phone Number</label> 
			<input class="form-control" id="phone" name="phone">
		</div>
		
		<input type="hidden" name="lineId" value="${line.id }" />
		
		<button type="submit" class="btn btn-primary">Confirm</button>
		
	</div>
</form>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>