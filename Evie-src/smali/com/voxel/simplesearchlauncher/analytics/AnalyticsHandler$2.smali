.class Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$2;
.super Ljava/lang/Object;
.source "AnalyticsHandler.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsFilter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$2;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 350
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$2;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->finishScreenView()V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
