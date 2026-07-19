package com.evie.search.remote;

import com.evie.search.model.RemoteSearchItem;
import io.reactivex.Observable;
import java.util.List;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes.dex */
interface RemoteSearchInterface {
    @GET("android/search")
    Observable<List<RemoteSearchItem>> search(@Query("q") String str, @Query("lat") Double d, @Query("lon") Double d2);
}
