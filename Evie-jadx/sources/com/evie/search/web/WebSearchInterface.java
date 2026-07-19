package com.evie.search.web;

import io.reactivex.Observable;
import okhttp3.ResponseBody;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes.dex */
interface WebSearchInterface {
    @GET("complete/search")
    Observable<ResponseBody> search(@Query("client") String str, @Query("q") String str2);
}
