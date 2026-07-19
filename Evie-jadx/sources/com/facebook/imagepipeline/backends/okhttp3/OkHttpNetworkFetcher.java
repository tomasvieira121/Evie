package com.facebook.imagepipeline.backends.okhttp3;

import android.os.Looper;
import android.os.SystemClock;
import com.facebook.common.logging.FLog;
import com.facebook.imagepipeline.common.BytesRange;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.producers.BaseNetworkFetcher;
import com.facebook.imagepipeline.producers.BaseProducerContextCallbacks;
import com.facebook.imagepipeline.producers.Consumer;
import com.facebook.imagepipeline.producers.FetchState;
import com.facebook.imagepipeline.producers.NetworkFetcher;
import com.facebook.imagepipeline.producers.ProducerContext;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes.dex */
public class OkHttpNetworkFetcher extends BaseNetworkFetcher<OkHttpNetworkFetchState> {
    private final Call.Factory mCallFactory;
    private Executor mCancellationExecutor;

    @Override // com.facebook.imagepipeline.producers.NetworkFetcher
    public /* bridge */ /* synthetic */ FetchState createFetchState(Consumer consumer, ProducerContext producerContext) {
        return createFetchState((Consumer<EncodedImage>) consumer, producerContext);
    }

    public static class OkHttpNetworkFetchState extends FetchState {
        public long fetchCompleteTime;
        public long responseTime;
        public long submitTime;

        public OkHttpNetworkFetchState(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
            super(consumer, producerContext);
        }
    }

    public OkHttpNetworkFetcher(OkHttpClient okHttpClient) {
        this(okHttpClient, okHttpClient.dispatcher().executorService());
    }

    public OkHttpNetworkFetcher(Call.Factory factory, Executor executor) {
        this.mCallFactory = factory;
        this.mCancellationExecutor = executor;
    }

    @Override // com.facebook.imagepipeline.producers.NetworkFetcher
    public OkHttpNetworkFetchState createFetchState(Consumer<EncodedImage> consumer, ProducerContext producerContext) {
        return new OkHttpNetworkFetchState(consumer, producerContext);
    }

    @Override // com.facebook.imagepipeline.producers.NetworkFetcher
    public void fetch(OkHttpNetworkFetchState okHttpNetworkFetchState, NetworkFetcher.Callback callback) {
        okHttpNetworkFetchState.submitTime = SystemClock.elapsedRealtime();
        try {
            Request.Builder builder = new Request.Builder().cacheControl(new CacheControl.Builder().noStore().build()).url(okHttpNetworkFetchState.getUri().toString()).get();
            BytesRange bytesRange = okHttpNetworkFetchState.getContext().getImageRequest().getBytesRange();
            if (bytesRange != null) {
                builder.addHeader("Range", bytesRange.toHttpRangeHeaderValue());
            }
            fetchWithRequest(okHttpNetworkFetchState, callback, builder.build());
        } catch (Exception e) {
            callback.onFailure(e);
        }
    }

    @Override // com.facebook.imagepipeline.producers.BaseNetworkFetcher, com.facebook.imagepipeline.producers.NetworkFetcher
    public void onFetchCompletion(OkHttpNetworkFetchState okHttpNetworkFetchState, int i) {
        okHttpNetworkFetchState.fetchCompleteTime = SystemClock.elapsedRealtime();
    }

    @Override // com.facebook.imagepipeline.producers.BaseNetworkFetcher, com.facebook.imagepipeline.producers.NetworkFetcher
    public Map<String, String> getExtraMap(OkHttpNetworkFetchState okHttpNetworkFetchState, int i) {
        HashMap map = new HashMap(4);
        map.put("queue_time", Long.toString(okHttpNetworkFetchState.responseTime - okHttpNetworkFetchState.submitTime));
        map.put("fetch_time", Long.toString(okHttpNetworkFetchState.fetchCompleteTime - okHttpNetworkFetchState.responseTime));
        map.put("total_time", Long.toString(okHttpNetworkFetchState.fetchCompleteTime - okHttpNetworkFetchState.submitTime));
        map.put("image_size", Integer.toString(i));
        return map;
    }

    protected void fetchWithRequest(final OkHttpNetworkFetchState okHttpNetworkFetchState, final NetworkFetcher.Callback callback, Request request) {
        final Call callNewCall = this.mCallFactory.newCall(request);
        okHttpNetworkFetchState.getContext().addCallbacks(new BaseProducerContextCallbacks() { // from class: com.facebook.imagepipeline.backends.okhttp3.OkHttpNetworkFetcher.1
            @Override // com.facebook.imagepipeline.producers.BaseProducerContextCallbacks, com.facebook.imagepipeline.producers.ProducerContextCallbacks
            public void onCancellationRequested() {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    OkHttpNetworkFetcher.this.mCancellationExecutor.execute(new Runnable() { // from class: com.facebook.imagepipeline.backends.okhttp3.OkHttpNetworkFetcher.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            callNewCall.cancel();
                        }
                    });
                } else {
                    callNewCall.cancel();
                }
            }
        });
        callNewCall.enqueue(new Callback() { // from class: com.facebook.imagepipeline.backends.okhttp3.OkHttpNetworkFetcher.2
            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws IOException {
                okHttpNetworkFetchState.responseTime = SystemClock.elapsedRealtime();
                ResponseBody responseBodyBody = response.body();
                try {
                    try {
                        try {
                            if (response.isSuccessful()) {
                                BytesRange bytesRangeFromContentRangeHeader = BytesRange.fromContentRangeHeader(response.header("Content-Range"));
                                if (bytesRangeFromContentRangeHeader != null) {
                                    okHttpNetworkFetchState.setResponseBytesRange(bytesRangeFromContentRangeHeader);
                                    okHttpNetworkFetchState.setOnNewResultStatusFlags(8);
                                }
                                long jContentLength = responseBodyBody.contentLength();
                                if (jContentLength < 0) {
                                    jContentLength = 0;
                                }
                                callback.onResponse(responseBodyBody.byteStream(), (int) jContentLength);
                                responseBodyBody.close();
                                return;
                            }
                            OkHttpNetworkFetcher.this.handleException(call, new IOException("Unexpected HTTP code " + response), callback);
                            try {
                                responseBodyBody.close();
                            } catch (Exception e) {
                                FLog.m337w("OkHttpNetworkFetchProducer", "Exception when closing response body", e);
                            }
                        } catch (Exception e2) {
                            OkHttpNetworkFetcher.this.handleException(call, e2, callback);
                            responseBodyBody.close();
                        }
                    } catch (Throwable th) {
                        try {
                            responseBodyBody.close();
                        } catch (Exception e3) {
                            FLog.m337w("OkHttpNetworkFetchProducer", "Exception when closing response body", e3);
                        }
                        throw th;
                    }
                } catch (Exception e4) {
                    FLog.m337w("OkHttpNetworkFetchProducer", "Exception when closing response body", e4);
                }
            }

            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                OkHttpNetworkFetcher.this.handleException(call, iOException, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleException(Call call, Exception exc, NetworkFetcher.Callback callback) {
        if (call.isCanceled()) {
            callback.onCancellation();
        } else {
            callback.onFailure(exc);
        }
    }
}
