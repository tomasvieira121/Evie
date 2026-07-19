package com.aol.mobile.sdk.player.http.model;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Sdk {
    public final List<Renderer> renderers;
    public final String version;

    public Sdk(String str, List<Renderer> list) {
        this.renderers = Collections.unmodifiableList(list);
        this.version = str;
    }

    public static class Renderer {

        /* JADX INFO: renamed from: id */
        public String f160id;
        public String version;

        public Renderer(String str, String str2) {
            this.f160id = str;
            this.version = str2;
        }
    }
}
