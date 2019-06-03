<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>create</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="/style.css">
</head>
<body>
	<div class="container">
		<h1>Create phone</h1>
		<p>
			<a href="/list">List phones</a>.
		</p>
		<hr>
		<div class="dropdown">
			<select class="btn btn-primary dropdown-toggle" type="button"
				data-toggle="dropdown" id="brand">
				<option value="apple">Apple</option>
				<option value="samsung">Samsung</option>
				<option value="nokia">Nokia</option>
			</select>
		</div>
		<label for="name"><b>Name</b></label> <input type="text"
			placeholder="Enter Name" name="name" id="name" required> <label
			for="price"><b>Price</b></label> <input type="text"
			placeholder="Enter Price" name="price" id="price" required> <label
			for="description"><br> <b>Description</b></label> <input
			type="text" placeholder="Enter Description" name="description"
			id="description" required>
		<hr>

		<button id="create" class="registerbtn">Create</button>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/sweetalert2@7.33.1/dist/sweetalert2.all.min.js"></script>
	<script src="/main.js"></script>
</body>
</html>