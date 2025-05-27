package com.example.financeeduapp.responses;

public class LoginResponse {
    public boolean error;
    public String message;
    public Data data;

    public static class Data {
        public int id;
        public String username;
    }
}
