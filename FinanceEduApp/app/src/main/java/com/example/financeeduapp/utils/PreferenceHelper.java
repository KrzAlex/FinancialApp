package com.example.financeeduapp.utils;

import android.content.Context;
import android.content.SharedPreferences;

public class PreferenceHelper {
    private static final String PREF_NAME = "app_prefs";
    private static final String KEY_FIRST_LESSON_CLICK = "first_lesson_click";

    public static boolean isFirstLessonClick(Context context) {
        SharedPreferences prefs = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
        return prefs.getBoolean(KEY_FIRST_LESSON_CLICK, true);
    }

    public static void setFirstLessonClickCompleted(Context context) {
        SharedPreferences.Editor editor = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE).edit();
        editor.putBoolean(KEY_FIRST_LESSON_CLICK, false);
        editor.apply();
    }
}