.class public interface abstract Lcom/evie/common/services/analytics/AnalyticsService;
.super Ljava/lang/Object;
.source "AnalyticsService.java"


# virtual methods
.method public abstract recordActionDialogCloseEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Lcom/evie/common/services/analytics/models/CloseMethod;)V
.end method

.method public abstract recordActionDialogSelectEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract recordActionDialogUnselectEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V
.end method

.method public abstract recordActionRowExecuteEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract recordCloseEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Lcom/evie/common/services/analytics/models/CloseMethod;)V
.end method

.method public abstract recordEventBroadcastEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V
.end method

.method public abstract recordLinkResolutionEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Landroid/net/Uri;Landroid/content/Intent;Z)V
.end method

.method public abstract recordOpenEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;)V
.end method

.method public abstract recordScreenViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract recordShortcutRequestAcceptedEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract recordShortcutRequestCanceledEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;)V
.end method

.method public abstract recordShortcutRequestEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V
.end method

.method public abstract recordVideoEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;)V
.end method
