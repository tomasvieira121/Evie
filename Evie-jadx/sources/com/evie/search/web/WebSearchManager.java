package com.evie.search.web;

import com.evie.search.model.WebSearchItem;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.List;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;

/* JADX INFO: loaded from: classes.dex */
public class WebSearchManager {
    private WebSearchInterface webSearchService = (WebSearchInterface) new Retrofit.Builder().baseUrl("https://suggestqueries.google.com/").addCallAdapterFactory(RxJava2CallAdapterFactory.createWithScheduler(Schedulers.m548io())).build().create(WebSearchInterface.class);

    public Observable<List<WebSearchItem>> search(final String str) {
        return this.webSearchService.search("chrome", str).map(new Function() { // from class: com.evie.search.web.-$$Lambda$WebSearchManager$XMVh8qY7gqN3nz5t4EzZkgUU2i0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return WebSearchManager.lambda$search$0(str, (ResponseBody) obj);
            }
        });
    }

    static /* synthetic */ List lambda$search$0(String str, ResponseBody responseBody) throws Exception {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new WebSearchItem(true, str));
        JSONArray jSONArray = new JSONArray(responseBody.string()).getJSONArray(1);
        int iMin = Math.min(jSONArray.length(), 5);
        for (int i = 0; i < iMin; i++) {
            arrayList.add(new WebSearchItem(false, jSONArray.getString(i)));
        }
        return arrayList;
    }
}
