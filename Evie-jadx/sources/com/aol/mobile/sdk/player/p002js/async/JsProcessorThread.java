package com.aol.mobile.sdk.player.p002js.async;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.aol.mobile.sdk.player.metrics.pixel.TrackingPixelsSender;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.p002js.PropertiesSerializer;
import com.aol.mobile.sdk.player.p002js.processor.DuktapeProcessor;
import com.aol.mobile.sdk.player.p002js.telemetry.JsTelemetryService;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class JsProcessorThread {
    private static final int MSG_LOAD_JS = 1;
    private static final int MSG_PROCESS_PROPS = 2;
    private static final int MSG_PROPS_SERIALIZE_ERROR = 1;
    private static final int MSG_QUIT = 0;
    private static final int MSG_URL_FIRED = 0;
    private DuktapeProcessor jstProcessor;
    private final Handler jswHandler;

    public JsProcessorThread(final JsTelemetryService jsTelemetryService, final TrackingPixelsSender trackingPixelsSender) {
        final HandlerThread handlerThread = new HandlerThread("JS working thread");
        final Handler handler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.aol.mobile.sdk.player.js.async.JsProcessorThread.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                switch (message.what) {
                    case 0:
                        trackingPixelsSender.sendPixelDirect(message.obj.toString());
                        return true;
                    case 1:
                        jsTelemetryService.sendPropsSerializationIssue((JSONException) message.obj);
                        return true;
                    default:
                        return false;
                }
            }
        });
        handlerThread.start();
        this.jswHandler = new Handler(handlerThread.getLooper(), new Handler.Callback() { // from class: com.aol.mobile.sdk.player.js.async.JsProcessorThread.2
            private final ArrayList<String> propsLog = new ArrayList<>();

            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                Class<?> cls = message.obj == null ? null : message.obj.getClass();
                switch (message.what) {
                    case 0:
                        if (JsProcessorThread.this.jstProcessor != null) {
                            JsProcessorThread.this.jstProcessor.dispose();
                            JsProcessorThread.this.jstProcessor = null;
                        }
                        handlerThread.quit();
                        return true;
                    case 1:
                        if (cls != JsLoadParams.class) {
                            return false;
                        }
                        JsLoadParams jsLoadParams = (JsLoadParams) message.obj;
                        if (JsProcessorThread.this.jstProcessor != null) {
                            JsProcessorThread.this.jstProcessor.dispose();
                        }
                        JsProcessorThread.this.jstProcessor = new DuktapeProcessor(jsTelemetryService, jsLoadParams.context, jsLoadParams.f161js, new DuktapeProcessor.Callback() { // from class: com.aol.mobile.sdk.player.js.async.JsProcessorThread.2.1
                            @Override // com.aol.mobile.sdk.player.js.processor.DuktapeProcessor.Callback
                            public void onUrlFired(String str) {
                                handler.sendMessage(handler.obtainMessage(0, str));
                            }
                        });
                        return true;
                    case 2:
                        if (cls != Properties.class) {
                            return false;
                        }
                        try {
                            String json = PropertiesSerializer.toJson((Properties) message.obj);
                            if (JsProcessorThread.this.jstProcessor == null) {
                                this.propsLog.add(json);
                            } else if (this.propsLog.isEmpty()) {
                                JsProcessorThread.this.jstProcessor.processProps(json);
                            } else {
                                Iterator<String> it = this.propsLog.iterator();
                                while (it.hasNext()) {
                                    JsProcessorThread.this.jstProcessor.processProps(it.next());
                                }
                                this.propsLog.clear();
                                JsProcessorThread.this.jstProcessor.processProps(json);
                            }
                            return true;
                        } catch (JSONException e) {
                            Handler handler2 = handler;
                            handler2.sendMessage(handler2.obtainMessage(1, e));
                            return true;
                        }
                    default:
                        return false;
                }
            }
        });
    }

    public void process(Properties properties) {
        Handler handler = this.jswHandler;
        handler.sendMessage(handler.obtainMessage(2, properties));
    }

    public void loadJs(String str, String str2) {
        Handler handler = this.jswHandler;
        handler.sendMessage(handler.obtainMessage(1, new JsLoadParams(str, str2)));
    }

    public void quit() {
        this.jswHandler.sendEmptyMessage(0);
    }

    private static final class JsLoadParams {
        private final String context;

        /* JADX INFO: renamed from: js */
        final String f161js;

        private JsLoadParams(String str, String str2) {
            this.context = str;
            this.f161js = str2;
        }
    }
}
