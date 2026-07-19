package com.aol.mobile.sdk.player.http.network;

import android.os.AsyncTask;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class DataFetcher {
    private static final int CONNECT_TIMEOUT = 15000;
    private static final int READ_TIMEOUT = 10000;

    public interface Listener {
        void error(Exception exc);

        void success(byte[] bArr);
    }

    public static AsyncTask<String, Void, byte[]> fetch(String str, String str2, Listener listener) {
        return new Task(listener, str2).execute(str);
    }

    public static class Task extends AsyncTask<String, Void, byte[]> {
        private ConnectionHandler connectionHandler;
        private Exception exception;
        private Listener mCallback;
        private String userAgent;

        public Task(Listener listener, String str) {
            this(listener, str, DataFetcher.CONNECT_TIMEOUT, 10000);
        }

        public Task(Listener listener, String str, int i, int i2) {
            this(listener, str, new ConnectionHandler(i, i2));
        }

        Task(Listener listener, String str, ConnectionHandler connectionHandler) {
            this.exception = null;
            this.mCallback = listener;
            this.connectionHandler = connectionHandler;
            this.userAgent = str;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public byte[] doInBackground(String... strArr) {
            try {
                return getData(strArr[0]);
            } catch (IOException e) {
                this.exception = e;
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(byte[] bArr) {
            Exception exc = this.exception;
            if (exc == null) {
                this.mCallback.success(bArr);
            } else {
                this.mCallback.error(exc);
            }
        }

        byte[] getData(String str) throws IOException {
            return this.connectionHandler.getResponseFrom(str, this.userAgent);
        }
    }
}
