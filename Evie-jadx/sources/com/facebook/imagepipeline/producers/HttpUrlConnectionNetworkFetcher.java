package com.facebook.imagepipeline.producers;

import android.net.Uri;
import com.facebook.imagepipeline.image.EncodedImage;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public class HttpUrlConnectionNetworkFetcher extends BaseNetworkFetcher<FetchState> {
    private final ExecutorService mExecutorService;

    private static boolean isHttpRedirect(int i) {
        switch (i) {
            case 300:
            case 301:
            case 302:
            case 303:
            case 307:
            case 308:
                return true;
            case 304:
            case 305:
            case 306:
            default:
                return false;
        }
    }

    private static boolean isHttpSuccess(int i) {
        return i >= 200 && i < 300;
    }

    public HttpUrlConnectionNetworkFetcher() {
        this(Executors.newFixedThreadPool(3));
    }

    HttpUrlConnectionNetworkFetcher(ExecutorService executorService) {
        this.mExecutorService = executorService;
    }

    @Override // com.facebook.imagepipeline.producers.NetworkFetcher
    public FetchState createFetchState(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        return new FetchState(consumer, producerContext);
    }

    @Override // com.facebook.imagepipeline.producers.NetworkFetcher
    public void fetch(final FetchState fetchState, final NetworkFetcher.Callback callback) {
        final Future<?> futureSubmit = this.mExecutorService.submit(new Runnable() { // from class: com.facebook.imagepipeline.producers.HttpUrlConnectionNetworkFetcher.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                HttpUrlConnectionNetworkFetcher.this.fetchSync(fetchState, callback);
            }
        });
        fetchState.getContext().addCallbacks(new BaseProducerContextCallbacks() { // from class: com.facebook.imagepipeline.producers.HttpUrlConnectionNetworkFetcher.2
            @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
            public void onCancellationRequested() {
                if (futureSubmit.cancel(false)) {
                    callback.onCancellation();
                }
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0040  */
    /* JADX WARN: Code duplicated, block: B:40:0x0039 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:? A[SYNTHETIC] */
    void fetchSync(FetchState fetchState, NetworkFetcher.Callback callback) throws Throwable {
        HttpURLConnection httpURLConnectionDownloadFrom;
        InputStream inputStream = null;
        try {
            httpURLConnectionDownloadFrom = downloadFrom(fetchState.getUri(), 5);
            if (httpURLConnectionDownloadFrom != null) {
                try {
                    try {
                        inputStream = httpURLConnectionDownloadFrom.getInputStream();
                        callback.onResponse(inputStream, -1);
                    } catch (IOException e) {
                        e = e;
                        callback.onFailure(e);
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        if (httpURLConnectionDownloadFrom == null) {
                            return;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    if (httpURLConnectionDownloadFrom != null) {
                        throw th;
                    }
                    httpURLConnectionDownloadFrom.disconnect();
                    throw th;
                }
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused3) {
                }
            }
            if (httpURLConnectionDownloadFrom == null) {
                return;
            }
        } catch (IOException e2) {
            e = e2;
            httpURLConnectionDownloadFrom = null;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnectionDownloadFrom = null;
            if (inputStream != null) {
                inputStream.close();
            }
            if (httpURLConnectionDownloadFrom != null) {
                throw th;
            }
            httpURLConnectionDownloadFrom.disconnect();
            throw th;
        }
        httpURLConnectionDownloadFrom.disconnect();
    }

    private HttpURLConnection downloadFrom(Uri uri, int i) throws IOException {
        HttpURLConnection httpURLConnectionOpenConnectionTo = openConnectionTo(uri);
        int responseCode = httpURLConnectionOpenConnectionTo.getResponseCode();
        if (isHttpSuccess(responseCode)) {
            return httpURLConnectionOpenConnectionTo;
        }
        if (isHttpRedirect(responseCode)) {
            String headerField = httpURLConnectionOpenConnectionTo.getHeaderField("Location");
            httpURLConnectionOpenConnectionTo.disconnect();
            Uri uri2 = headerField == null ? null : Uri.parse(headerField);
            String scheme = uri.getScheme();
            if (i > 0 && uri2 != null && !uri2.getScheme().equals(scheme)) {
                return downloadFrom(uri2, i - 1);
            }
            throw new IOException(i == 0 ? error("URL %s follows too many redirects", uri.toString()) : error("URL %s returned %d without a valid redirect", uri.toString(), Integer.valueOf(responseCode)));
        }
        httpURLConnectionOpenConnectionTo.disconnect();
        throw new IOException(String.format("Image URL %s returned HTTP code %d", uri.toString(), Integer.valueOf(responseCode)));
    }

    static HttpURLConnection openConnectionTo(Uri uri) throws IOException {
        return (HttpURLConnection) new URL(uri.toString()).openConnection();
    }

    private static String error(String str, Object... objArr) {
        return String.format(Locale.getDefault(), str, objArr);
    }
}
