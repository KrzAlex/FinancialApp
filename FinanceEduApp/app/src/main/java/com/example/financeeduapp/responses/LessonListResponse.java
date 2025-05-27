package com.example.financeeduapp.responses;

import java.util.List;

public class LessonListResponse {
    private boolean error;
    private String message;
    private List<String> data;

    // Getters
    public boolean isError()      { return error; }
    public String getMessage()    { return message; }
    public List<String> getData() { return data; }
}
