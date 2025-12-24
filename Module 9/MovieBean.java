package csd430;

import java.io.Serializable;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MovieBean implements Serializable {
    private int movie_id;
    private String title;
    private int release_year;
    private String director;
    private String genre;
    private double rating;

    public int getMovie_id() { return movie_id; }
    public void setMovie_id(int movie_id) { this.movie_id = movie_id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public int getRelease_year() { return release_year; }
    public void setRelease_year(int release_year) { this.release_year = release_year; }

    public String getDirector() { return director; }
    public void setDirector(String director) { this.director = director; }

    public String getGenre() { return genre; }
    public void setGenre(String genre) { this.genre = genre; }

    public double getRating() { return rating; }
    public void setRating(double rating) { this.rating = rating; }

    private Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/CSD430", "student1", "pass");
    }

    public void insertMovie() throws Exception {
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(
                 "INSERT INTO colby_movies_data (title, release_year, director, genre, rating) VALUES (?, ?, ?, ?, ?)")) {
            ps.setString(1, title);
            ps.setInt(2, release_year);
            ps.setString(3, director);
            ps.setString(4, genre);
            ps.setDouble(5, rating);
            ps.executeUpdate();
        }
    }
    public static List<MovieBean> getAllMovies() throws Exception {
        List<MovieBean> movies = new ArrayList<>();
        try (Connection conn = DriverManager.getConnection(
                 "jdbc:mysql://localhost:3306/CSD430", "student1", "pass");
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM colby_movies_data")) {

            while (rs.next()) {
                MovieBean m = new MovieBean();
                m.setMovie_id(rs.getInt("movie_id"));
                m.setTitle(rs.getString("title"));
                m.setRelease_year(rs.getInt("release_year"));
                m.setDirector(rs.getString("director"));
                m.setGenre(rs.getString("genre"));
                m.setRating(rs.getDouble("rating"));
                movies.add(m);
            }
        }
        return movies;
    }
public void deleteRecord(int id) {
    try (Connection conn = getConnection();
         PreparedStatement stmt = conn.prepareStatement("DELETE FROM colby_movies_data WHERE movie_id = ?")) {
        stmt.setInt(1, id);
        stmt.executeUpdate();
    } catch (Exception e) {
    }
}

