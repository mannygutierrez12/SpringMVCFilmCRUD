<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Film ID</title>
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
      border-radious: 100%;
    }

    h3 {
      text-align: center;
      margin-top: 0;
    }
    
    ul{
    	list-style: none;
    }

    .link-container {
      display: inline-block;
      width: 200px;
      height: 100px;
      margin: 10px;
      text-align: center;
      background-color: #f2f2f2;
      border: none;
      border-radius: 10px;
      box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.1);
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
    }

    .link-container a {
      display: block;
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
  <div class="mainDiv">
    
    <c:choose>
      <c:when test="${! empty film}">
        <ul>
        <li><h3>Film Succesfully Loaded into the Database</h3></li>
          <li><strong>${film.title}</strong></li>
          <li><strong>Description:</strong> ${film.description}</li>
          <li><strong>Release Year:</strong> ${film.releaseYear}</li>
          <li><strong>Language ID:</strong> ${film.languageId}</li>
          <li><strong>Rental Duration:</strong> ${film.rentalDuration}</li>
          <li><strong>Rental Rate:</strong> ${film.rentalRate}</li>
          <li><strong>Length:</strong> ${film.length}</li>
          <li><strong>Replacement Cost:</strong> ${film.replacementCost}</li>
          <li><strong>Rating:</strong> ${film.rating}</li>
          <li><strong>Special Features:</strong> ${film.specialFeatures}</li>
        </ul>
      </c:when>
      <c:otherwise>
        <p>No film found</p>
      </c:otherwise>
    </c:choose>
  </div>
   <footer style="text-align: center;">
  <p>&copy; 2023 MVC Film</p>
  <a href="home.do">Go back to the main Home page</a>
</footer>
</body>
</html>
