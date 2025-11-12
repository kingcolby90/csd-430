<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Submitted Feedback</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Thank You for Your Feedback!</h1>
    <p>Below is a summary of the information you entered.</p>

    <%
        // Retrieve form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String meal = request.getParameter("meal");
        String rating = request.getParameter("rating");
        String comments = request.getParameter("comments");
    %>

    <table>
        <tr>
            <th>Field</th>
            <th>Submitted Data</th>
        </tr>
        <tr>
            <td>Full Name</td>
            <td><%= name %></td>
        </tr>
        <tr>
            <td>Email Address</td>
            <td><%= email %></td>
        </tr>
        <tr>
            <td>Meal Ordered</td>
            <td><%= meal %></td>
        </tr>
        <tr>
            <td>Service Rating</td>
            <td><%= rating %></td>
        </tr>
        <tr>
            <td>Additional Comments</td>
            <td><%= comments %></td>
        </tr>
    </table>
</body>
</html>
