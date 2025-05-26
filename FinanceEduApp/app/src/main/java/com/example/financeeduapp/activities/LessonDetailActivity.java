package com.example.financeeduapp.activities;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import com.example.financeeduapp.R;


public class LessonDetailActivity extends AppCompatActivity {
    private static final String TAG = "LessonDetailActivity";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lesson_detail);

        String lessonTitle = getIntent().getStringExtra("lessonTitle");

        TextView tvTitle = findViewById(R.id.tvLessonTitle);
        TextView tvContent = findViewById(R.id.tvLessonContent);
        Button btnQuiz = findViewById(R.id.btnStartQuiz);

        tvTitle.setText(lessonTitle);
        // Placeholder until you load lesson content from DB
        tvContent.setText("Lesson content coming soon.");


        btnQuiz.setOnClickListener(v -> {
            Log.d(TAG, "Quiz button clicked");
            try {
                Intent intent = new Intent(LessonDetailActivity.this, QuizActivity.class);
                startActivity(intent);
                Log.d(TAG, "Successfully started QuizActivity");
            } catch (Exception e) {
                Log.e(TAG, "Error starting QuizActivity", e);
                Toast.makeText(this, "Error opening quiz: " + e.getMessage(), Toast.LENGTH_LONG).show();
            }
        });
    }
}
