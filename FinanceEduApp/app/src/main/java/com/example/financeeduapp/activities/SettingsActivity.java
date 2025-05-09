package com.example.financeeduapp.activities;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.financeeduapp.R;
import com.example.financeeduapp.utils.LocaleHelper;

public class SettingsActivity extends AppCompatActivity {

    private boolean isFirstSelection = true;

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(LocaleHelper.loadLocale(newBase));
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_settings);

        Spinner languageSpinner = findViewById(R.id.language_spinner);
        Button logoutButton = findViewById(R.id.button_logout); // 👈 Add this to your XML

        // Set up language spinner
        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(
                this,
                R.array.languages,
                android.R.layout.simple_spinner_item
        );
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        languageSpinner.setAdapter(adapter);

        String currentLang = LocaleHelper.getLanguage(this);
        int langIndex = getLanguageIndex(currentLang);
        languageSpinner.setSelection(langIndex);

        languageSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int pos, long l) {
                if (isFirstSelection) {
                    isFirstSelection = false;
                    return;
                }

                String selectedLanguage = getSelectedLanguageCode(pos);
                if (!selectedLanguage.equals(LocaleHelper.getLanguage(SettingsActivity.this))) {
                    LocaleHelper.setLocale(SettingsActivity.this, selectedLanguage);
                    Toast.makeText(SettingsActivity.this, getString(R.string.language_changed), Toast.LENGTH_SHORT).show();

                    Intent intent = new Intent(SettingsActivity.this, LoginActivity.class);
                    intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK | Intent.FLAG_ACTIVITY_NEW_TASK);
                    startActivity(intent);
                    finishAffinity();
                }
            }

            @Override public void onNothingSelected(AdapterView<?> adapterView) { }
        });

        // ✅ Logout functionality
        logoutButton.setOnClickListener(v -> {
            // Clear login session
            SharedPreferences prefs = getSharedPreferences("UserSession", MODE_PRIVATE);
            prefs.edit().clear().apply();

            // Redirect to login
            Intent intent = new Intent(SettingsActivity.this, LoginActivity.class);
            intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK | Intent.FLAG_ACTIVITY_NEW_TASK);
            startActivity(intent);
            finishAffinity();
        });
    }

    private int getLanguageIndex(String langCode) {
        switch (langCode) {
            case "tr": return 1;
            case "it": return 2;
            case "es": return 3;
            default: return 0;
        }
    }

    private String getSelectedLanguageCode(int position) {
        switch (position) {
            case 1: return "tr";
            case 2: return "it";
            case 3: return "es";
            default: return "en";
        }
    }
}




