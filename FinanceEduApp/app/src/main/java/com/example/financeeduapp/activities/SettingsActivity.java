package com.example.financeeduapp.activities;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.financeeduapp.R;
import com.example.financeeduapp.utils.LocaleHelper;

public class SettingsActivity extends AppCompatActivity {

    private boolean isFirstSelection = true;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LocaleHelper.loadLocale(this);
        setContentView(R.layout.activity_settings);

        Spinner languageSpinner = findViewById(R.id.language_spinner);

        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(
                this,
                R.array.languages,
                android.R.layout.simple_spinner_item
        );
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        languageSpinner.setAdapter(adapter);

        // Set spinner selection based on current locale
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

                    // Restart activity to apply language
                    Intent intent = new Intent(SettingsActivity.this, SettingsActivity.class);
                    startActivity(intent);
                    finish();
                }
            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) { }
        });
    }

    private int getLanguageIndex(String langCode) {
        switch (langCode) {
            case "tr": return 1;
            case "it": return 2;
            case "es": return 3;
            default: return 0; // English
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

