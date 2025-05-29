package com.example.financeeduapp.responses;

import com.google.gson.annotations.SerializedName;

public class RegisterResponse {
    @SerializedName("error")
    private boolean error;
    @SerializedName("message")
    private String message;
    @SerializedName("data")
    private UserData data;

    public boolean isError()   { return error; }
    public String getMessage() { return message; }
    public UserData getData()  { return data; }

    public static class UserData {
        @SerializedName("id")
        private int id;
        @SerializedName("username")
        private String username;
        @SerializedName("sex")
        private String sex;
        @SerializedName("name")
        private String name;
        @SerializedName("surname")
        private String surname;
        @SerializedName("birthdate")
        private String birthdate;
        @SerializedName("email")
        private String email;

        // Getters
        public int getId()             { return id; }
        public String getUsername()    { return username; }
        public String getSex()         { return sex; }
        public String getName()        { return name; }
        public String getSurname()     { return surname; }
        public String getBirthdate()   { return birthdate; }
        public String getEmail()       { return email; }
    }
}
