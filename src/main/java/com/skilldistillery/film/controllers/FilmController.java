package com.skilldistillery.film.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.DatabaseAccessor;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {

	// The Following are all the Get Mapping

	@Autowired
	private DatabaseAccessor dao;

	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		return "WEB-INF/home.jsp";
	}

	@GetMapping(path = { "/", "findfilmbyid.do" })
	public String findFilmById(Model model) throws SQLException {
		return "WEB-INF/findfilmbyid.jsp";
	}

	@GetMapping(path = { "/", "findfilmbykeyword.do" })
	public String findFilmByKeyword(Model model) throws SQLException {
		return "WEB-INF/findfilmbykeyword.jsp";
	}

	@GetMapping(path = { "/", "createfilm.do" })
	public String createFilm(Model model) throws SQLException {
		return "WEB-INF/createfilm.jsp";
	}

	// The Following are all the Request Mapping

	@RequestMapping(path = "findfilmbyid.do", params = "filmId")
	public ModelAndView findFilmById(@RequestParam("filmId") int id) {

		Film film = dao.findFilmById(id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/filmid-result.jsp");
		mv.addObject("film", film);

		return mv;
	}

	@RequestMapping(path = { "/", "createfilm.do" } , params = { "title", "description", "releaseYear", "languageId",
			"rentalDuration", "rentalRate", "length", "replacementCost", "rating", "specialFeatures" })
	public ModelAndView createFilm(@RequestParam("title") String title, @RequestParam("description") String description,
			@RequestParam("releaseYear") int releaseYear, @RequestParam("languageId") int languageId,
			@RequestParam("rentalDuration") int rentalDuration, @RequestParam("rentalRate") double rentalRate,
			@RequestParam("length") int length, @RequestParam("replacementCost") double replacementCost,
			@RequestParam("rating") String rating, @RequestParam("specialFeatures") String specialFeatures) {
		
		Film film = new Film();
		film.setTitle(title);
		film.setDescription(description);
		film.setReleaseYear(releaseYear);
		film.setLanguageId(languageId);
		film.setRentalDuration(rentalDuration);
		film.setRentalRate(rentalRate);
		film.setLength(length);
		film.setReplacementCost(replacementCost);
		film.setRating(rating);
		film.setSpecialFeatures(specialFeatures);

		Film createdFilm = dao.createFilm(film);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/created-film.jsp");
		mv.addObject("film", createdFilm);

		return mv;
	}

}
