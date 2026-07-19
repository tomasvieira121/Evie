package com.evie.sidescreen.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* JADX INFO: loaded from: classes.dex */
public class NetworkStatusModel {
    private Context mContext;

    public NetworkStatusModel(Context context) {
        this.mContext = context;
    }

    public boolean isOnWiFi() {
        NetworkInfo networkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getNetworkInfo(1);
        return networkInfo != null && networkInfo.isConnected();
    }
}
