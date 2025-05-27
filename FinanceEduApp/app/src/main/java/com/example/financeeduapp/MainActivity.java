package com.example.financeeduapp;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.financeeduapp.activities.HomeActivity;
import com.example.financeeduapp.activities.LoginActivity;
import com.example.financeeduapp.responses.LoginResponse;
import com.example.financeeduapp.services.ApiService;
import com.example.financeeduapp.services.RetrofitClient;
import com.example.financeeduapp.utils.LocaleHelper;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(LocaleHelper.loadLocale(newBase));
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // Immediately launch HomeActivity
        try {
            startActivity(new Intent(this, LoginActivity.class));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        finish(); // Close MainActivity
    }

}