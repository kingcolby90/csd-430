package TexasTravel;

import java.io.Serializable;

public class TravelBean implements Serializable {
    private String category;
    private String location;
    private String description;
    private String bestSeason;
    private String activity;

    public TravelBean() {}

    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }

    public String getLocation() { return location; }
    public void setLocation(String location) { this.location = location; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getBestSeason() { return bestSeason; }
    public void setBestSeason(String bestSeason) { this.bestSeason = bestSeason; }

    public String getActivity() { return activity; }
    public void setActivity(String activity) { this.activity = activity; }
}

