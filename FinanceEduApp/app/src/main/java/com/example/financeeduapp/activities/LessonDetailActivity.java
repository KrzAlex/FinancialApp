package com.example.financeeduapp.activities;

import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.example.financeeduapp.R;

public class LessonDetailActivity extends AppCompatActivity {
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
            // Later, connect to quiz for this lesson
            android.widget.Toast.makeText(this, "Start Quiz for: " + lessonTitle, android.widget.Toast.LENGTH_SHORT).show();
        });
    }
}
