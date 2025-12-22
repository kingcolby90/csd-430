<%@ page import="java.util.*, yourpackage.MovieBean" %>

<%
    MovieBean bean = new MovieBean();
    List<Integer> keys = bean.getAllKeys();
%>

<form action="c:\Users\mrcdk\OneDrive\Pictures\Screenshots\student1statements.png" method="post">
    <select name="movieID">
        <% for (int id : keys) { %>
            <option value="<%= id %>"><%= id %></option>
        <% } %>
    </select>
    <input type="submit" value="View Record">
</form>

