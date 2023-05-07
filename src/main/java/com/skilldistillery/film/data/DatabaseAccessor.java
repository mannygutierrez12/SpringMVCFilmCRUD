package com.skilldistillery.film.data;

import java.sql.SQLException;
import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface DatabaseAccessor {
	public Film findFilmById(int filmId);

	public Actor findActorById(int actorId);

	public List<Actor> findActorsByFilmId(int filmId);

	public List<Film> findFilmsByActorId(int actorId);

	public List<Film> findFilmsByKeyword(String keyword) throws SQLException;

	Film createFilm(Film film);
	
	Film updateFilm(Film film);
	
	Boolean deleteFilm(int filmId);

	Film createFilm(String title, String description, int releaseYear, int languageId, int rentalDuration,
			double rentalRate, int length, double replacementCost, String rating, String specialFeatures);
}
