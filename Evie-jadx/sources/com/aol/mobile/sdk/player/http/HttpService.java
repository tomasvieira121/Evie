package com.aol.mobile.sdk.player.http;

import android.os.Handler;
import android.os.Looper;
import com.aol.mobile.sdk.player.utils.IOUtils;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public final class HttpService {
    private static final int CONNECT_TIMEOUT = 30000;
    private static final int READ_TIMEOUT = 30000;
    private final Handler uiHandler;
    public final String userAgent;

    public HttpService(Handler handler) {
        this(handler, null);
    }

    public HttpService(Handler handler, String str) {
        if (Looper.getMainLooper() != handler.getLooper()) {
            throw new IllegalArgumentException("Handler must connected to main thread");
        }
        this.uiHandler = handler;
        this.userAgent = str;
    }

    private String makeRequest(String str, String str2, Method method) throws HttpServiceException {
        HttpURLConnection httpURLConnectionCreateConnection = createConnection(str, method);
        if (str2 != null) {
            sendData(getBytesFrom(str2), httpURLConnectionCreateConnection);
        }
        return receiveResponse(httpURLConnectionCreateConnection);
    }

    private byte[] getBytesFrom(String str) throws HttpServiceException {
        try {
            return str.getBytes("utf-8");
        } catch (UnsupportedEncodingException e) {
            throw new HttpServiceException(0, e);
        }
    }

    private String receiveResponse(HttpURLConnection httpURLConnection) throws HttpServiceException {
        try {
            int responseCode = httpURLConnection.getResponseCode();
            InputStream inputStream = null;
            if (responseCode == 200) {
                try {
                    try {
                        inputStream = httpURLConnection.getInputStream();
                        String asString = IOUtils.readAsString(inputStream);
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        return asString;
                    } catch (IOException e) {
                        throw new HttpServiceException(responseCode, e);
                    }
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            }
            throw new HttpServiceException(responseCode, null);
        } catch (IOException e2) {
            throw new HttpServiceException(0, e2);
        }
    }

    private HttpURLConnection createConnection(String str, Method method) throws HttpServiceException {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod(method.value);
            String str2 = this.userAgent;
            if (str2 != null) {
                httpURLConnection.setRequestProperty(AbstractSpiCall.HEADER_USER_AGENT, str2);
            }
            httpURLConnection.setReadTimeout(30000);
            httpURLConnection.setConnectTimeout(30000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            if (C02918.$SwitchMap$com$aol$mobile$sdk$player$http$HttpService$Method[method.ordinal()] == 1) {
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setRequestProperty("charset", "utf-8");
                httpURLConnection.setRequestProperty("Content-Type", AbstractSpiCall.ACCEPT_JSON_VALUE);
            }
            return httpURLConnection;
        } catch (IOException e) {
            throw new HttpServiceException(0, e);
        }
    }

    /* JADX INFO: renamed from: com.aol.mobile.sdk.player.http.HttpService$8 */
    static /* synthetic */ class C02918 {
        static final /* synthetic */ int[] $SwitchMap$com$aol$mobile$sdk$player$http$HttpService$Method = new int[Method.values().length];

        static {
            try {
                $SwitchMap$com$aol$mobile$sdk$player$http$HttpService$Method[Method.POST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0018 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void sendData(byte[] r3, java.net.HttpURLConnection r4) throws com.aol.mobile.sdk.player.http.HttpServiceException {
        /*
            r2 = this;
            java.lang.String r0 = "Content-Length"
            int r1 = r3.length
            java.lang.String r1 = java.lang.Integer.toString(r1)
            r4.setRequestProperty(r0, r1)
            r0 = 0
            java.io.OutputStream r0 = r4.getOutputStream()     // Catch: java.lang.Throwable -> L18 java.io.IOException -> L1a
            com.aol.mobile.sdk.player.utils.IOUtils.writeData(r3, r0)     // Catch: java.lang.Throwable -> L18 java.io.IOException -> L1a
            if (r0 == 0) goto L17
            r0.close()     // Catch: java.io.IOException -> L17
        L17:
            return
        L18:
            r3 = move-exception
            goto L22
        L1a:
            r3 = move-exception
            com.aol.mobile.sdk.player.http.HttpServiceException r4 = new com.aol.mobile.sdk.player.http.HttpServiceException     // Catch: java.lang.Throwable -> L18
            r1 = 0
            r4.<init>(r1, r3)     // Catch: java.lang.Throwable -> L18
            throw r4     // Catch: java.lang.Throwable -> L18
        L22:
            if (r0 == 0) goto L27
            r0.close()     // Catch: java.io.IOException -> L27
        L27:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aol.mobile.sdk.player.http.HttpService.sendData(byte[], java.net.HttpURLConnection):void");
    }

    public <T, V> void makePost(final String str, final T t, final DataSerializer<T> dataSerializer, final ResponseParser<V> responseParser, final ResponseHandler<V> responseHandler) {
        new Thread(new Runnable() { // from class: com.aol.mobile.sdk.player.http.HttpService.1
            @Override // java.lang.Runnable
            public void run() {
                HttpService.this.asyncProcessRequest(str, t, dataSerializer, responseParser, responseHandler);
            }
        }).start();
    }

    public <V> void makeGet(final String str, final ResponseParser<V> responseParser, final ResponseHandler<V> responseHandler) {
        new Thread(new Runnable() { // from class: com.aol.mobile.sdk.player.http.HttpService.2
            @Override // java.lang.Runnable
            public void run() {
                HttpService.this.asyncProcessRequest(str, responseParser, responseHandler);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T, V> void asyncProcessRequest(String str, T t, DataSerializer<T> dataSerializer, ResponseParser<V> responseParser, final ResponseHandler<V> responseHandler) {
        try {
            try {
                processResponse(responseParser, responseHandler, makeRequest(str, dataSerializer.toJson(t), Method.POST));
            } catch (HttpServiceException e) {
                this.uiHandler.post(new Runnable() { // from class: com.aol.mobile.sdk.player.http.HttpService.4
                    @Override // java.lang.Runnable
                    public void run() {
                        responseHandler.onFailure(e);
                    }
                });
            }
        } catch (Exception e2) {
            this.uiHandler.post(new Runnable() { // from class: com.aol.mobile.sdk.player.http.HttpService.3
                @Override // java.lang.Runnable
                public void run() {
                    responseHandler.onFailure(new HttpServiceException(200, e2));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <V> void asyncProcessRequest(String str, ResponseParser<V> responseParser, final ResponseHandler<V> responseHandler) {
        try {
            processResponse(responseParser, responseHandler, makeRequest(str, null, Method.GET));
        } catch (HttpServiceException e) {
            this.uiHandler.post(new Runnable() { // from class: com.aol.mobile.sdk.player.http.HttpService.5
                @Override // java.lang.Runnable
                public void run() {
                    responseHandler.onFailure(e);
                }
            });
        }
    }

    private <V> void processResponse(ResponseParser<V> responseParser, final ResponseHandler<V> responseHandler, final String str) {
        try {
            final V v = responseParser.parse(str);
            this.uiHandler.post(new Runnable() { // from class: com.aol.mobile.sdk.player.http.HttpService.7
                @Override // java.lang.Runnable
                public void run() {
                    responseHandler.onSuccess(v);
                }
            });
        } catch (Exception e) {
            this.uiHandler.post(new Runnable() { // from class: com.aol.mobile.sdk.player.http.HttpService.6
                @Override // java.lang.Runnable
                public void run() {
                    responseHandler.onFailure(new HttpServiceException(200, e, str));
                }
            });
        }
    }

    private enum Method {
        GET("GET"),
        POST("POST");

        public final String value;

        Method(String str) {
            this.value = str;
        }
    }
}
