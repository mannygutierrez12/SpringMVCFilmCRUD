<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Created Film</title>
</head>
<body>
    <h1>Film Created Successfully</h1>
    <p>The following film has been added to the database:</p>
    <table>
        <tr>
            <td>Title:</td>
            <td>${film.title}</td>
        </tr>
        <tr>
            <td>Description:</td>
            <td>${film.description}</td>
        </tr>
        <tr>
            <td>Release Year:</td>
            <td>${film.releaseYear}</td>
        </tr>
        <tr>
            <td>Language:</td>
            <td>${film.language.name}</td>
        </tr>
        <tr>
            <td>Rental Duration:</td>
            <td>${film.rentalDuration}</td>
        </tr>
        <tr>
            <td>Rental Rate:</td>
            <td>${film.rentalRate}</td>
        </tr>
        <tr>
            <td>Length:</td>
            <td>${film.length}</td>
        </tr>
        <tr>
            <td>Replacement Cost:</td>
            <td>${film.replacementCost}</td>
        </tr>
        <tr>
            <td>Rating:</td>
            <td>${film.rating}</td>
        </tr>
        <tr>
            <td>Special Features:</td>
            <td>${film.specialFeatures}</td>
        </tr>
    </table>
    <c:if test="${not empty film.id}">
        <p>The film ID is ${film.id}.</p>
    </c:if>
    <c:if test="${empty film.id}">
        <p>There was an error creating the film. Please try again later.</p>
    </c:if>
</body>
</html>
