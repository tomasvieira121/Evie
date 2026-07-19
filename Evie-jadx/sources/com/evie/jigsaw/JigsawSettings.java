package com.evie.jigsaw;

import android.app.Application;
import com.evie.common.services.analytics.AnalyticsService;
import com.evie.jigsaw.services.actions.ActionPreferenceStore;
import com.evie.jigsaw.services.images.ImageResolver;
import com.evie.jigsaw.services.layout.LayoutService;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class JigsawSettings {
    private final ActionPreferenceStore actionPreferenceStore;
    private final boolean ads;
    private final AnalyticsService analyticsService;
    private final boolean apiDebug;
    private final String apiUrl;
    private final Application application;
    private final int errorImage;
    private final ImageResolver imageResolver;
    private final List<LayoutService> layoutServices;
    private final boolean news;
    private final String pack4ge;
    private final boolean shortcuts;
    private final boolean streamingEnabled;
    private final int version;

    public static class JigsawSettingsBuilder {
        private ActionPreferenceStore actionPreferenceStore;
        private boolean ads;
        private AnalyticsService analyticsService;
        private boolean apiDebug;
        private String apiUrl;
        private Application application;
        private int errorImage;
        private ImageResolver imageResolver;
        private List<LayoutService> layoutServices;
        private boolean news;
        private String pack4ge;
        private boolean shortcuts;
        private boolean streamingEnabled;
        private int version;

        JigsawSettingsBuilder() {
        }

        public JigsawSettingsBuilder actionPreferenceStore(ActionPreferenceStore actionPreferenceStore) {
            this.actionPreferenceStore = actionPreferenceStore;
            return this;
        }

        public JigsawSettingsBuilder ads(boolean z) {
            this.ads = z;
            return this;
        }

        public JigsawSettingsBuilder analyticsService(AnalyticsService analyticsService) {
            this.analyticsService = analyticsService;
            return this;
        }

        public JigsawSettingsBuilder apiUrl(String str) {
            this.apiUrl = str;
            return this;
        }

        public JigsawSettingsBuilder application(Application application) {
            this.application = application;
            return this;
        }

        public JigsawSettings build() {
            return new JigsawSettings(this.application, this.ads, this.news, this.apiUrl, this.apiDebug, this.actionPreferenceStore, this.imageResolver, this.analyticsService, this.layoutServices, this.pack4ge, this.version, this.shortcuts, this.errorImage, this.streamingEnabled);
        }

        public JigsawSettingsBuilder errorImage(int i) {
            this.errorImage = i;
            return this;
        }

        public JigsawSettingsBuilder imageResolver(ImageResolver imageResolver) {
            this.imageResolver = imageResolver;
            return this;
        }

        public JigsawSettingsBuilder layoutServices(List<LayoutService> list) {
            this.layoutServices = list;
            return this;
        }

        public JigsawSettingsBuilder pack4ge(String str) {
            this.pack4ge = str;
            return this;
        }

        public JigsawSettingsBuilder shortcuts(boolean z) {
            this.shortcuts = z;
            return this;
        }

        public JigsawSettingsBuilder streamingEnabled(boolean z) {
            this.streamingEnabled = z;
            return this;
        }

        public String toString() {
            return "JigsawSettings.JigsawSettingsBuilder(application=" + this.application + ", ads=" + this.ads + ", news=" + this.news + ", apiUrl=" + this.apiUrl + ", apiDebug=" + this.apiDebug + ", actionPreferenceStore=" + this.actionPreferenceStore + ", imageResolver=" + this.imageResolver + ", analyticsService=" + this.analyticsService + ", layoutServices=" + this.layoutServices + ", pack4ge=" + this.pack4ge + ", version=" + this.version + ", shortcuts=" + this.shortcuts + ", errorImage=" + this.errorImage + ", streamingEnabled=" + this.streamingEnabled + ")";
        }

        public JigsawSettingsBuilder version(int i) {
            this.version = i;
            return this;
        }
    }

    JigsawSettings(Application application, boolean z, boolean z2, String str, boolean z3, ActionPreferenceStore actionPreferenceStore, ImageResolver imageResolver, AnalyticsService analyticsService, List<LayoutService> list, String str2, int i, boolean z4, int i2, boolean z5) {
        this.application = application;
        this.ads = z;
        this.news = z2;
        this.apiUrl = str;
        this.apiDebug = z3;
        this.actionPreferenceStore = actionPreferenceStore;
        this.imageResolver = imageResolver;
        this.analyticsService = analyticsService;
        this.layoutServices = list;
        this.pack4ge = str2;
        this.version = i;
        this.shortcuts = z4;
        this.errorImage = i2;
        this.streamingEnabled = z5;
    }

    public static JigsawSettingsBuilder builder() {
        return new JigsawSettingsBuilder();
    }

    public Application application() {
        return this.application;
    }

    public ActionPreferenceStore actionPreferenceStore() {
        return this.actionPreferenceStore;
    }

    public ImageResolver imageResolver() {
        return this.imageResolver;
    }

    public AnalyticsService analyticsService() {
        return this.analyticsService;
    }

    public List<LayoutService> layoutServices() {
        return this.layoutServices;
    }

    public boolean shortcuts() {
        return this.shortcuts;
    }

    public int errorImage() {
        return this.errorImage;
    }

    public boolean streamingEnabled() {
        return this.streamingEnabled;
    }
}
