package com.example.financeeduapp.items;

import com.google.gson.annotations.SerializedName;

public class Option {
    @SerializedName("id")      private int id;
    @SerializedName("text")    private String text;
    @SerializedName("correct") private boolean correct;

    // Getters
    public int getId() {return id;}
    public String getText() {return text;}
    public boolean getCorrect() {return correct;}
}
