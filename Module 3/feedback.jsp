<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Restaurant Experience Feedback</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Restaurant Experience Feedback Form</h1>
    <p>Please fill out the form below to share your experience.</p>

    <form action="Feedbackdisplay.jsp" method="post">
        <label for="name">Full Name:</label>
        <input type="text" name="name" required>

        <label for="email">Email Address:</label>
        <input type="email" name="email" required>

        <label for="meal">Meal Ordered:</label>
        <input type="text" name="meal" required>

        <label for="rating">Service Rating:</label>
        <select name="rating">
            <option value="Excellent">Excellent</option>
            <option value="Good">Good</option>
            <option value="Fair">Fair</option>
            <option value="Poor">Poor</option>
        </select>

        <label for="comments">Additional Comments:</label>
        <textarea name="comments" rows="4"></textarea>

        <input type="submit" value="Submit Feedback">
    </form>
</body>
</html>

