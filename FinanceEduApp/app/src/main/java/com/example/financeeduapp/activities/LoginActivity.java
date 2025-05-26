package com.example.financeeduapp.activities;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.financeeduapp.MainActivity;
import com.example.financeeduapp.R;
import com.example.financeeduapp.responses.LoginResponse;
import com.example.financeeduapp.services.ApiService;
import com.example.financeeduapp.services.RetrofitClient;
import com.example.financeeduapp.utils.InputValidator;
import com.example.financeeduapp.utils.LocaleHelper;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class LoginActivity extends AppCompatActivity {

    private EditText emailInput, passwordInput;
    private Button loginButton;
    private TextView forgotPasswordText;

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(LocaleHelper.loadLocale(newBase));
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // 🛑 If already logged in, skip login screen
        if (isUserLoggedIn()) {
            Intent intent = new Intent(this, HomeActivity.class);
            intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
            startActivity(intent);
            return;
        }

        setContentView(R.layout.activity_login);

        emailInput = findViewById(R.id.editTextEmail);
        passwordInput = findViewById(R.id.editTextPassword);
        loginButton = findViewById(R.id.buttonLogin);
        forgotPasswordText = findViewById(R.id.textForgotPassword);

        loginButton.setOnClickListener(v -> {
            String email = emailInput.getText().toString().trim();
            String password = passwordInput.getText().toString().trim();

            if (!InputValidator.isValidEmail(email)) {
                emailInput.setError(getString(R.string.invalid_email_error));
                return;
            }

            if (TextUtils.isEmpty(password)) {
                passwordInput.setError(getString(R.string.empty_password_error));
                return;
            }


            doLogin(email, password, this);
            // ✅ Mock login credentials
           /* if (email.equals("arda@gmail.com") && password.equals("1")) {
                // ✅ Save session
                SharedPreferences.Editor editor = getSharedPreferences("UserSession", MODE_PRIVATE).edit();
                editor.putBoolean("isLoggedIn", true);
                editor.apply();

                Toast.makeText(this, getString(R.string.login_success), Toast.LENGTH_SHORT).show();
                startActivity(new Intent(this, HomeActivity.class));
                finish();
            } else {
                Toast.makeText(this, getString(R.string.login_failed), Toast.LENGTH_SHORT).show();
            }*/
        });

        forgotPasswordText.setOnClickListener(v -> {
            Intent intent = new Intent(LoginActivity.this, ForgotPasswordActivity.class);
            startActivity(intent);
        });
    }

    private boolean isUserLoggedIn() {
        SharedPreferences prefs = getSharedPreferences("UserSession", MODE_PRIVATE);
        return prefs.getBoolean("isLoggedIn", false);
    }
    private void doLogin(String email, String password, Context cont) {
        ApiService api = RetrofitClient.getApiService();
        Call<LoginResponse> call = api.login("login", email, password);
        call.enqueue(new Callback<LoginResponse>() {
            @Override
            public void onResponse(Call<LoginResponse> call, Response<LoginResponse> response) {
                if (response.isSuccessful() && response.body() != null) {
                    LoginResponse resp = response.body();
                    if (!resp.error) {
                        Toast.makeText(LoginActivity.this,
                                "¡Wlecome, " + resp.data.username + "!",
                                Toast.LENGTH_SHORT).show();
                        startActivity(new Intent(cont, HomeActivity.class));
                        finish();
                        // Aquí inicias la siguiente Activity, guardas sesión, etc.
                    } else {
                        Toast.makeText(LoginActivity.this,
                                "Error: " + resp.message,
                                Toast.LENGTH_SHORT).show();
                    }
                } else {
                    Toast.makeText(LoginActivity.this,
                            "Respuesta no exitosa: " + response.code(),
                            Toast.LENGTH_SHORT).show();
                }
            }

            @Override
            public void onFailure(Call<LoginResponse> call, Throwable t) {
                Toast.makeText(LoginActivity.this,
                        "Fallo conexión: " + t.getMessage(),
                        Toast.LENGTH_LONG).show();
            }
        });
    }
}



