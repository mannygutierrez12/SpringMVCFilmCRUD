<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC Film Site</title>

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

.link-container {
	display: inline-block;
	width: 200px;
	height: 100px;
	margin: 10px;
	text-align: center;
	background-color: #fff;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.1);
}

.link-container a {
	display: inline-block;
	height: 100%;
	width: 100%;
	padding-top: 40px;
	text-decoration: none;
	color: #333;
	font-weight: bold;
	font-size: 16px;
}

.link-container:hover {
	background-color: #eee;
}
</style>
</head>
<body>

	<h1>Welcome to the MVC Film Site</h1>

	<div class="mainDiv">
		<div class="link-container">
			<a href="findfilmbyid.do">Look up film by film ID</a>
		</div>

		<div class="link-container">
			<a href="createfilm.do">Create a new film</a>
		</div>
		
		<div class="link-container">
			<a href="searchbykeyword.do">Search a film by keyword</a>
		</div>
		
		<div class="link-container">
			<a href="delete.do">Delete a film</a>
		</div>
		
		<div class="link-container">
			<a href="update.do">Update a film</a>
		</div>
		
		
	</div>


</body>
</html>
