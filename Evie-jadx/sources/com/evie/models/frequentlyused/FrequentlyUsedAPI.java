package com.evie.models.frequentlyused;

import com.evie.models.frequentlyused.data.FrequentlyUsedResponse;
import io.reactivex.Observable;
import retrofit2.http.GET;
import retrofit2.http.Header;

/* JADX INFO: loaded from: classes.dex */
public interface FrequentlyUsedAPI {
    @GET("/predict")
    Observable<FrequentlyUsedResponse> predict(@Header("X-ID") String str);
}
