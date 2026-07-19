package com.aol.mobile.sdk.player.p002js.processor;

import com.aol.mobile.sdk.player.p002js.telemetry.JsTelemetryService;
import com.squareup.duktape.Duktape;
import com.squareup.duktape.DuktapeException;

/* JADX INFO: loaded from: classes.dex */
public final class DuktapeProcessor {
    protected final Callback callback;
    private Duktape duktape;
    private final JsTelemetryService jsTelemetry;

    public interface Callback {
        void onUrlFired(String str);
    }

    private interface Native {
        void print(String str);

        void sendUrl(String str);
    }

    public DuktapeProcessor(JsTelemetryService jsTelemetryService, String str, String str2, Callback callback) {
        this.callback = callback;
        this.jsTelemetry = jsTelemetryService;
        try {
            this.duktape = Duktape.create();
            this.duktape.set("nativeBridge", Native.class, new Bridge());
            this.duktape.evaluate(str2);
            this.duktape.evaluate("var processor = onemobilesdk_analytics(" + str + ", {   sendURL : function(url) {       nativeBridge.sendUrl(url)   }, print : function(value) {        nativeBridge.print(value)   }})");
        } catch (DuktapeException e) {
            jsTelemetryService.sendJsInitIssue(e);
            dispose();
        }
    }

    public void processProps(String str) {
        Duktape duktape = this.duktape;
        if (duktape == null) {
            return;
        }
        try {
            duktape.evaluate("processor.props(" + str + ")");
        } catch (DuktapeException e) {
            this.jsTelemetry.sendJsExecutionIssue(e, str);
            dispose();
        }
    }

    public void dispose() {
        Duktape duktape = this.duktape;
        if (duktape != null) {
            duktape.close();
            this.duktape = null;
        }
    }

    private final class Bridge implements Native {
        private Bridge() {
        }

        @Override // com.aol.mobile.sdk.player.js.processor.DuktapeProcessor.Native
        public void sendUrl(String str) {
            DuktapeProcessor.this.callback.onUrlFired(str);
        }

        @Override // com.aol.mobile.sdk.player.js.processor.DuktapeProcessor.Native
        public void print(String str) {
            DuktapeProcessor.this.jsTelemetry.sendJsDebugIssue(str);
        }
    }
}
