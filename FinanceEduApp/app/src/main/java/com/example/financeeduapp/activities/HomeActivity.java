package com.example.financeeduapp.activities;
import com.example.financeeduapp.activities.CalculatorActivity;
import com.example.financeeduapp.activities.ProfileActivity;
import com.example.financeeduapp.activities.SettingsActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.financeeduapp.R;

public class HomeActivity extends AppCompatActivity {

    private Button btnQuiz, btnLessons, btnProfile, btnSettings, btnCalculator;

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

        btnLessons.setOnClickListener(v ->
                Toast.makeText(this, getString(R.string.lessons_clicked), Toast.LENGTH_SHORT).show());


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
