<h2>Movie Record Details</h2>

<table border="1">
    <thead>
        <tr>
            <th>Movie ID</th>
            <th>Title</th>
            <th>Director</th>
            <th>Year</th>
            <th>Genre</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><%= record.getMovieID() %></td>
            <td><%= record.getTitle() %></td>
            <td><%= record.getDirector() %></td>
            <td><%= record.getYear() %></td>
            <td><%= record.getGenre() %></td>
        </tr>
    </tbody>
</table>