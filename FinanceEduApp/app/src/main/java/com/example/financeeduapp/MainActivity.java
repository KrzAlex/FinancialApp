package com.example.financeeduapp;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;

import com.example.financeeduapp.activities.HomeActivity;
import com.example.financeeduapp.utils.LocaleHelper;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(LocaleHelper.loadLocale(newBase));
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Immediately launch HomeActivity
        startActivity(new Intent(this, HomeActivity.class));
        finish(); // Close MainActivity
    }
}