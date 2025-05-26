package com.example.financeeduapp.services;
import com.example.financeeduapp.responses.*;

import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;


public interface ApiService {
    @FormUrlEncoded
    @POST("api.php")
    Call<LoginResponse> login(
            @Field("action") String action,
            @Field("email") String email,
            @Field("password") String password
    );
}
