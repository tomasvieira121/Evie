package com.aol.mobile.sdk.player.advertisement.vrm;

import android.os.AsyncTask;
import android.os.Handler;
import android.text.TextUtils;
import com.aol.mobile.sdk.player.advertisement.AdServices;
import com.aol.mobile.sdk.player.advertisement.VastParser;
import com.aol.mobile.sdk.player.advertisement.utils.Task;
import com.aol.mobile.sdk.player.advertisement.utils.Timer;
import com.aol.mobile.sdk.player.http.network.DataFetcher;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class VrmAdServices extends AdServices<VrmAd, VrmSource> {
    private final HashSet<AsyncTask<String, Void, byte[]>> tasks = new HashSet<>();
    private final Timer timer;
    private final String url;
    private final String userAgent;

    public VrmAdServices(String str, String str2, long j, long j2, Handler handler) {
        this.timeout = j2;
        this.url = str;
        this.userAgent = str2;
        this.timer = new Timer(j, j2, handler);
        this.timer.setCallback(new Timer.Callback() { // from class: com.aol.mobile.sdk.player.advertisement.vrm.VrmAdServices.1
            @Override // com.aol.mobile.sdk.player.advertisement.utils.Timer.Callback
            public void onSoftTimeoutReached() {
                Iterator it = VrmAdServices.this.callbacks.iterator();
                while (it.hasNext()) {
                    ((AdServices.Callback) it.next()).onSoftTimeoutReached();
                }
            }

            @Override // com.aol.mobile.sdk.player.advertisement.utils.Timer.Callback
            public void onHardTimeoutReached() {
                Iterator it = VrmAdServices.this.callbacks.iterator();
                while (it.hasNext()) {
                    ((AdServices.Callback) it.next()).onHardTimeoutReached();
                }
            }
        });
    }

    @Override // com.aol.mobile.sdk.player.advertisement.AdServices
    public void prepareTasks() {
        this.tasks.add(DataFetcher.fetch(this.url, this.userAgent, new DataFetcher.Listener() { // from class: com.aol.mobile.sdk.player.advertisement.vrm.VrmAdServices.2
            @Override // com.aol.mobile.sdk.player.http.network.DataFetcher.Listener
            public void success(byte[] bArr) {
                VrmParser.parse(bArr, new VrmParser.Listener() { // from class: com.aol.mobile.sdk.player.advertisement.vrm.VrmAdServices.2.1
                    @Override // com.aol.mobile.sdk.player.advertisement.vrm.VrmParser.Listener
                    public void success(List<List<Task<VrmAd, VrmSource>>> list, String str, String str2) {
                        Iterator it = VrmAdServices.this.callbacks.iterator();
                        while (it.hasNext()) {
                            ((AdServices.Callback) it.next()).onTasksReady(list, str, str2);
                        }
                    }

                    @Override // com.aol.mobile.sdk.player.advertisement.vrm.VrmParser.Listener
                    public void error(Exception exc) {
                        Iterator it = VrmAdServices.this.callbacks.iterator();
                        while (it.hasNext()) {
                            ((AdServices.Callback) it.next()).onTasksReady(null, null, null);
                        }
                    }
                });
            }

            @Override // com.aol.mobile.sdk.player.http.network.DataFetcher.Listener
            public void error(Exception exc) {
                Iterator it = VrmAdServices.this.callbacks.iterator();
                while (it.hasNext()) {
                    ((AdServices.Callback) it.next()).onTasksReady(null, null, null);
                }
            }
        }));
    }

    @Override // com.aol.mobile.sdk.player.advertisement.AdServices
    public void launch(Task<VrmAd, VrmSource> task) {
        Iterator it = this.callbacks.iterator();
        while (it.hasNext()) {
            ((AdServices.Callback) it.next()).onTaskLaunched(task);
        }
        if (TextUtils.isEmpty(task.getSource().getXml())) {
            addFetchTask(task, task.getSource().getUrl());
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            onComplete(task, VastParser.parse(task.getSource().getXml()), System.currentTimeMillis() - jCurrentTimeMillis);
        } catch (Exception e) {
            onError(task, e, System.currentTimeMillis() - jCurrentTimeMillis);
        }
    }

    private void addFetchTask(final Task<VrmAd, VrmSource> task, String str) {
        this.tasks.add(VrmAdFetcher.getAdTask(str, this.userAgent, new VrmAdFetcher.Listener() { // from class: com.aol.mobile.sdk.player.advertisement.vrm.VrmAdServices.3
            @Override // com.aol.mobile.sdk.player.advertisement.vrm.VrmAdFetcher.Listener
            public void complete(VrmAd vrmAd, long j) {
                VrmAdServices.this.onComplete(task, vrmAd, j);
            }

            @Override // com.aol.mobile.sdk.player.advertisement.vrm.VrmAdFetcher.Listener
            public void error(Exception exc, long j) {
                VrmAdServices.this.onError(task, exc, j);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onError(Task<VrmAd, VrmSource> task, Exception exc, long j) {
        task.setAd(null);
        task.setError(exc);
        task.setTime(j);
        task.complete();
        Iterator it = this.callbacks.iterator();
        while (it.hasNext()) {
            ((AdServices.Callback) it.next()).onTaskFinished(task);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onComplete(Task<VrmAd, VrmSource> task, VrmAd vrmAd, long j) {
        task.incHops();
        VrmAd ad = task.getAd();
        if (ad == null) {
            task.setAd(vrmAd);
            if (vrmAd != null) {
                vrmAd.setVrmSource(task.getSource());
            }
        } else {
            task.setAd(ad.merge(vrmAd));
        }
        task.setTime(task.getTime() + j);
        if (vrmAd != null && vrmAd.vastAdTagURI != null && task.getHops() < 3) {
            addFetchTask(task, vrmAd.vastAdTagURI);
            return;
        }
        task.complete();
        Iterator it = this.callbacks.iterator();
        while (it.hasNext()) {
            ((AdServices.Callback) it.next()).onTaskFinished(task);
        }
    }

    @Override // com.aol.mobile.sdk.player.advertisement.AdServices
    public void startTimer() {
        this.timer.start();
    }

    @Override // com.aol.mobile.sdk.player.advertisement.AdServices
    public void cancel() {
        Iterator<AsyncTask<String, Void, byte[]>> it = this.tasks.iterator();
        while (it.hasNext()) {
            it.next().cancel(true);
        }
        this.tasks.clear();
        this.timer.reset();
    }
}
