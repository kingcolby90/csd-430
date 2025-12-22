<%@ page import="yourpackage.MovieBean" %>

<%
    int id = Integer.parseInt(request.getParameter("movieID"));
    MovieBean bean = new MovieBean();
    MovieBean record = bean.getRecordByID(id);
%>

<h2>Edit Movie Record</h2>

<form action="Result.jsp" method="post">

    Movie ID (not editable): <input type="text" value="<%= record.getMovieID() %>" readonly><br>
    <input type="hidden" name="movieID" value="<%= record.getMovieID() %>">

    Title: <input type="text" name="title" value="<%= record.getTitle() %>"><br>
    Director: <input type="text" name="director" value="<%= record.getDirector() %>"><br>
    Year: <input type="number" name="year" value="<%= record.getYear() %>"><br>
    Genre: <input type="text" name="genre" value="<%= record.getGenre() %>"><br>
    Rating: <input type="text" name="rating" value="<%= record.getRating() %>"><br>

    <input type="submit" value="Update Record">
</form>

