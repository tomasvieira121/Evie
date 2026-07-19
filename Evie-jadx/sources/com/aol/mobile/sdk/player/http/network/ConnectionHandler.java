package com.aol.mobile.sdk.player.http.network;

import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
class ConnectionHandler {
    private int connectTimeout;
    private int readTimeout;

    public ConnectionHandler(int i, int i2) {
        this.connectTimeout = i;
        this.readTimeout = i2;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public byte[] getResponseFrom(String str, String str2) throws IOException {
        InputStream inputStream = null;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty(AbstractSpiCall.HEADER_USER_AGENT, str2);
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() != 200) {
                throw new IOException(httpURLConnection.getResponseCode() + ": " + httpURLConnection.getResponseMessage());
            }
            InputStream inputStream2 = httpURLConnection.getInputStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[16384];
            while (true) {
                int i = inputStream2.read(bArr, 0, bArr.length);
                if (i == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
            byteArrayOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (inputStream2 != null) {
                inputStream2.close();
            }
            return byteArray;
        } catch (Throwable th) {
            if (0 != 0) {
                inputStream.close();
            }
            throw th;
        }
    }
}
