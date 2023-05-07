<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create a new Film</title>
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

h1 {
	text-align: center;
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

input[type="text"]{
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

	<h1>Create a new Film</h1>

	<div class="mainDiv">
		

		<form method="post" action="createfilm.jsp">

			<label for="title">Title:</label> 
			<input type="text" id="title" name="title" required>
			<br> 
			
			<label for="description">Description:</label>
			<input type="text" name="description" required></textarea>
			<br> 
			
			<label for="releaseYear">Release Year:</label> 
			<input type="text" id="releaseYear" name="releaseYear" required>
			<br>

			<label for="languageId">Language ID:</label> 
			<input type="text" id="languageId" name="languageId" required>
			<br> 
			
			<label for="rentalDuration">Rental Duration:</label> 
			<input type="text" id="rentalDuration" name="rentalDuration" required>
			<br>

			<label for="rentalRate">Rental Rate:</label> 
			<input type="text" id="rentalRate" name="rentalRate" required>
			<br>

			<label for="length">Length:</label> 
			<input type="text" id="length" name="length" required>
			<br>
			
			 <label for="replacementCost">Replacement Cost:</label> 
			 <input type="text" id="replacementCost" name="replacementCost" required>
			 <br>

			<label for="rating">Rating:</label> 
			<input type="text" id="rating" name="rating" required>
			<br> 
			
			<label for="specialFeatures">Special Features:</label> 
			<input type="text" id="specialFeatures" name="specialFeatures" required><br>

			<input type="submit" value="Create a New Film">
			
		</form>
	</div>
</body>
</html>
