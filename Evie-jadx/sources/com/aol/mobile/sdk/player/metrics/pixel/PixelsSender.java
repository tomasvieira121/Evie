package com.aol.mobile.sdk.player.metrics.pixel;

import android.text.TextUtils;
import com.aol.mobile.sdk.player.http.EmptyResponseHandler;
import com.aol.mobile.sdk.player.http.EmptyResponseParser;
import com.aol.mobile.sdk.player.http.HttpService;
import com.aol.mobile.sdk.player.http.ResponseHandler;
import com.aol.mobile.sdk.player.http.ResponseParser;

/* JADX INFO: loaded from: classes.dex */
public class PixelsSender implements TrackingPixelsSender {
    private final HttpService httpService;
    private final ResponseParser parser = new EmptyResponseParser();
    private final ResponseHandler responseHandler = new EmptyResponseHandler();

    public PixelsSender(HttpService httpService) {
        this.httpService = httpService;
    }

    @Override // com.aol.mobile.sdk.player.metrics.pixel.TrackingPixelsSender
    public void sendPixelDirect(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.httpService.makeGet(str, this.parser, this.responseHandler);
    }

    @Override // com.aol.mobile.sdk.player.metrics.pixel.TrackingPixelsSender
    public void sendPixel(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        this.httpService.makeGet(str + "/" + str2, this.parser, this.responseHandler);
    }
}
