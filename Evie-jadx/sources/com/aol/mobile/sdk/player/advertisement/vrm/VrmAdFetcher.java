package com.aol.mobile.sdk.player.advertisement.vrm;

import android.os.AsyncTask;
import com.aol.mobile.sdk.player.advertisement.VastParser;
import com.aol.mobile.sdk.player.http.network.DataFetcher;
import com.aol.mobile.sdk.player.model.EmptyDataException;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class VrmAdFetcher {
    public static final int TIMEOUT = 500;
    private static Executor executor = new ThreadPoolExecutor(10, 20, 1, TimeUnit.SECONDS, new LinkedBlockingQueue());

    public interface Listener {
        void complete(VrmAd vrmAd, long j);

        void error(Exception exc, long j);
    }

    public static AsyncTask<String, Void, byte[]> getAdTask(String str, String str2, final Listener listener) {
        DataFetcher.Task task = new DataFetcher.Task(new DataFetcher.Listener() { // from class: com.aol.mobile.sdk.player.advertisement.vrm.VrmAdFetcher.1
            long time = System.currentTimeMillis();

            @Override // com.aol.mobile.sdk.player.http.network.DataFetcher.Listener
            public void success(byte[] bArr) {
                try {
                    VrmAd vrmAd = VastParser.parse(new String(bArr));
                    if (vrmAd == null) {
                        throw new EmptyDataException();
                    }
                    listener.complete(vrmAd, System.currentTimeMillis() - this.time);
                } catch (EmptyDataException | IOException | XmlPullParserException e) {
                    listener.error(e, System.currentTimeMillis() - this.time);
                }
            }

            @Override // com.aol.mobile.sdk.player.http.network.DataFetcher.Listener
            public void error(Exception exc) {
                listener.error(exc, System.currentTimeMillis() - this.time);
            }
        }, str2, TIMEOUT, TIMEOUT);
        task.executeOnExecutor(executor, str);
        return task;
    }
}
