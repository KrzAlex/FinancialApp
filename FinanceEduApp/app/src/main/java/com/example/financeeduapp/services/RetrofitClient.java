package com.example.financeeduapp.services;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class RetrofitClient {
    private static final String BASE_URL = "https://mypersonalfinance.alwaysdata.net/";
    private static Retrofit retrofit = null;


    public static ApiService getApiService() {
        Gson lenientGson = new GsonBuilder()
                .setLenient()
                .create();
        if (retrofit == null) {
            retrofit = new Retrofit.Builder()
                    .baseUrl(BASE_URL)
                    .addConverterFactory(GsonConverterFactory.create(lenientGson))
                    .build();
        }
        return retrofit.create(ApiService.class);
    }


}
