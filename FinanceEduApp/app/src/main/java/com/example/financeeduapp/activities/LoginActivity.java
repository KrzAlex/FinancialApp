package com.example.financeeduapp.activities;
import com.example.financeeduapp.activities.HomeActivity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.financeeduapp.MainActivity;
import com.example.financeeduapp.R;
import com.example.financeeduapp.services.ConnectionClass;
import com.example.financeeduapp.utils.InputValidator;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class LoginActivity extends AppCompatActivity {

    private EditText emailInput, passwordInput;
    private Button loginButton;

    ConnectionClass connectionClass;
    Connection con;
    ResultSet rs;
    String name, str;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        connectionClass = new ConnectionClass();
        connect();

        emailInput = findViewById(R.id.editTextEmail);
        passwordInput = findViewById(R.id.editTextPassword);
        loginButton = findViewById(R.id.buttonLogin);

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

            // Temporary login check (mock)
            if (email.equals("arda@gmail.com") && password.equals("1")) {
                Toast.makeText(this, getString(R.string.login_success), Toast.LENGTH_SHORT).show();
                startActivity(new Intent(this, HomeActivity.class));
                finish();
            } else {
                Toast.makeText(this, getString(R.string.login_failed), Toast.LENGTH_SHORT).show();
            }
        });
    }

    public void connect(){
        ExecutorService executorService = Executors.newSingleThreadExecutor();
        executorService.execute(() -> {
            try{
                con = connectionClass.CONN();
                if(con == null){
                    str =getString(R.string.error_Con);
                } else {
                    str =getString(R.string.good_Con);
                }
            } catch (Exception e) {
                throw new RuntimeException(e);
            }

            runOnUiThread(()->{
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
                Toast.makeText(this, str, Toast.LENGTH_SHORT).show();
            });
         });
    }
}

