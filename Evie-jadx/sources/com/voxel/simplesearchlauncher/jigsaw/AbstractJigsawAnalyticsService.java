package com.voxel.simplesearchlauncher.jigsaw;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.evie.common.services.analytics.AnalyticsService;
import com.evie.common.services.analytics.models.AnalyticsData;
import com.evie.common.services.analytics.models.CloseMethod;
import com.evie.jigsaw.services.actions.ActionPreferenceStore;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractJigsawAnalyticsService implements AnalyticsService {
    private final Context context;
    private final AnalyticsHandler handler;
    private final ActionPreferenceStore preferences;

    @Override // com.evie.common.services.analytics.AnalyticsService
    public void recordActionDialogCloseEvent(AnalyticsData analyticsData, CloseMethod closeMethod) {
    }

    @Override // com.evie.common.services.analytics.AnalyticsService
    public void recordActionDialogSelectEvent(AnalyticsData analyticsData, String str, String str2, String str3) {
    }

    @Override // com.evie.common.services.analytics.AnalyticsService
    public void recordActionDialogUnselectEvent(AnalyticsData analyticsData, String str) {
    }

    @Override // com.evie.common.services.analytics.AnalyticsService
    public void recordActionRowExecuteEvent(AnalyticsData analyticsData, String str, String str2, String str3) {
    }

    @Override // com.evie.common.services.analytics.AnalyticsService
    public void recordCloseEvent(AnalyticsData analyticsData, CloseMethod closeMethod) {
    }

    @Override // com.evie.common.services.analytics.AnalyticsService
    public void recordEventBroadcastEvent(AnalyticsData analyticsData, String str) {
    }

    @Override // com.evie.common.services.analytics.AnalyticsService
    public void recordOpenEvent(AnalyticsData analyticsData) {
    }

    @Override // com.evie.common.services.analytics.AnalyticsService
    public void recordShortcutRequestAcceptedEvent(AnalyticsData analyticsData, String str, String str2) {
    }

    @Override // com.evie.common.services.analytics.AnalyticsService
    public void recordShortcutRequestCanceledEvent(AnalyticsData analyticsData) {
    }

    @Override // com.evie.common.services.analytics.AnalyticsService
    public void recordShortcutRequestEvent(AnalyticsData analyticsData, String str) {
    }

    @Override // com.evie.common.services.analytics.AnalyticsService
    public void recordVideoEvent(AnalyticsData analyticsData) {
    }

    public AbstractJigsawAnalyticsService(Context context, AnalyticsHandler analyticsHandler, ActionPreferenceStore actionPreferenceStore) {
        this.context = context;
        this.handler = analyticsHandler;
        this.preferences = actionPreferenceStore;
    }

    @Override // com.evie.common.services.analytics.AnalyticsService
    public void recordLinkResolutionEvent(AnalyticsData analyticsData, Uri uri, Intent intent, boolean z) {
        if (z) {
            recordAppLaunchEvent(intent, analyticsData.getLayout());
        }
    }

    public void recordAppLaunchEvent(Intent intent, String str) {
        this.handler.recordAppLaunch(this.context, intent, str);
    }

    @Override // com.evie.common.services.analytics.AnalyticsService
    public void recordScreenViewEvent(String str, String str2, String str3, String str4, String str5) {
        this.handler.startScreenView(str, str2, str3, str4, str5);
    }
}
