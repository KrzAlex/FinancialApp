package com.example.financeeduapp.activities;

import android.os.Bundle;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.financeeduapp.R;

public class QuizActivity extends AppCompatActivity {

    RadioGroup radioGroup;
    RadioButton optionA, optionB, optionC, optionD;
    Button submitButton, showAnswerButton;
    TextView feedbackText;
    int correctOptionId;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_quiz);

        radioGroup = findViewById(R.id.radioGroupOptions);
        optionA = findViewById(R.id.optionA);
        optionB = findViewById(R.id.optionB);
        optionC = findViewById(R.id.optionC);
        optionD = findViewById(R.id.optionD);
        submitButton = findViewById(R.id.buttonSubmit);
        showAnswerButton = findViewById(R.id.buttonShowAnswer);
        feedbackText = findViewById(R.id.textFeedback);

        // Set correct answer (example: B)
        correctOptionId = R.id.optionB;

        submitButton.setOnClickListener(v -> {
            int selectedId = radioGroup.getCheckedRadioButtonId();

            if (selectedId == -1) {
                Toast.makeText(this, "Please select an answer.", Toast.LENGTH_SHORT).show();
                return;
            }

            if (selectedId == correctOptionId) {
                feedbackText.setText("✅ Correct!");
                feedbackText.setTextColor(getResources().getColor(android.R.color.holo_green_dark));
            } else {
                feedbackText.setText("❌ Incorrect.");
                feedbackText.setTextColor(getResources().getColor(android.R.color.holo_red_dark));
            }

            showAnswerButton.setVisibility(Button.VISIBLE);
        });

        showAnswerButton.setOnClickListener(v -> {
            RadioButton correctOption = findViewById(correctOptionId);
            Toast.makeText(this, "Correct Answer: " + correctOption.getText(), Toast.LENGTH_LONG).show();
        });
    }
}
