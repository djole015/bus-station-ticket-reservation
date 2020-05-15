<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Lines</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">Departure Time</th>
				<th scope="col">Arrival City</th>
				<th scope="col">Price</th>
				<th scope="col">Number Of Seats Available</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${lines }" var="line">
				<tr>
					<td>${line.departureTime }</td>
					<td>${line.arrivalCity }</td>
					<td>${line.price }</td>
					<td>${line.numberOfSeatsAvail }</td>
					<td><a href="showCompleteReservation?lineId=${line.id}">Select</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>