package com.example.financeeduapp.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import com.example.financeeduapp.R;
import com.example.financeeduapp.items.Post;
import com.example.financeeduapp.responses.PostListResponse;
import com.example.financeeduapp.services.ApiService;
import com.example.financeeduapp.services.RetrofitClient;

import java.util.List;

import retrofit2.Call;
import retrofit2.Response;

public class LessonDetailActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lesson_detail);

        String lessonTitle = getIntent().getStringExtra("lessonTitle");

        TextView tvTitle = findViewById(R.id.tvLessonTitle);
        TextView tvContent = findViewById(R.id.tvLessonContent);
        Button btnQuiz = findViewById(R.id.btnStartQuiz);

        tvTitle.setText(lessonTitle);
        // Placeholder until you load lesson content from DB
        tvContent.setText("Loading lesson");
        getLessonPosts(this, lessonTitle);
        btnQuiz.setOnClickListener(v -> {
            Intent intent = new Intent(this, QuizActivity.class);
            intent.putExtra("lessonTitle", lessonTitle);
            android.widget.Toast.makeText(this, "Starting Quiz for: "
                    + lessonTitle, android.widget.Toast.LENGTH_SHORT).show();
            startActivity(intent);
          });
    }

    private void getLessonPosts(Context contx, String lessontTitle){
        ApiService api = RetrofitClient.getApiService();
        api.getPostsByLesson("getPostsByLesson", lessontTitle)
            .enqueue(new retrofit2.Callback<PostListResponse>() {
                @Override
                public void onResponse(Call<PostListResponse> call,
                                       Response<PostListResponse> response) {
                    if (!response.isSuccessful()) {
                        Toast.makeText(contx,
                                "Error HTTP: " + response.code(),
                                Toast.LENGTH_SHORT).show();
                        return;
                    }
                    PostListResponse body = response.body();
                    if (body == null || body.isError()) {
                        String msg = (body != null) ? body.getMessage() : "Respuesta vacía";
                        Toast.makeText(contx, msg, Toast.LENGTH_SHORT).show();
                        return;
                    }

                    List<Post> posts = body.getData();

                    TextView tvContent = findViewById(R.id.tvLessonContent);
                    tvContent.setText("");
                    for (Post post: posts) {
                        tvContent.setText(tvContent.getText().toString().concat(post.getDescription()));
                    }

                }

                @Override
                public void onFailure(Call<PostListResponse> call, Throwable t) {
                    Toast.makeText(contx,
                            "Falló la petición: " + t.getMessage(),
                            Toast.LENGTH_SHORT).show();
                }
            });

    }
}
