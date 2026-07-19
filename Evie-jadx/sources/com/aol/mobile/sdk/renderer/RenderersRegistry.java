package com.aol.mobile.sdk.renderer;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.aol.mobile.sdk.annotations.PublicApi;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
@PublicApi
public final class RenderersRegistry {
    public static final String FLAT_RENDERER = "com.onemobilesdk.videorenderer.flat@2.11";

    /* JADX INFO: renamed from: a */
    private final HashMap<String, VideoRenderer.Producer> f181a = new HashMap<>();

    public RenderersRegistry(Context context) {
        Bundle bundleM245a = m245a(context);
        for (String str : bundleM245a.keySet()) {
            Object obj = bundleM245a.get(str);
            String str2 = obj instanceof String ? (String) obj : null;
            if (str.startsWith("com.onemobilesdk.videorenderer") && str2 != null) {
                m247a(str, m246a(str2));
            }
        }
    }

    /* JADX INFO: renamed from: a */
    private static Bundle m245a(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo.metaData != null) {
                return applicationInfo.metaData;
            }
            throw new RuntimeException("No renderers metadata found in AndroidManifest");
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: renamed from: a */
    private VideoRenderer.Producer m246a(String str) {
        try {
            try {
                Object objNewInstance = Class.forName(str).newInstance();
                if (objNewInstance instanceof VideoRenderer.Producer) {
                    return (VideoRenderer.Producer) objNewInstance;
                }
                throw new RuntimeException(str + " is not instance of VideoRenderer.Producer");
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("Class from metadata not found", e2);
        }
    }

    /* JADX INFO: renamed from: a */
    private void m247a(String str, VideoRenderer.Producer producer) {
        if (str.length() == 0) {
            throw new IllegalArgumentException("Renderer id must be in format <name@version>");
        }
        if (str.split("@").length != 2) {
            throw new IllegalArgumentException("Renderer id must be in format <name@version>");
        }
        this.f181a.put(str, producer);
    }

    public VideoRenderer getRenderer(String str, Context context) {
        VideoRenderer.Producer producer = this.f181a.get(str);
        if (producer != null) {
            return producer.createRenderer(context);
        }
        throw new RuntimeException("No renderer record found for id:" + str);
    }

    public boolean hasRenderer(String str) {
        return this.f181a.containsKey(str);
    }

    public Collection<String> listRenderersId() {
        return Collections.unmodifiableSet(this.f181a.keySet());
    }
}
