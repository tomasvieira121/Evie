package com.evie.sidescreen.dagger;

import android.content.Context;
import com.evie.sidescreen.network.NetworkStatusModel;

/* JADX INFO: loaded from: classes.dex */
public class NetworkStatusModule {
    private final Context mContext;

    public NetworkStatusModule(Context context) {
        this.mContext = context;
    }

    public NetworkStatusModel providesNetworkStatusModel() {
        return new NetworkStatusModel(this.mContext);
    }
}
