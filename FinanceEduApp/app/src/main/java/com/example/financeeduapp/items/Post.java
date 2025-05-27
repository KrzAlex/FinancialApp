package com.example.financeeduapp.items;

import com.google.gson.annotations.SerializedName;

public class Post {
    @SerializedName("id")
    private int id;

    @SerializedName("title")
    private String title;

    @SerializedName("description")
    private String description;

    @SerializedName("link")
    private String link;

    // Getters
    public int getId()               { return id; }
    public String getTitle()         { return title; }
    public String getDescription()   { return description; }
    public String getLink()          { return link; }
}

