.class Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;
.super Ljava/lang/Object;
.source "LocalAppsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultAppQuickCacheData"
.end annotation


# instance fields
.field private app:Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

.field private createTime:J

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;->this$0:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;->app:Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;->createTime:J

    return-void
.end method


# virtual methods
.method public getApp()Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;->app:Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    return-object v0
.end method

.method isFresh()Z
    .locals 5

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$DefaultAppQuickCacheData;->createTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
