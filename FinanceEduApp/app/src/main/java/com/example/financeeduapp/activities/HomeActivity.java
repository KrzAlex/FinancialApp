package com.example.financeeduapp.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.financeeduapp.R;
import com.example.financeeduapp.utils.LocaleHelper;

public class HomeActivity extends AppCompatActivity {

    private Button btnQuiz, btnLessons, btnProfile, btnSettings, btnCalculator;

    // Load correct locale before UI is created
    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(LocaleHelper.loadLocale(newBase));
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

        btnQuiz = findViewById(R.id.buttonQuiz);
        btnLessons = findViewById(R.id.buttonLessons);
        btnProfile = findViewById(R.id.buttonProfile);
        btnSettings = findViewById(R.id.buttonSettings);
        btnCalculator = findViewById(R.id.buttonCalculator);

        btnQuiz.setOnClickListener(v ->
                Toast.makeText(this, getString(R.string.quiz_clicked), Toast.LENGTH_SHORT).show());

        btnLessons.setOnClickListener(v -> {
            Toast.makeText(this, getString(R.string.lessons_clicked), Toast.LENGTH_SHORT).show();
            Intent intent = new Intent(HomeActivity.this, LessonsActivity.class);
            startActivity(intent);
        });

        btnProfile.setOnClickListener(v -> {
            Intent intent = new Intent(HomeActivity.this, ProfileActivity.class);
            startActivity(intent);
        });

        btnSettings.setOnClickListener(v -> {
            Intent intent = new Intent(HomeActivity.this, SettingsActivity.class);
            startActivity(intent);
        });

        btnCalculator.setOnClickListener(v -> {
            Intent intent = new Intent(HomeActivity.this, CalculatorActivity.class);
            startActivity(intent);
        });
    }
}
