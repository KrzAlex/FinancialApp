package com.example.financeeduapp.utils;

import android.util.Patterns;

public class InputValidator {

    public static boolean isValidEmail(String email) {
        return email != null && Patterns.EMAIL_ADDRESS.matcher(email).matches();
    }
}
