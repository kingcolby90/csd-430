<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Texas Traveling sites </title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Texas Traveling sites </h1>
    <p>This page is a list of best memorable places visited in Texas.</p>

    <%
        // Define a record class
        class TravelRecord {
            String category;
            String location;
            String description;

            TravelRecord(String category, String location, String description) {
                this.category = category;
                this.location = location;
                this.description = description;
            }
        }

        // Create a list of travel records
        List<TravelRecord> records = new ArrayList<>();
        records.add(new TravelRecord("City", "Austin", "Live music and great food"));
        records.add(new TravelRecord("Beach", "South Padre Island", "Relaxing and swimming"));
        records.add(new TravelRecord("History", "San Antonio", "The Alamo and River Walk"));
        records.add(new TravelRecord("Culture", "Dallas", "Museums and arts district"));
        records.add(new TravelRecord("Food", "Houston", "Voted Best food in Texas"));
    %>

    <table>
        <tr>
            <th>Category</th>
            <th>Location</th>
            <th>Description</th>
        </tr>
        <%
            for (TravelRecord record : records) {
        %>
        <tr>
            <td><%= record.category %></td>
            <td><%= record.location %></td>
            <td><%= record.description %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>

