package com.example.financeeduapp.activities;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import com.example.financeeduapp.R;
import androidx.constraintlayout.widget.ConstraintLayout;

public class LessonsActivity extends AppCompatActivity {

    private ConstraintLayout mascotContainer;
    private boolean isFirstShow = true;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lessons);

        // Initialize views
        mascotContainer = findViewById(R.id.mascotContainer);
        if (mascotContainer == null) {
            Log.e("LessonsActivity", "mascotContainer not found!");
        }
        Button easyButton = findViewById(R.id.buttonEasy);
        Button intermediateButton = findViewById(R.id.buttonIntermediate);
        Button hardButton = findViewById(R.id.buttonHard);

        // Show mascot on first launch
        if (isFirstShow) {
            showMascot();
            isFirstShow = false;
        }

        // Button click listeners
        easyButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                hideMascot();
                // Handle easy difficulty
            }
        });

        intermediateButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                hideMascot();
                // Handle intermediate difficulty
            }
        });

        hardButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                hideMascot();
                // Handle hard difficulty
            }
        });
    }

    private void showMascot() {
        mascotContainer.setVisibility(View.VISIBLE);
        mascotContainer.setAlpha(0f);
        mascotContainer.animate()
                .alpha(1f)
                .setDuration(500)
                .start();
    }

    private void hideMascot() {
        mascotContainer.animate()
                .alpha(0f)
                .setDuration(300)
                .withEndAction(new Runnable() {
                    @Override
                    public void run() {
                        mascotContainer.setVisibility(View.GONE);
                    }
                })
                .start();
    }
}