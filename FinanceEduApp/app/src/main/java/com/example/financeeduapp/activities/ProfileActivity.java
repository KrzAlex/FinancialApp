package com.example.financeeduapp.activities;

import android.os.Bundle;
import android.util.Patterns;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.financeeduapp.R;

public class ProfileActivity extends AppCompatActivity {

    private EditText editName, editEmail;
    private Button buttonSave;
    private ImageView profileImage;

    private String currentName = "John Doe";
    private String currentEmail = "john@example.com";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_profile);

        editName = findViewById(R.id.editName);
        editEmail = findViewById(R.id.editEmail);
        buttonSave = findViewById(R.id.buttonSave);
        profileImage = findViewById(R.id.profileImage);

        // Load current profile data
        editName.setText(currentName);
        editEmail.setText(currentEmail);

        buttonSave.setOnClickListener(v -> {
            String name = editName.getText().toString().trim();
            String email = editEmail.getText().toString().trim();

            if (name.isEmpty()) {
                editName.setError(getString(R.string.name_error));
                return;
            }

            if (!Patterns.EMAIL_ADDRESS.matcher(email).matches()) {
                editEmail.setError(getString(R.string.email_error));
                return;
            }

            // Simulate saving
            currentName = name;
            currentEmail = email;

            Toast.makeText(this, getString(R.string.profile_saved), Toast.LENGTH_SHORT).show();
        });
    }
}
