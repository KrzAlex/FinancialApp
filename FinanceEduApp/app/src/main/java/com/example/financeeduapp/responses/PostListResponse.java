package com.example.financeeduapp.responses;

import com.example.financeeduapp.items.Post;
import com.google.gson.annotations.SerializedName;

import java.util.List;

public class PostListResponse {
    @SerializedName("error")
    private boolean error;

    @SerializedName("message")
    private String message;

    @SerializedName("data")
    private List<Post> data;

    // Getters
    public boolean isError()        { return error; }
    public String getMessage()      { return message; }
    public List<Post> getData()     { return data; }
}