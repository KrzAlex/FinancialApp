package com.example.financeeduapp;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button; // For Button
import com.example.financeeduapp.activities.LessonsActivity; // For LessonsActivity


import androidx.appcompat.app.AppCompatActivity;

import com.example.financeeduapp.utils.LocaleHelper;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(LocaleHelper.loadLocale(newBase));
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button lessonsButton = findViewById(R.id.buttonLessons);
        lessonsButton.setOnClickListener(v -> {
            Intent intent = new Intent(MainActivity.this, LessonsActivity.class);
            startActivity(intent);
        });

        // You can navigate to a language settings activity or buttons here
        // Example: if language is changed via a button
        // changeLanguage("tr");
    }

    // Example method to change language and restart
    private void changeLanguage(String languageCode) {
        LocaleHelper.setLocale(this, languageCode);
        Intent intent = getIntent();
        finish();
        startActivity(intent);
    }
}




