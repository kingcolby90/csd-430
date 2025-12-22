//Colby king assignmet 6//

public class MovieBean {
    private int movieId;
    private String title;
    private int releaseYear;
    private String genre;
    private double rating;
    private String director;

    public MovieBean() {}

    public int getMovieId() { return movieId; }
    public void setMovieId(int movieId) { this.movieId = movieId; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public int getReleaseYear() { return releaseYear; }
    public void setReleaseYear(int releaseYear) { this.releaseYear = releaseYear; }

    public String getGenre() { return genre; }
    public void setGenre(String genre) { this.genre = genre; }

    public double getRating() { return rating; }
    public void setRating(double rating) { this.rating = rating; }

    public String getDirector() { return director; }
    public void setDirector(String director) { this.director = director; }
}
