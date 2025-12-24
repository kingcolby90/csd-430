<%@ page import="java.util.*, yourpackage.MovieBean" %>

<%
    MovieBean bean = new MovieBean();
    List<Integer> keys = bean.getAllKeys();
%>

<h2>Select a Movie to Update</h2>

<form action="record.jsp" method="post">
    <select name="movieID">
        <% for (int id : keys) { %>
            <option value="<%= id %>"><%= id %></option>
        <% } %>
    </select>
    <input type="submit" value="Edit Record">
</form>

