
<%@ page import="java.sql.*, java.util.*, yourpackage.MovieBean" %>
<%
    int id = Integer.parseInt(request.getParameter("movieID"));
    MovieBean bean = new MovieBean();
    bean.deleteRecord(id);

    ResultSet rs = bean.getAllMovies();
    List<Integer> keys = bean.getAllKeys();
%>

<h2>Updated Movie Records</h2>
<p>Select another record to delete:</p>

<form action="record.jsp" method="post">
    <select name="movieID">
        <% for (int key : keys) { %>
            <option value="<%= key %>"><%= key %></option>
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
            boolean hasData = false;
            while (rs != null && rs.next()) {
                hasData = true;
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
            if (!hasData) {
        %>
        <tr><td colspan="6">No records remaining.</td></tr>
        <%
            }
        %>
    </tbody>
</table>

