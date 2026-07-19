package com.voxel.simplesearchlauncher.api.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.Log;
import com.aol.mobile.sdk.player.advertisement.vrm.VrmAdFetcher;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPOutputStream;
import okhttp3.ConnectionPool;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class HttpRequestUtil {
    private static final String TAG = "HttpRequestUtil";
    private static OkHttpClient sHttpClient;

    public static int sendPostRequest(String str, String str2, StringBuilder sb, boolean z) {
        RequestBody requestBodyCreate;
        if (sb == null) {
            throw new IllegalArgumentException("response argument must be instantiated");
        }
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("Request body must be provided.");
        }
        MediaType mediaType = MediaType.parse("application/octet-stream");
        if (z) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                gZIPOutputStream.write(str2.getBytes());
                gZIPOutputStream.close();
                requestBodyCreate = RequestBody.create(mediaType, byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                Log.w(TAG, "Could not compress post body", e);
                return 400;
            }
        } else {
            requestBodyCreate = RequestBody.create(mediaType, str2);
        }
        Request.Builder builderPost = new Request.Builder().url(str).post(requestBodyCreate);
        if (z) {
            builderPost.addHeader("Content-Encoding", "gzip");
        }
        try {
            Response responseExecute = getHttpClient().newCall(builderPost.build()).execute();
            if (responseExecute.isSuccessful()) {
                sb.append(responseExecute.body().string());
            }
            return responseExecute.code();
        } catch (IOException e2) {
            Log.w(TAG, "Could not POST to " + str, e2);
            return VrmAdFetcher.TIMEOUT;
        }
    }

    public static boolean isConnected(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) ? false : true;
    }

    private static OkHttpClient getHttpClient() {
        if (sHttpClient == null) {
            sHttpClient = new OkHttpClient.Builder().connectTimeout(20000L, TimeUnit.MILLISECONDS).readTimeout(20000L, TimeUnit.MILLISECONDS).connectionPool(new ConnectionPool(5, 60L, TimeUnit.SECONDS)).build();
        }
        return sHttpClient;
    }
}
