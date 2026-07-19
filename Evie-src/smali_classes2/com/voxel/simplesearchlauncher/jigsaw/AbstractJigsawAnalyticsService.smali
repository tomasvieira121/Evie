.class public abstract Lcom/voxel/simplesearchlauncher/jigsaw/AbstractJigsawAnalyticsService;
.super Ljava/lang/Object;
.source "AbstractJigsawAnalyticsService.java"

# interfaces
.implements Lcom/evie/common/services/analytics/AnalyticsService;


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

.field private final preferences:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/jigsaw/AbstractJigsawAnalyticsService;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/jigsaw/AbstractJigsawAnalyticsService;->handler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/jigsaw/AbstractJigsawAnalyticsService;->preferences:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    return-void
.end method


# virtual methods
.method public recordActionDialogCloseEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Lcom/evie/common/services/analytics/models/CloseMethod;)V
    .locals 0

    return-void
.end method

.method public recordActionDialogSelectEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public recordActionDialogUnselectEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public recordActionRowExecuteEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public recordAppLaunchEvent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/jigsaw/AbstractJigsawAnalyticsService;->handler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/jigsaw/AbstractJigsawAnalyticsService;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->recordAppLaunch(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public recordCloseEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Lcom/evie/common/services/analytics/models/CloseMethod;)V
    .locals 0

    return-void
.end method

.method public recordEventBroadcastEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public recordLinkResolutionEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Landroid/net/Uri;Landroid/content/Intent;Z)V
    .locals 0

    if-eqz p4, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/evie/common/services/analytics/models/AnalyticsData;->getLayout()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/voxel/simplesearchlauncher/jigsaw/AbstractJigsawAnalyticsService;->recordAppLaunchEvent(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public recordOpenEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;)V
    .locals 0

    return-void
.end method

.method public recordScreenViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/jigsaw/AbstractJigsawAnalyticsService;->handler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->startScreenView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordShortcutRequestAcceptedEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public recordShortcutRequestCanceledEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;)V
    .locals 0

    return-void
.end method

.method public recordShortcutRequestEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public recordVideoEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;)V
    .locals 0

    return-void
.end method
