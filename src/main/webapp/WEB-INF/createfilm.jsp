<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Add A New Film</title>
    
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
      margin: 5%;
      padding: 5%;
      
    }
    
    h2 {
    text-align: center;
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
  
  <h2>Please complete the form below (All fields are mandatory)</h2>
 
   <div class="mainDiv">
    
    
    
    <form action="createnewfilm.do" method="POST"">
  
      <b><label for="title">Title:</label></b> <br>
      <input name="title" type="text" required> <br>
      
      <b><label for="release_year">Release Year:</label></b> <br>
      <input name="releaseYear" type="text" required> <br>

      <b><label for="language">Language ID:</label></b> <br>
      <input name="languageId" type="number" max="6" required> <br>

      <b><label for="rental_duration">Rental Duration:</label></b> <br>
      <input name="rentalDuration" type="text" required> <br>

      <b><label for="rental_rate">Rental Rate:</label></b> <br>
      <input name="rentalRate" type="text" required> <br>

      <b><label for="length">Film duration:</label></b> <br>
      <input  name="length" type="text" required> <br>

      <b><label for="replacement_cost">Replacement Cost:</label></b><br>
      <input name="replacementCost" type="text" required> <br>

      <label for="rating">Rating:</label> <br>
	<input type="radio" id="G" name="rating" value="G" required>
	<label for="G">G</label><br>
	<input type="radio" id="PG" name="rating" value="PG">
	<label for="PG">PG</label><br>
	<input type="radio" id="PG-13" name="rating" value="PG13">
	<label for="PG13">PG-13</label><br>
	<input type="radio" id="R" name="rating" value="R">
	<label for="R">R</label><br>
	<input type="radio" id="NC-17" name="rating" value="NC17">
	<label for="NC17">NC-17</label><br>

      <b><label for="specialFeature">Special Features:</label></b> <br>
      <input name="specialFeature" type="text" required> <br>

      <b><label for="description">Description:</label></b> <br>
      <textarea name="description" type="text"required></textarea>

		<br>
		
		<input type="submit" value="Complete Form">

	
	</form>
	
	
	
   
   </div>
    <footer style="text-align: center;">
  <p>&copy; 2023 MVC Film</p>
  <a href="home.do">Go back to the main Home page</a>
</footer>

</body>
</html>
``
