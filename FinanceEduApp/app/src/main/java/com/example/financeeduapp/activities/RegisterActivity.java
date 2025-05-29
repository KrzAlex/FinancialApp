package com.example.financeeduapp.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.example.financeeduapp.R;
import com.example.financeeduapp.responses.RegisterResponse;
import com.example.financeeduapp.services.ApiService;
import com.example.financeeduapp.services.RetrofitClient;
import com.example.financeeduapp.utils.InputValidator;

import java.util.Date;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class RegisterActivity extends AppCompatActivity {

    private EditText nameInput, surnameInput, emailInput, passwordInput, birthInput, usernameInput;
    private Button registerButton;
    private RadioGroup sexRadioGroup;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_register);
        nameInput = findViewById(R.id.editRName);
        surnameInput = findViewById(R.id.editSurname);
        usernameInput = findViewById(R.id.editUsername);
        emailInput = findViewById(R.id.editREmailAddress);
        passwordInput = findViewById(R.id.editRPassword);
        birthInput = findViewById(R.id.editBirthDate);
        sexRadioGroup = findViewById(R.id.radioSexGroup);
        registerButton = findViewById(R.id.buttonRegister);

        registerButton.setOnClickListener(v -> {
            String name = nameInput.getText().toString();
            String surname = surnameInput.getText().toString();
            String username = usernameInput.getText().toString();
            String email = emailInput.getText().toString();
            String password = passwordInput.getText().toString();
            String birth = birthInput.getText().toString();
            String sex;
            if (sexRadioGroup.getCheckedRadioButtonId() == R.id.radioMbuton) {
                sex = "M";
            } else if (sexRadioGroup.getCheckedRadioButtonId() == 1) {
                sex = "F";
            } else {
                sex = "N";
            }

            if (TextUtils.isEmpty(name)) {
                nameInput.setError("");
                Toast.makeText(this, "Please fill your name", Toast.LENGTH_SHORT).show();
                return;
            }
            if (TextUtils.isEmpty(surname)) {
                surnameInput.setError("");
                Toast.makeText(this, "Please fill your surname", Toast.LENGTH_SHORT).show();
                return;
            }
            if (TextUtils.isEmpty(username)) {
                usernameInput.setError("");
                Toast.makeText(this, "Please fill your username", Toast.LENGTH_SHORT).show();
                return;
            }
            if (!InputValidator.isValidEmail(email)) {
                emailInput.setError(getString(R.string.invalid_email_error));
                return;
            }
            if (TextUtils.isEmpty(password)) {
                passwordInput.setError("");
                Toast.makeText(this, "Please fill your password", Toast.LENGTH_SHORT).show();
                return;
            }
            if (TextUtils.isEmpty(birth)) {
                birthInput.setError("");
                Toast.makeText(this, "Please fill your Birthdate", Toast.LENGTH_SHORT).show();
                return;
            }
            if (sexRadioGroup.getCheckedRadioButtonId() == -1) {
                Toast.makeText(this, "Please select a sex", Toast.LENGTH_SHORT).show();
                return;
            }

            doRegister(this, username, sex, name, surname, birth, email, password);
        });


    }

    private void doRegister(Context contx, String username, String sex, String name,
                            String surname, String birthdate, String email, String password) {

        ApiService api = RetrofitClient.getApiService();
        api.register("register", username, sex, name, surname, birthdate, email, password)
                .enqueue(new Callback<RegisterResponse>() {
                    @Override
                    public void onResponse(
                            Call<RegisterResponse> call,
                            Response<RegisterResponse> response
                    ) {
                        if (!response.isSuccessful() || response.body() == null) {
                            Toast.makeText(contx,
                                    "Error HTTP: " + response.code(),
                                    Toast.LENGTH_SHORT).show();
                            return;
                        }
                        RegisterResponse resp = response.body();
                        if (resp.isError()) {
                            Toast.makeText(contx,
                                    resp.getMessage(),
                                    Toast.LENGTH_SHORT).show();
                        } else {
                            RegisterResponse.UserData u = resp.getData();
                            Toast.makeText(contx,
                                    "¡Welcome, " + u.getName() +
                                            " " + u.getSurname() + "!",
                                    Toast.LENGTH_SHORT).show();
                            // Guarda sesión, navega a la siguiente pantalla, etc.
                        }
                        startActivity(new Intent(contx, HomeActivity.class));
                        finish();
                    }

                    @Override
                    public void onFailure(
                            Call<RegisterResponse> call,
                            Throwable t
                    ) {
                        Toast.makeText(contx,
                                "Falló la petición: " + t.getMessage(),
                                Toast.LENGTH_SHORT).show();
                    }
                });
    }
}
