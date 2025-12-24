
<%@ page import="java.sql.*, java.util.*, yourpackage.MovieBean" %>
<%
    MovieBean bean = new MovieBean();
    ResultSet rs = bean.getAllMovies();
    List<Integer> keys = bean.getAllKeys();
%>

<h2>Movie Records</h2>
<p>Select a record to delete:</p>

<form action="record.jsp" method="post">
    <select name="movieID">
        <% for (int id : keys) { %>
            <option value="<%= id %>"><%= id %></option>
        <% } %>
    </select>
    <input type="submit" value="Delete Record">
</form>

<table border="1">
    <thead>
        <tr>
            <th>ID</th><th>Title</th><th>Director</th><th>Year</th><th>Genre</th><th>Rating</th>
        </tr>
    </thead>
    <tbody>
        <%
            while (rs != null && rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("movie_id") %></td>
            <td><%= rs.getString("title") %></td>
            <td><%= rs.getString("director") %></td>
            <td><%= rs.getInt("release_year") %></td>
            <td><%= rs.getString("genre") %></td>
            <td><%= rs.getDouble("rating") %></td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>

