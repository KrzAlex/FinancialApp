package com.example.financeeduapp.items;

import com.google.gson.annotations.SerializedName;

import java.util.List;

public class Question {
    @SerializedName("id")      private int id;
    @SerializedName("title")   private String title;
    @SerializedName("body")    private String body;
    @SerializedName("options") private List<Option> options;

    // Getters
    public int getId() {return id;}
    public String getTitle() {return title;}
    public String getBody() {return body;}
    public List<Option> getOptions() {return options;}
}

