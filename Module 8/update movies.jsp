<%@ page import="java.sql.*, java.util.*, csd430.MovieBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Movie Records</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        h1, h2 { color: #2c3e50; }
        table { border-collapse: collapse; width: 100%; margin-top: 20px; }
        th, td { border: 1px solid #ccc; padding: 8px; text-align: left; }
        th { background-color: #f4f4f4; }
        form { margin-top: 20px; }
    </style>
</head>
<body>
    <h1>Movie Database – Update Records</h1>
    <p>Select a record to update, edit its details, and view the updated record.</p>

    <%
        String step = request.getParameter("step");
        if(step == null){
            List<MovieBean> movies = MovieBean.getAllMovies();
    %>
        <form action="updateMovies.jsp" method="post">
            <input type="hidden" name="step" value="edit">
            <label for="movie_id">Choose a Movie:</label>
            <select name="movie_id" id="movie_id">
                <% for(MovieBean m : movies){ %>
                    <option value="<%= m.getMovie_id() %>">
                        <%= m.getMovie_id() %> - <%= m.getTitle() %>
                    </option>
                <% } %>
            </select>
            <input type="submit" value="Edit Record">
        </form>
    <%
        }
        else if("edit".equals(step)){
            int id = Integer.parseInt(request.getParameter("movie_id"));
            List<MovieBean> movies = MovieBean.getAllMovies();
            MovieBean selected = null;
            for(MovieBean m : movies){
                if(m.getMovie_id() == id){ selected = m; break; }
            }
    %>
        <h2>Edit Movie Record</h2>
        <form action="updateMovies.jsp" method="post">
            <input type="hidden" name="step" value="update">
            Movie ID: <input type="text" name="movie_id" value="<%= selected.getMovie_id() %>" readonly><br>
            Title: <input type="text" name="title" value="<%= selected.getTitle() %>"><br>
            Release Year: <input type="number" name="release_year" value="<%= selected.getRelease_year() %>"><br>
            Director: <input type="text" name="director" value="<%= selected.getDirector() %>"><br>
            Genre: <input type="text" name="genre" value="<%= selected.getGenre() %>"><br>
            Rating: <input type="text" name="rating" value="<%= selected.getRating() %>"><br>
            <input type="submit" value="Update Record">
        </form>
    <%
        }
        else if("update".equals(step)){
            int id = Integer.parseInt(request.getParameter("movie_id"));
            String title = request.getParameter("title");
            int year = Integer.parseInt(request.getParameter("release_year"));
            String director = request.getParameter("director");
            String genre = request.getParameter("genre");
            double rating = Double.parseDouble(request.getParameter("rating"));

            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSD430","student1","pass");
            PreparedStatement ps = conn.prepareStatement(
                "UPDATE colby_movies_data SET title=?, release_year=?, director=?, genre=?, rating=? WHERE movie_id=?");
            ps.setString(1, title);
            ps.setInt(2, year);
            ps.setString(3, director);
            ps.setString(4, genre);
            ps.setDouble(5, rating);
            ps.setInt(6, id);
            ps.executeUpdate();
            ps.close();

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM colby_movies_data WHERE movie_id=" + id);
            if(rs.next()){
    %>
        <h2>Updated Record</h2>
        <table>
            <thead>
                <tr>
                    <th>Movie ID</th><th>Title</th><th>Year</th><th>Director</th><th>Genre</th><th>Rating</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%= rs.getInt("movie_id") %></td>
                    <td><%= rs.getString("title") %></td>
                    <td><%= rs.getInt("release_year") %></td>
                    <td><%= rs.getString("director") %></td>
                    <td><%= rs.getString("genre") %></td>
                    <td><%= rs.getDouble("rating") %></td>
                </tr>
            </tbody>
        </table>
    <%
            }
            conn.close();
        }
    %>
</body>
</html>

