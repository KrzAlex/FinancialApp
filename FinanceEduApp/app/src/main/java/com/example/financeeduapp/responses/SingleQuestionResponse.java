package com.example.financeeduapp.responses;

import com.example.financeeduapp.items.Question;
import com.google.gson.annotations.SerializedName;

// SingleQuestionResponse.java
public class SingleQuestionResponse {
    @SerializedName("error")   private boolean error;
    @SerializedName("message") private String message;
    @SerializedName("data")    private Question data;

    //Getters
    public Question getData() {return data;}
    public String getMessage() {return message;}
    public boolean isError() {return error;}
}
