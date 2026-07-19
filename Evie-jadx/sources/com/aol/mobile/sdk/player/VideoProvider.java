package com.aol.mobile.sdk.player;

import com.aol.mobile.sdk.player.http.HttpService;
import com.aol.mobile.sdk.player.http.HttpServiceException;
import com.aol.mobile.sdk.player.http.ResponseHandler;
import com.aol.mobile.sdk.player.http.json.VideoProviderRequestSerializer;
import com.aol.mobile.sdk.player.http.json.VideoProviderResponseParser;
import com.aol.mobile.sdk.player.http.model.VideoProviderRequest;
import com.aol.mobile.sdk.player.telemetry.TelemetrySender;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class VideoProvider {
    private final HttpService httpService;
    private final String msContext;
    private final String serverUrl;
    private final TelemetrySender telemetrySender;

    public interface Callback {
        void error(Exception exc);

        void success(VideoProviderResponse videoProviderResponse);
    }

    VideoProvider(HttpService httpService, String str, String str2, TelemetrySender telemetrySender) {
        this.httpService = httpService;
        this.serverUrl = str;
        this.msContext = str2;
        this.telemetrySender = telemetrySender;
    }

    public void requestVideoModel(String str, JSONObject jSONObject, boolean z, String str2, Callback callback) {
        final Context context = new Context(this.serverUrl, callback, null);
        this.httpService.makePost(this.serverUrl, new VideoProviderRequest(this.msContext, jSONObject, z, str2, new String[]{str}, null), new VideoProviderRequestSerializer(), new VideoProviderResponseParser(), new ResponseHandler<VideoProviderResponse>() { // from class: com.aol.mobile.sdk.player.VideoProvider.1
            @Override // com.aol.mobile.sdk.player.http.ResponseHandler
            public void onSuccess(VideoProviderResponse videoProviderResponse) {
                context.callback.success(videoProviderResponse);
            }

            @Override // com.aol.mobile.sdk.player.http.ResponseHandler
            public void onFailure(HttpServiceException httpServiceException) {
                if (httpServiceException.cause instanceof JSONException) {
                    VideoProvider.this.telemetrySender.sendVideoServiceJsonParsingErrorData(httpServiceException.responseJson, httpServiceException.cause.getMessage());
                }
                context.callback.error(httpServiceException);
            }
        });
    }

    public void requestPlaylistModel(String str, JSONObject jSONObject, boolean z, String str2, Callback callback) {
        final Context context = new Context(this.serverUrl, callback, str);
        this.httpService.makePost(this.serverUrl, new VideoProviderRequest(this.msContext, jSONObject, z, str2, null, str), new VideoProviderRequestSerializer(), new VideoProviderResponseParser(), new ResponseHandler<VideoProviderResponse>() { // from class: com.aol.mobile.sdk.player.VideoProvider.2
            @Override // com.aol.mobile.sdk.player.http.ResponseHandler
            public void onSuccess(VideoProviderResponse videoProviderResponse) {
                context.callback.success(videoProviderResponse);
            }

            @Override // com.aol.mobile.sdk.player.http.ResponseHandler
            public void onFailure(HttpServiceException httpServiceException) {
                if (httpServiceException.cause instanceof JSONException) {
                    VideoProvider.this.telemetrySender.sendVideoServiceJsonParsingErrorData(httpServiceException.responseJson, httpServiceException.cause.getMessage());
                }
                context.callback.error(httpServiceException);
            }
        });
    }

    public void requestPlaylistModel(String[] strArr, JSONObject jSONObject, boolean z, String str, Callback callback) {
        final Context context = new Context(this.serverUrl, callback, null);
        this.httpService.makePost(this.serverUrl, new VideoProviderRequest(this.msContext, jSONObject, z, str, strArr, null), new VideoProviderRequestSerializer(), new VideoProviderResponseParser(), new ResponseHandler<VideoProviderResponse>() { // from class: com.aol.mobile.sdk.player.VideoProvider.3
            @Override // com.aol.mobile.sdk.player.http.ResponseHandler
            public void onSuccess(VideoProviderResponse videoProviderResponse) {
                context.callback.success(videoProviderResponse);
            }

            @Override // com.aol.mobile.sdk.player.http.ResponseHandler
            public void onFailure(HttpServiceException httpServiceException) {
                if (httpServiceException.cause instanceof JSONException) {
                    VideoProvider.this.telemetrySender.sendVideoServiceJsonParsingErrorData(httpServiceException.responseJson, httpServiceException.cause.getMessage());
                }
                context.callback.error(httpServiceException);
            }
        });
    }

    public void requestPlaylistModel(String[] strArr, boolean z, String str, Callback callback) {
        requestPlaylistModel(strArr, (JSONObject) null, z, str, callback);
    }

    public void requestPlaylistModel(String str, boolean z, String str2, Callback callback) {
        requestPlaylistModel(str, (JSONObject) null, z, str2, callback);
    }

    public void requestVideoModel(String str, boolean z, String str2, Callback callback) {
        requestVideoModel(str, null, z, str2, callback);
    }

    public void requestPlaylistModel(String[] strArr, Callback callback) {
        requestPlaylistModel(strArr, true, (String) null, callback);
    }

    private static class Context {
        final Callback callback;
        final String playlistId;
        final String serverUrl;

        public Context(String str, Callback callback, String str2) {
            this.callback = callback;
            this.serverUrl = str;
            this.playlistId = str2;
        }
    }
}
