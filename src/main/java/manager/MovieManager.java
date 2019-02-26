package manager;

import db.DBConnectionProvider;
import model.Genre;
import model.Movie;
import util.DateUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MovieManager {

    private GenreManager genreManager = new GenreManager();

    private Connection connection;

    public MovieManager(){
        connection = DBConnectionProvider.getInstance().getConnection();
    }

    public void addMovie(Movie movie){
        String query = "INSERT INTO movie (title, description, created_date, picUrl, year, director)" +
                "VALUES (?,?,?,?,?,?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1,movie.getTitle());
            preparedStatement.setString(2,movie.getDescription());
            preparedStatement.setString(3,DateUtil.convertDateToString(movie.getCreatedDate()));
            preparedStatement.setString(4,movie.getPicUrl());
            preparedStatement.setInt(5,movie.getYear());
            preparedStatement.setString(6,movie.getDirector());
            preparedStatement.executeUpdate();
            ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
            if(generatedKeys.next()){
                movie.setId(generatedKeys.getInt(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Movie> getAllMovies(){
        String query = "SELECT * FROM movie";

        List<Movie> movies = new ArrayList<Movie>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()){
                Movie movie = new Movie();
                movie.setId(resultSet.getInt(1));
                movie.setTitle(resultSet.getString(2));
                movie.setDescription(resultSet.getString(3));
                movie.setCreatedDate(DateUtil.convertStringToDate(resultSet.getString(4)));
                movie.setPicUrl(resultSet.getString(5));
                movie.setYear(resultSet.getInt(6));
                movie.setGenres(genreManager.getGenresByMovieId(movie.getId()));
                movie.setDirector(resultSet.getString(7));
                movies.add(movie);
            }
            return movies;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void addRelationship(Movie movie, List<Genre> genres){
        String query = "INSERT INTO movie_genre (movie_id, genre_id)" +
                "VALUES (?,?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            for (Genre genre : genres) {
                int genId = genre.getId();
                preparedStatement.setInt(1,movie.getId());
                preparedStatement.setInt(2,genId);
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Movie getMovieById(int id){
        String query = "SELECT * FROM movie WHERE id = " + id;

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            if(resultSet.next()){
                Movie movie = new Movie();
                movie.setId(resultSet.getInt(1));
                movie.setTitle(resultSet.getString(2));
                movie.setDescription(resultSet.getString(3));
                movie.setCreatedDate(DateUtil.convertStringToDate(resultSet.getString(4)));
                movie.setPicUrl(resultSet.getString(5));
                movie.setYear(resultSet.getInt(6));
                movie.setGenres(genreManager.getGenresByMovieId(movie.getId()));
                movie.setDirector(resultSet.getString(7));
                return movie;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Movie> getMoviesByGenreId(int id){
        String query = "SELECT movie_id FROM movie_genre WHERE genre_id = " + id;

        List<Movie> movies = new ArrayList<Movie>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()){
             Movie movie = getMovieById(resultSet.getInt(1));
             movies.add(movie);
            }
            return movies;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
