package com.voxel.simplesearchlauncher.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import okhttp3.OkHttpClient;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectionPoolKiller {
    private BroadcastReceiver mBroadcastReceiver;
    private final Context mContext;
    private final OkHttpClient mOkHttpClient;

    public ConnectionPoolKiller(Context context, OkHttpClient okHttpClient) {
        this.mContext = context;
        this.mOkHttpClient = okHttpClient;
    }

    public synchronized void registerReceiver() {
        if (this.mBroadcastReceiver != null) {
            this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.voxel.simplesearchlauncher.utils.ConnectionPoolKiller.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    Timber.m551d("Connectivity changed", new Object[0]);
                    ConnectionPoolKiller.this.clearConnectionPool();
                }
            };
        }
        this.mContext.registerReceiver(this.mBroadcastReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.voxel.simplesearchlauncher.utils.ConnectionPoolKiller$2] */
    public void clearConnectionPool() {
        new AsyncTask<Void, Void, Void>() { // from class: com.voxel.simplesearchlauncher.utils.ConnectionPoolKiller.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Void doInBackground(Void... voidArr) {
                Timber.m551d("clearConnectionPool", new Object[0]);
                ConnectionPoolKiller.this.mOkHttpClient.connectionPool().evictAll();
                return null;
            }
        }.execute(new Void[0]);
    }
}
