package com.example.financeeduapp.activities;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import com.example.financeeduapp.R;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.List;

public class LessonsActivity extends AppCompatActivity {

    private ConstraintLayout mascotContainer;
    private LinearLayout lessonTopicsContainer;
    private boolean isFirstShow = true;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lessons);

        mascotContainer = findViewById(R.id.mascotContainer);
        lessonTopicsContainer = findViewById(R.id.lessonTopicsContainer);

        Button easyButton = findViewById(R.id.buttonEasy);
        Button intermediateButton = findViewById(R.id.buttonIntermediate);
        Button hardButton = findViewById(R.id.buttonHard);

        if (isFirstShow) {
            showMascot();
            isFirstShow = false;
        }

        easyButton.setOnClickListener(v -> {
            hideMascot();
            showLessonsByDifficulty("beginner");
        });

        intermediateButton.setOnClickListener(v -> {
            hideMascot();
            showLessonsByDifficulty("intermediate");
        });

        hardButton.setOnClickListener(v -> {
            hideMascot();
            showLessonsByDifficulty("hard");
        });
    }

    private void showMascot() {
        mascotContainer.setVisibility(View.VISIBLE);
        mascotContainer.setAlpha(0f);
        mascotContainer.animate().alpha(1f).setDuration(500).start();
        lessonTopicsContainer.setVisibility(View.GONE);
    }

    private void hideMascot() {
        mascotContainer.animate()
                .alpha(0f)
                .setDuration(300)
                .withEndAction(() -> mascotContainer.setVisibility(View.GONE))
                .start();
    }

    private void showLessonsByDifficulty(String difficulty) {
        lessonTopicsContainer.removeAllViews();

        List<String> lessonTitles;
        switch (difficulty.toLowerCase()) {
            case "beginner":
                lessonTitles = getBeginnerLessonTitles();
                break;
            case "intermediate":
                lessonTitles = getIntermediateLessonTitles();
                break;
            default:
                lessonTitles = getAdvancedLessonTitles();
                break;
        }

        lessonTopicsContainer.setVisibility(View.VISIBLE);
        findViewById(R.id.buttonsContainer).setVisibility(View.GONE);

        for (String lessonTitle : lessonTitles) {
            Button btn = new Button(this);
            btn.setText(lessonTitle);
            btn.setTextSize(16);
            btn.setAllCaps(false);
            btn.setPadding(0, 24, 0, 24);
            btn.setBackgroundResource(android.R.drawable.btn_default);

            btn.setOnClickListener(view -> {
                Intent intent = new Intent(this, LessonDetailActivity.class);
                intent.putExtra("lessonTitle", lessonTitle);
                // You can later also pass lessonId or more info for DB fetch
                startActivity(intent);
            });

            lessonTopicsContainer.addView(btn);
        }
    }

    private List<String> getBeginnerLessonTitles() {
        List<String> list = new ArrayList<>();
        list.add("Introduction to Personal Finance");
        list.add("Budgeting and Expense Management");
        list.add("Saving Money and Financial Goals");
        list.add("Understanding Bank Accounts and Interest Rates");
        list.add("Inflation");
        return list;
    }

    private List<String> getIntermediateLessonTitles() {
        List<String> list = new ArrayList<>();
        list.add("Emergency Funds");
        list.add("Introduction to Stocks");
        list.add("Introduction to Bonds");
        list.add("Introduction to ETFs");
        list.add("Compound Interest and Wealth Growth");
        return list;
    }

    private List<String> getAdvancedLessonTitles() {
        List<String> list = new ArrayList<>();
        list.add("Advanced Investment Strategies");
        list.add("Behavioral Finance and Investor Psychology");
        list.add("Real Estate");
        list.add("Financial Independence and FIRE Movement");
        list.add("Alternative Investments and Diversification");
        return list;
    }
}
