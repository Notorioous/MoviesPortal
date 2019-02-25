package manager;

import db.DBConnectionProvider;
import model.Genre;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class GenreManager {

    private Connection connection;

    public GenreManager(){
        connection = DBConnectionProvider.getInstance().getConnection();
    }

    public void addGenre(Genre genre){
        String query = "INSERT INTO genre (name)" +
                "VALUES (?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1,genre.getName());
            preparedStatement.executeUpdate();
            ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
            if(generatedKeys.next()){
                genre.setId(generatedKeys.getInt(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Genre> getAllGenres(){
        String query = "SELECT * FROM genre";

        List<Genre> genres = new ArrayList<Genre>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()){
                Genre genre = new Genre();
                genre.setId(resultSet.getInt(1));
                genre.setName(resultSet.getString(2));
                genres.add(genre);
            }
            return genres;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Genre getGenreById(int id){
        String query = "SELECT * FROM genre WHERE id = " + id;

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            if (resultSet.next()){
                Genre genre = new Genre();
                genre.setId(resultSet.getInt(1));
                genre.setName(resultSet.getString(2));
                return genre;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Genre> getGenresByMovieId(int id){

        String query = "SELECT genre_id FROM movie_genre WHERE movie_id = " + id;

        List<Integer> genresId = new ArrayList<Integer>();
        List<Genre> generes = new ArrayList<Genre>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()){
                genresId.add(resultSet.getInt(1));
            }
            for (Integer integer : genresId) {
                generes.add(getGenreById(integer));
            }
            return generes;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;

    }

    public Genre getGenreByName(String name){
        String query = "SELECT * FROM genre WHERE name = '" + name + "'";

        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            if(resultSet.next()){
                Genre genre = new Genre();
                genre.setId(resultSet.getInt(1));
                genre.setName(resultSet.getString(2));
                return genre;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
