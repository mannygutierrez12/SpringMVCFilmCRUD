package com.skilldistillery.film.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@GetMapping(path = { "/", "error.do" })
	public String errorPage(Model model) throws SQLException {
		return "WEB-INF/error.jsp";
	}
	

	@RequestMapping(path = "findfilmbyid.do", params = "filmId")
	public ModelAndView findFilmById(@RequestParam("filmId") int id) {

		Film film = dao.findFilmById(id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/filmid-result.jsp");
		mv.addObject("film", film);

		return mv;
	}

	@RequestMapping(path = "createnewfilm.do", method = RequestMethod.POST)
	public String createFilm(Model model, Film film) {
		Film createdFilm = dao.createFilm(film);
		if (createdFilm != null) {
			model.addAttribute(createdFilm);
			return "WEB-INF/created-film.jsp";
		} else {
			return "WEB-INF/error.jsp";
		}

	}


}
