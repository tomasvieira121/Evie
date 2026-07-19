package com.evie.search.remote;

import android.location.Location;
import com.evie.search.model.RemoteSearchItem;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import io.reactivex.Observable;
import io.reactivex.schedulers.Schedulers;
import java.util.List;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: loaded from: classes.dex */
public class RemoteSearchManager {
    private LocationHandler locationHandler = LocationHandler.getInstance();
    private RemoteSearchInterface searchService;

    public RemoteSearchManager(String str) {
        this.searchService = (RemoteSearchInterface) new Retrofit.Builder().baseUrl(str).addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.createWithScheduler(Schedulers.m548io())).build().create(RemoteSearchInterface.class);
    }

    public Observable<List<RemoteSearchItem>> search(String str) {
        Double dValueOf;
        Location currentLocation = this.locationHandler.getCurrentLocation();
        Double dValueOf2 = null;
        if (currentLocation != null) {
            dValueOf2 = Double.valueOf(currentLocation.getLatitude());
            dValueOf = Double.valueOf(currentLocation.getLongitude());
        } else {
            dValueOf = null;
        }
        return this.searchService.search(str, dValueOf2, dValueOf);
    }
}
