package com.evie.sidescreen.dagger;

import android.content.Context;
import android.net.ConnectivityManager;
import com.evie.sidescreen.ConnectivityModel;
import io.reactivex.disposables.CompositeDisposable;

/* JADX INFO: loaded from: classes.dex */
public class ConnectivityModule {
    public ConnectivityManager providesConnectivityManager(Context context) {
        return (ConnectivityManager) context.getSystemService("connectivity");
    }

    public ConnectivityModel providesConnectivityModel(Context context, ConnectivityManager connectivityManager, CompositeDisposable compositeDisposable) {
        ConnectivityModel connectivityModel = new ConnectivityModel(context, connectivityManager);
        compositeDisposable.add(connectivityModel);
        return connectivityModel;
    }
}
