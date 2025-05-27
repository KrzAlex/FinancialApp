package com.example.financeeduapp.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.financeeduapp.R;
import com.example.financeeduapp.items.Option;
import com.example.financeeduapp.items.Question;
import com.example.financeeduapp.responses.SingleQuestionResponse;
import com.example.financeeduapp.services.ApiService;
import com.example.financeeduapp.services.RetrofitClient;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class QuizActivity extends AppCompatActivity {

    RadioGroup radioGroup;
    RadioButton optionA, optionB, optionC, optionD;
    Button submitButton, showAnswerButton, goBackButton;
    TextView feedbackText, questionText;
    int correctOptionId;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_quiz);
        String lessonTitle = getIntent().getStringExtra("lessonTitle");

        radioGroup = findViewById(R.id.radioGroupOptions);
        optionA = findViewById(R.id.optionA);
        optionB = findViewById(R.id.optionB);
        optionC = findViewById(R.id.optionC);
        optionD = findViewById(R.id.optionD);
        submitButton = findViewById(R.id.buttonSubmit);
        showAnswerButton = findViewById(R.id.buttonShowAnswer);
        feedbackText = findViewById(R.id.textFeedback);
        questionText = findViewById(R.id.textQuestion);
        goBackButton = findViewById(R.id.buttonGoBack);

        getQuiz(this, lessonTitle);

        submitButton.setOnClickListener(v -> {
            int selectedId = radioGroup.getCheckedRadioButtonId();
            submitButton.setActivated(false);

            if (selectedId == -1) {
                Toast.makeText(this, "Please select an answer.", Toast.LENGTH_SHORT).show();
                return;
            }

            if (selectedId == correctOptionId) {
                feedbackText.setText("✅ Correct!");
                feedbackText.setTextColor(getResources().getColor(android.R.color.holo_green_dark));
                goBackButton.setVisibility(Button.VISIBLE);
            } else {
                feedbackText.setText("❌ Incorrect.");
                feedbackText.setTextColor(getResources().getColor(android.R.color.holo_red_dark));
                showAnswerButton.setVisibility(Button.VISIBLE);
            }

        });

        showAnswerButton.setOnClickListener(v -> {
            RadioButton correctOption = findViewById(correctOptionId);
            Toast.makeText(this, "Correct Answer: " + correctOption.getText(), Toast.LENGTH_LONG).show();
        });
        goBackButton.setOnClickListener( v -> {
            Toast.makeText(this, "Going back", Toast.LENGTH_LONG).show();
            Intent intent = new Intent(this, HomeActivity.class);
            startActivity(intent);
        });
    }

    private void getQuiz(Context contx, String lessonTitle){
        ApiService api = RetrofitClient.getApiService();
        api.getQuestionByLesson("getQuestionByLesson", lessonTitle)
                .enqueue(new Callback<SingleQuestionResponse>() {
                    @Override
                    public void onResponse(Call<SingleQuestionResponse> call,
                                           Response<SingleQuestionResponse> response) {
                        if (!response.isSuccessful()) {
                            Toast.makeText(contx,
                                    "Error HTTP: " + response.code(),
                                    Toast.LENGTH_SHORT).show();
                            return;
                        }
                        SingleQuestionResponse resp = response.body();
                        if (resp == null || resp.isError()) {
                            String msg = (resp != null) ? resp.getMessage() : "No Question";
                            Toast.makeText(contx, msg, Toast.LENGTH_SHORT).show();
                            return;
                        }

                        Question q = resp.getData();

                        questionText.setText(q.getBody());
                        optionA.setText(q.getOptions().get(0).getText());
                        if (q.getOptions().get(0).getCorrect()) {correctOptionId = R.id.optionA;};
                        optionB.setText(q.getOptions().get(1).getText());
                        if (q.getOptions().get(1).getCorrect()) {correctOptionId = R.id.optionB;};
                        optionC.setText(q.getOptions().get(2).getText());
                        if (q.getOptions().get(2).getCorrect()) {correctOptionId = R.id.optionC;};
                        optionD.setText(q.getOptions().get(3).getText());
                        if (q.getOptions().get(3).getCorrect()) {correctOptionId = R.id.optionD;};
                    }

                    @Override
                    public void onFailure(Call<SingleQuestionResponse> call, Throwable t) {
                        Toast.makeText(contx,
                                "Falló la petición: " + t.getMessage(),
                                Toast.LENGTH_SHORT).show();
                    }
                });
    }
}
