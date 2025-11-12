<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="TravelBean" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Texas Travel Highlights</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Texas Travel Highlights</h1>
    <p>This page displays a list of memorable places visited in Texas, grouped by category and season.</p>

    <%
        // Create and populate travel records
        List<travelbean.java> travelList = new ArrayList<>();

        TravelBean t1 = new TravelBean();
        t1.setCategory("City");
        t1.setLocation("Austin");
        t1.setDescription("Live music and great food");
        t1.setBestSeason("Spring");
        t1.setActivity("Music festivals");
        travelList.add(t1);

        TravelBean t2 = new TravelBean();
        t3.setCategory("Beach");
        t3.setLocation("South Padre Island");
        t3.setDescription("Relaxing and swimming");
        t3.setBestSeason("Summer");
        t3.setActivity("Swimming");
        travelList.add(t2);

        TravelBean t3 = new TravelBean();
        t4.setCategory("History");
        t4.setLocation("San Antonio");
        t4.setDescription("The Alamo and River Walk");
        t4.setBestSeason("Winter");
        t4.setActivity("Sightseeing");
        travelList.add(t3);

        TravelBean t4 = new TravelBean();
        t5.setCategory("Culture");
        t5.setLocation("Dallas");
        t5.setDescription("Museums and arts district");
        t5.setBestSeason("Spring");
        t5.setActivity("Museum tours");
        travelList.add(t4);

        TravelBean t5 = new TravelBean();
        t2.setCategory("Food");
        t2.setLocation("Houston");
        t2.setDescription("Voted best food in Texas");
        t2.setBestSeason("Fall");
        t2.setActivity("Eating");
        travelList.add(t5);
    %>

    <table>
        <tr>
            <th>Category</th>
            <th>Location</th>
            <th>Description</th>
            <th>Best Season</th>
            <th>Activity</th>
        </tr>
        <%
            for (TravelBean tb : travelList) {
        %>
        <tr>
            <td><%= tb.getCategory() %></td>
            <td><%= tb.getLocation() %></td>
            <td><%= tb.getDescription() %></td>
            <td><%= tb.getBestSeason() %></td>
            <td><%= tb.getActivity() %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>

