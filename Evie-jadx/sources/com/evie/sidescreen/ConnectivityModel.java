package com.evie.sidescreen;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.subjects.PublishSubject;

/* JADX INFO: loaded from: classes.dex */
public class ConnectivityModel implements Disposable {
    private final ConnectivityManager mConnectivityManager;
    private final Context mContext;
    private BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.evie.sidescreen.ConnectivityModel.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean zIsConnected = ConnectivityModel.this.isConnected();
            if (ConnectivityModel.this.mWasConnected != zIsConnected) {
                ConnectivityModel.this.mWasConnected = zIsConnected;
                ConnectivityModel.this.mPublishSubject.onNext(Boolean.valueOf(zIsConnected));
            }
        }
    };
    private PublishSubject<Boolean> mPublishSubject = PublishSubject.create();
    private boolean mWasConnected = isConnected();

    public ConnectivityModel(Context context, ConnectivityManager connectivityManager) {
        this.mContext = context;
        this.mConnectivityManager = connectivityManager;
        this.mContext.registerReceiver(this.mReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public Observable<Boolean> getObservable() {
        return this.mPublishSubject;
    }

    public boolean isConnected() {
        NetworkInfo activeNetworkInfo = this.mConnectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        if (isDisposed()) {
            return;
        }
        this.mContext.unregisterReceiver(this.mReceiver);
        this.mReceiver = null;
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.mReceiver == null;
    }
}
