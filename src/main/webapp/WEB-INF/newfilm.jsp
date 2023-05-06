<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a New Film</title>

<style>
body {
	background-color: #8ac8db;
}

.mainDiv {
	text-align: center;
}

h1 {
	text-align: center;
}

form {
	display: flex;
	flex-direction: column;
	align-items: center;
	margin-top: 20px;
}

label {
	font-size: 16px;
	font-weight: bold;
	margin-bottom: 10px;
}

input[type="text"] {
	width: 300px;
	padding: 10px;
	margin-bottom: 20px;
	font-size: 16px;
	border-radius: 5px;
	border: 1px solid #ccc;
}

input[type="submit"] {
	background-color: #fff;
	color: #333;
	font-weight: bold;
	padding: 10px 20px;
	font-size: 16px;
	border-radius: 5px;
	border: 1px solid #ccc;
	cursor: pointer;
}

.link-container:hover {
	background-color: #eee;
}
</style>
</head>
<body>
	<h1>Add a New Film</h1>

	<div class="mainDiv">
		<form method="POST" action="addfilm.do">
			<label for="title">Title:</label> <input type="text" name="title"
				id="title"> <label for="description">Description:</label> <input
				type="text" name="description" id="description"> <label
				for="releaseYear">Release Year:</label> <input type="text"
				name="releaseYear" id="releaseYear"> <label for="language">Language:</label>
			<input type="text" name="language" id="language"> <input
				type="submit" value="Add Film">
		</form>
	</div>
</body>
</html>
