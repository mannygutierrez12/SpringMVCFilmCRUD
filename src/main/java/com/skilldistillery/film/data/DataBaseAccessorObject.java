package com.skilldistillery.film.data;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Component;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;


@Component
public class DataBaseAccessorObject implements DatabaseAccessor {

	@Override
	public Film findFilmById(int filmId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Actor findActorById(int actorId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Actor> findActorsByFilmId(int filmId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Film> findFilmsByActorId(int actorId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Film> findFilmsByKeyword(String keyword) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Film createFilm(Film film) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Film updateFilm(Film film) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean deleteFilm(int filmId) {
		// TODO Auto-generated method stub
		return null;
	}

}
