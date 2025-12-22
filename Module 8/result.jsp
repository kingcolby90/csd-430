
<h2>Updated Movie Record</h2>

<table border="1">
    <thead>
        <tr>
            <th>ID</th><th>Title</th><th>Director</th><th>Year</th><th>Genre</th><th>Rating</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><%= updated.getMovieID() %></td>
            <td><%= updated.getTitle() %></td>
            <td><%= updated.getDirector() %></td>
            <td><%= updated.getYear() %></td>
            <td><%= updated.getGenre() %></td>
            <td><%= updated.getRating() %></td>
        </tr>
    </tbody>
</table>

