package com.example.financeeduapp.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.Toast;
import android.util.Log; // <-- Add this import

import androidx.appcompat.app.AppCompatActivity;

import com.example.financeeduapp.R;
import com.example.financeeduapp.utils.LocaleHelper;

public class HomeActivity extends AppCompatActivity {
    private static final String TAG = "HomeActivity";
    private Button btnQuiz, btnLessons, btnProfile, btnSettings, btnCalculator;

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(LocaleHelper.loadLocale(newBase));
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

        btnLessons = findViewById(R.id.buttonLessons);
        btnProfile = findViewById(R.id.buttonProfile);
        btnSettings = findViewById(R.id.buttonSettings);
        btnCalculator = findViewById(R.id.buttonCalculator);

        btnLessons.setOnClickListener(v -> {
            Toast.makeText(this, getString(R.string.lessons_clicked), Toast.LENGTH_SHORT).show();
            startActivity(new Intent(HomeActivity.this, LessonsActivity.class));
        });

        btnProfile.setOnClickListener(v -> {
            startActivity(new Intent(HomeActivity.this, ProfileActivity.class));
        });

        btnSettings.setOnClickListener(v -> {
            startActivity(new Intent(HomeActivity.this, SettingsActivity.class));
        });

        btnCalculator.setOnClickListener(v -> {
            startActivity(new Intent(HomeActivity.this, CalculatorActivity.class));
        });
    }
}