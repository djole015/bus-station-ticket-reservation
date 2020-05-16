<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Line</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<form action="addLine" method="post">
		
	<h2 align="center">Add Line:</h2></br></br>
	
	<div class="col-md-3">
		
		<div class="form-group">
			<label for="to">To</label> 
			<input class="form-control" id="to" name="to" >
		</div>
		
		<div class="form-group">
			<label for="departureDate">Departure Date</label> 
			<input class="form-control" id="departureDate" name="departureDate">
		</div>
		
		<div class="form-group">
			<label for="departureTime">Departure Time</label> 
			<input class="form-control" id="departureTime" name="departureTime">
		</div>
		
		<div class="form-group">
			<label for="seats">Number of Seats Available</label> 
			<input class="form-control" id="seats" name="seats" >
		</div>
		
		<div class="form-group">
			<label for="price">Price</label> 
			<input class="form-control" id="price" name="price" >
		</div>
		
		<select name="carrierId">
			<c:forEach items="${carriers }" var="carrier">
				<option value="${carrier.id }">${carrier.name }</option>
			</c:forEach>
		</select>
		<br/><br/>
		<button type="submit" class="btn btn-primary">Add</button>
		
	</div>
</form>
		
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>