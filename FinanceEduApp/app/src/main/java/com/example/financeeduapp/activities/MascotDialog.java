package com.example.financeeduapp.activities;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import com.example.financeeduapp.R;

public class MascotDialog extends Dialog {

    public interface DifficultySelectedListener {
        void onDifficultySelected(String difficulty);
    }

    private final DifficultySelectedListener listener;

    public MascotDialog(@NonNull Context context, DifficultySelectedListener listener) {
        super(context, android.R.style.Theme_Translucent_NoTitleBar);
        this.listener = listener;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_mascot);

        findViewById(R.id.btnEasy).setOnClickListener(v -> selectDifficulty("EASY"));
        findViewById(R.id.btnMedium).setOnClickListener(v -> selectDifficulty("INTERMEDIATE"));
        findViewById(R.id.btnHard).setOnClickListener(v -> selectDifficulty("HARD"));

        // Close when touching outside
        findViewById(android.R.id.content).setOnClickListener(v -> dismiss());
    }

    private void selectDifficulty(String difficulty) {
        if (listener != null) {
            listener.onDifficultySelected(difficulty);
        }
        dismiss();
    }
}