package com.skilldistillery.film.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.film.data.DatabaseAccessor;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {
	
	@Autowired
	private DatabaseAccessor dao;
	
	@RequestMapping(path = {"/", "home.do"}) 
	public String home(Model model)  {
		return "WEB-INF/home.jsp";
	}
	
	@GetMapping(path = {"/", "findfilmbyid.do"})
	public String findFilmById(Model model) throws SQLException  {
	    return "WEB-INF/findfilmbyid.jsp";
	}
	
	@GetMapping(path = {"/", "newfilm.do"})
	public String newfilm(Model model) throws SQLException  {
	    return "WEB-INF/newfilm.jsp";
	}
	
	@GetMapping(path = {"/", "findfilmbykeyword.do"})
	public String findFilmByKeyword(Model model) throws SQLException  {
	    return "WEB-INF/findfilmbykeyword.jsp";
	}
}
