.class public Lcom/evie/common/services/analytics/BaseAnalyticsService;
.super Ljava/lang/Object;
.source "BaseAnalyticsService.java"

# interfaces
.implements Lcom/evie/common/services/analytics/AnalyticsService;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseAnalyticsService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordActionDialogCloseEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Lcom/evie/common/services/analytics/models/CloseMethod;)V
    .locals 4

    .line 70
    sget-object v0, Lcom/evie/common/services/analytics/BaseAnalyticsService;->TAG:Ljava/lang/String;

    const-string v1, "recordActionDialogCloseEvent (%s): %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordActionDialogSelectEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 60
    sget-object v0, Lcom/evie/common/services/analytics/BaseAnalyticsService;->TAG:Ljava/lang/String;

    const-string v1, "recordActionDialogSelectEvent (%s, %s (%s)): %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p4, v2, p2

    const/4 p2, 0x2

    aput-object p3, v2, p2

    const/4 p2, 0x3

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordActionDialogUnselectEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V
    .locals 4

    .line 65
    sget-object v0, Lcom/evie/common/services/analytics/BaseAnalyticsService;->TAG:Ljava/lang/String;

    const-string v1, "recordActionDialogUnselectEvent (%s): %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordActionRowExecuteEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 75
    sget-object v0, Lcom/evie/common/services/analytics/BaseAnalyticsService;->TAG:Ljava/lang/String;

    const-string v1, "recordActionRowExecuteEvent (%s, %s (%s)): %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p4, v2, p2

    const/4 p2, 0x2

    aput-object p3, v2, p2

    const/4 p2, 0x3

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordCloseEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Lcom/evie/common/services/analytics/models/CloseMethod;)V
    .locals 4

    .line 35
    sget-object v0, Lcom/evie/common/services/analytics/BaseAnalyticsService;->TAG:Ljava/lang/String;

    const-string v1, "recordCloseEvent (%s): %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordEventBroadcastEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V
    .locals 4

    .line 95
    sget-object v0, Lcom/evie/common/services/analytics/BaseAnalyticsService;->TAG:Ljava/lang/String;

    const-string v1, "recordEventBroadcastEvent (%s): %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordLinkResolutionEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Landroid/net/Uri;Landroid/content/Intent;Z)V
    .locals 3

    .line 85
    sget-object p3, Lcom/evie/common/services/analytics/BaseAnalyticsService;->TAG:Ljava/lang/String;

    const-string v0, "recordLinkResolutionEvent (%s, external: %b): %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 p4, 0x1

    aput-object p2, v1, p4

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordOpenEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;)V
    .locals 4

    .line 30
    sget-object v0, Lcom/evie/common/services/analytics/BaseAnalyticsService;->TAG:Ljava/lang/String;

    const-string v1, "recordOpenEvent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordScreenViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 105
    sget-object v0, Lcom/evie/common/services/analytics/BaseAnalyticsService;->TAG:Ljava/lang/String;

    const-string v1, "recordScreenViewEvent: %s, %s, %s, %s, %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    const/4 p1, 0x4

    aput-object p5, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordShortcutRequestAcceptedEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 50
    sget-object v0, Lcom/evie/common/services/analytics/BaseAnalyticsService;->TAG:Ljava/lang/String;

    const-string v1, "recordShortcutRequestAcceptedEvent (%s => %s): %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordShortcutRequestCanceledEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;)V
    .locals 4

    .line 55
    sget-object v0, Lcom/evie/common/services/analytics/BaseAnalyticsService;->TAG:Ljava/lang/String;

    const-string v1, "recordShortcutRequestCanceledEvent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordShortcutRequestEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;Ljava/lang/String;)V
    .locals 4

    .line 45
    sget-object v0, Lcom/evie/common/services/analytics/BaseAnalyticsService;->TAG:Ljava/lang/String;

    const-string v1, "recordShortcutRequestEvent (%s): %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordVideoEvent(Lcom/evie/common/services/analytics/models/AnalyticsData;)V
    .locals 4

    .line 40
    sget-object v0, Lcom/evie/common/services/analytics/BaseAnalyticsService;->TAG:Ljava/lang/String;

    const-string v1, "recordVideoEvent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
