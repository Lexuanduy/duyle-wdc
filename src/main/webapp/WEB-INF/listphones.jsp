<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="../style.css">
</head>
<body>
	<div class="container">
		<h2>List phones</h2>
		<p>
			<a href="/create">Create new phone</a>.
		</p>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Brand</th>
					<th>Name</th>
					<th>Price</th>
					<th>Description</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="phone" items="${phones}">
					<tr>
						<td><c:out value="${phone.brand}" /></td>
						<td><c:out value="${phone.name}" /></td>
						<td><c:out value="${phone.price}" /></td>
						<td><c:out value="${phone.description}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/sweetalert2@7.33.1/dist/sweetalert2.all.min.js"></script>
	<script src="../main.js"></script>
</body>
</html>