package okhttp3;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface Interceptor {

    public interface Chain {
        int connectTimeoutMillis();

        Response proceed(Request request) throws IOException;

        int readTimeoutMillis();

        Request request();

        int writeTimeoutMillis();
    }

    Response intercept(Chain chain) throws IOException;
}
