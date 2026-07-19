.class Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "AnalyticsHandler.java"


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

    .line 318
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$1;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 321
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$1;->this$0:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->requestLogsSync()V

    return-void
.end method
