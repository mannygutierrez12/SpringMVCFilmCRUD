<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Created Film</title>

<style>
body {
	background-color: #8ac8db;
}

.mainDiv {
	text-align: center;
	background-color: lightgray;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: center;
	margin: 5%;
	padding: 5%;
}

h1, p {
	text-align: center;
}

ul {
	list-style: none;
}

form {
	margin-top: 20px;
}

label {
	display: inline-block;
	width: 150px;
	text-align: right;
	margin-right: 10px;
}

input[type="text"] {
	padding: 5px;
	margin-bottom: 10px;
	border-radius: 3px;
	border: 1px solid #ccc;
	box-shadow: inset 0 1px 3px #ddd;
	font-size: 16px;
	width: 250px;
}
</style>
</head>
<body>
	<h1>Film Created Successfully</h1>
	<p>The following film has been added to the database:</p>
	<div class="mainDiv">
		<ul>
			<li><strong>Title:</strong> ${film.title}</li>
			<li><strong>Description:</strong> ${film.description}</li>
			<li><strong>Release Year:</strong> ${film.releaseYear}</li>
			<li><strong>Language:</strong> ${film.language.name}</li>
			<li><strong>Rental Duration:</strong> ${film.rentalDuration}</li>
			<li><strong>Rental Rate:</strong> ${film.rentalRate}</li>
			<li><strong>Length:</strong> ${film.length}</li>
			<li><strong>Replacement Cost:</strong> ${film.replacementCost}</li>
			<li><strong>Rating:</strong> ${film.rating}</li>
			<li><strong>Special Features:</strong> ${film.specialFeatures}</li>
		</ul>
		</div>
		<c:if test="${not empty film.id}">
			<p>The film ID is ${film.id}.</p>
		</c:if>
		<c:if test="${empty film.id}">
			<p>There was an error creating the film. Please try again later.</p>
		</c:if>
	
</body>
</html>
