<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Film By Keyword</title>

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
	<h1>Find Film By Keyword</h1>

	<div class="mainDiv">
		<form method="GET" action="searchfilm.do">
			<label for="keyword">Enter a keyword:</label> <input type="text"
				name="keyword" id="keyword"> <input type="submit"
				value="Search">
		</form>
	</div>
</body>
</html>
