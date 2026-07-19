package com.aol.mobile.sdk.player.telemetry;

import com.aol.mobile.sdk.player.http.DataSerializer;
import com.aol.mobile.sdk.player.http.EmptyResponseHandler;
import com.aol.mobile.sdk.player.http.EmptyResponseParser;
import com.aol.mobile.sdk.player.http.HttpService;
import com.aol.mobile.sdk.player.model.ErrorState;
import com.aol.mobile.sdk.player.p002js.telemetry.JsIssueSerializer;
import com.aol.mobile.sdk.player.p002js.telemetry.data.JsIssue;
import com.aol.mobile.sdk.player.telemetry.data.ExternalPlaybackTriggeredData;
import com.aol.mobile.sdk.player.telemetry.data.PlaybackErrorData;
import com.aol.mobile.sdk.player.telemetry.data.SubtitlesEnabledData;
import com.aol.mobile.sdk.player.telemetry.data.VideoServiceJsonParsingErrorData;
import com.aol.mobile.sdk.player.telemetry.data.VrmStatisticsData;
import com.aol.mobile.sdk.player.telemetry.serializer.ExternalPlaybackTriggeredSerializer;
import com.aol.mobile.sdk.player.telemetry.serializer.PlaybackErrorSerializer;
import com.aol.mobile.sdk.player.telemetry.serializer.SubtitlesEnabledSerializer;
import com.aol.mobile.sdk.player.telemetry.serializer.VideoServiceJsonParsingErrorSerializer;
import com.aol.mobile.sdk.player.telemetry.serializer.VrmStatisticsSerializer;

/* JADX INFO: loaded from: classes.dex */
public final class TelemetrySender {
    public final String context;
    private final HttpService httpService;
    private final String url;
    private final EmptyResponseParser parser = new EmptyResponseParser();
    private final EmptyResponseHandler handler = new EmptyResponseHandler();

    public TelemetrySender(HttpService httpService, String str, String str2) {
        this.httpService = httpService;
        this.context = str;
        this.url = str2;
    }

    private <T> void sendData(T t, DataSerializer<T> dataSerializer) {
        this.httpService.makePost(this.url, t, dataSerializer, this.parser, this.handler);
    }

    public void sendJSIssue(JsIssue jsIssue) {
        sendData(jsIssue, new JsIssueSerializer());
    }

    public void sendExternalPlaybackTriggeredData() {
        sendData(new ExternalPlaybackTriggeredData(this.context), new ExternalPlaybackTriggeredSerializer());
    }

    public void sendPlaybackErrorData(ErrorState errorState, String str) {
        sendData(new PlaybackErrorData(this.context, errorState, str), new PlaybackErrorSerializer());
    }

    public void sendSubtitlesEnabledData(boolean z) {
        sendData(new SubtitlesEnabledData(this.context, z), new SubtitlesEnabledSerializer());
    }

    public void sendVideoServiceJsonParsingErrorData(String str, String str2) {
        sendData(new VideoServiceJsonParsingErrorData(this.context, str, str2), new VideoServiceJsonParsingErrorSerializer());
    }

    public void sendVrmStatisticsData(long j, long j2) {
        sendData(new VrmStatisticsData(this.context, j, j2), new VrmStatisticsSerializer());
    }
}
