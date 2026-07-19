package com.aol.mobile.sdk.player.p002js.telemetry;

import com.aol.mobile.sdk.player.http.HttpServiceException;
import com.aol.mobile.sdk.player.p002js.telemetry.data.JsIssue;
import com.aol.mobile.sdk.player.telemetry.TelemetrySender;
import com.squareup.duktape.DuktapeException;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public final class JsTelemetryService {
    private final TelemetrySender telemetrySender;

    public JsTelemetryService(TelemetrySender telemetrySender) {
        this.telemetrySender = telemetrySender;
    }

    public void sendJsLoadIssue(HttpServiceException httpServiceException) {
        this.telemetrySender.sendJSIssue(new JsIssue(JsIssue.Type.SOURCE_LOADING, this.telemetrySender.context, Integer.toString(httpServiceException.responseCode), getStackTrace(httpServiceException)));
    }

    public void sendJsDebugIssue(String str) {
        this.telemetrySender.sendJSIssue(new JsIssue(JsIssue.Type.DEBUG_TEXT, this.telemetrySender.context, "Text from javascript", str));
    }

    public void sendJsExecutionIssue(DuktapeException duktapeException, String str) {
        String stackTrace = getStackTrace(duktapeException);
        this.telemetrySender.sendJSIssue(new JsIssue(JsIssue.Type.EXECUTION, this.telemetrySender.context, "Props processing: " + str, stackTrace));
    }

    public void sendPropsSerializationIssue(JSONException jSONException) {
        this.telemetrySender.sendJSIssue(new JsIssue(JsIssue.Type.PROPS_SERIALIZATION, this.telemetrySender.context, jSONException.getMessage(), getStackTrace(jSONException)));
    }

    public void sendJsInitIssue(DuktapeException duktapeException) {
        this.telemetrySender.sendJSIssue(new JsIssue(JsIssue.Type.INIT, this.telemetrySender.context, "Javascript init", getStackTrace(duktapeException)));
    }

    private String getStackTrace(Exception exc) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        exc.printStackTrace(printWriter);
        try {
            return stringWriter.toString();
        } finally {
            printWriter.close();
        }
    }
}
