package com.voxel.simplesearchlauncher.dagger.module.http;

import android.util.Pair;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializer;
import java.lang.reflect.Type;
import java.util.Set;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: loaded from: classes2.dex */
public class RetrofitModule {
    public Gson providesGson(Set<Pair<Class, JsonDeserializer>> set) {
        GsonBuilder fieldNamingPolicy = new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES);
        for (Pair<Class, JsonDeserializer> pair : set) {
            fieldNamingPolicy.registerTypeAdapter((Type) pair.first, pair.second);
        }
        return fieldNamingPolicy.create();
    }

    public Retrofit providesRetrofit(Gson gson, OkHttpClient okHttpClient, String str) {
        return new Retrofit.Builder().client(okHttpClient).addConverterFactory(GsonConverterFactory.create(gson)).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).baseUrl(str).build();
    }
}
