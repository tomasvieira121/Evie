package com.evie.models.sidescreen;

import com.evie.models.sidescreen.data.ShortLink;
import com.evie.models.sidescreen.data.SideScreenContent;
import com.evie.models.sidescreen.data.SideScreenRelatedContent;
import io.reactivex.Observable;
import lombok.NonNull;
import retrofit2.Response;
import retrofit2.http.GET;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes.dex */
public interface SideScreenContentAPI {
    @GET("/android/sidescreen/articles/{article-id}")
    Observable<Response<SideScreenRelatedContent>> getRelatedContent(@Path("article-id") String str, @Query("full") boolean z, @Query("user_id") String str2, @Query("package_id") String str3, @Query("version_code") int i, @Query("api_version") int i2, @Query("model") String str4, @Query("experiment") String str5, @Query("group") String str6);

    @GET("/android/sidescreen/share")
    Observable<Response<ShortLink>> getShortLink(@Query("long_url") String str, @Query("user_id") String str2);

    @GET("/android/sidescreen/v2/content/{tab-path}")
    Observable<Response<SideScreenContent>> getTabContent(@Path("tab-path") String str, @Query("user_id") String str2, @Query("package_id") String str3, @Query("version_code") int i, @Query("api_version") int i2, @Query("model") String str4, @Query("experiment") String str5, @Query("group") String str6, @Query("lat") Double d, @Query("lon") Double d2);

    @PUT("/android/fcm/{user}/token")
    Observable<Response<Void>> registerToken(@NonNull @Path("user") String str, @Query("token") String str2);
}
