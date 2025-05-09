package com.example.financeeduapp.activities;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.*;

import androidx.appcompat.app.AppCompatActivity;

import com.example.financeeduapp.R;
import com.example.financeeduapp.utils.LocaleHelper;

import java.util.Locale;

public class CalculatorActivity extends AppCompatActivity {

    private EditText editPrincipal, editRate, editTime;
    private Spinner frequencySpinner;
    private TextView textTotalAmount, textTotalInterest;

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(LocaleHelper.loadLocale(newBase));
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calculator);

        editPrincipal = findViewById(R.id.editPrincipal);
        editRate = findViewById(R.id.editRate);
        editTime = findViewById(R.id.editTime);
        frequencySpinner = findViewById(R.id.spinnerFrequency);
        textTotalAmount = findViewById(R.id.textTotalAmount);
        textTotalInterest = findViewById(R.id.textTotalInterest);

        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(
                this,
                R.array.frequency_options,
                android.R.layout.simple_spinner_item
        );
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        frequencySpinner.setAdapter(adapter);

        TextWatcher watcher = new TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {
                calculateInterest();
            }
            @Override public void afterTextChanged(Editable s) {}
        };

        editPrincipal.addTextChangedListener(watcher);
        editRate.addTextChangedListener(watcher);
        editTime.addTextChangedListener(watcher);

        frequencySpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                calculateInterest();
            }
            @Override public void onNothingSelected(AdapterView<?> parent) {}
        });
    }

    private void calculateInterest() {
        String principalStr = editPrincipal.getText().toString();
        String rateStr = editRate.getText().toString();
        String timeStr = editTime.getText().toString();

        if (principalStr.isEmpty() || rateStr.isEmpty() || timeStr.isEmpty()) {
            textTotalAmount.setText("");
            textTotalInterest.setText("");
            return;
        }

        double principal = Double.parseDouble(principalStr);
        double rate = Double.parseDouble(rateStr) / 100;
        double time = Double.parseDouble(timeStr);

        int n;
        switch (frequencySpinner.getSelectedItem().toString()) {
            case "Quarterly": n = 4; break;
            case "Monthly": n = 12; break;
            case "Daily": n = 365; break;
            default: n = 1; // Yearly
        }

        double amount = principal * Math.pow((1 + rate / n), n * time);
        double interest = amount - principal;

        textTotalAmount.setText(String.format(Locale.getDefault(), "%s: %.2f", getString(R.string.total_amount), amount));
        textTotalInterest.setText(String.format(Locale.getDefault(), "%s: %.2f", getString(R.string.total_interest), interest));
    }
}
