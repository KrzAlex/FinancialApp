package com.example.financeeduapp.activities;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import androidx.appcompat.app.AppCompatActivity;
import com.example.financeeduapp.R;
import android.widget.Toast;


public class LessonsActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lessons);

        Button easyButton = findViewById(R.id.buttonEasy);
        Button intermediateButton = findViewById(R.id.buttonIntermediate);
        Button hardButton = findViewById(R.id.buttonHard);

        easyButton.setOnClickListener(v -> {
            Toast.makeText(LessonsActivity.this, "Easy lessons coming soon!", Toast.LENGTH_SHORT).show();
        });


        intermediateButton.setOnClickListener(v -> {
            // TODO: Handle Intermediate click
        });

        hardButton.setOnClickListener(v -> {
            // TODO: Handle Hard click
        });
    }
}
