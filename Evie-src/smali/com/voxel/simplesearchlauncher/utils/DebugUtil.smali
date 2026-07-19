.class public final Lcom/voxel/simplesearchlauncher/utils/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# direct methods
.method public static addVoxelDebugSyncLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-static {p0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    const/4 p0, 0x0

    .line 24
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1, p0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static isAnalyticsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isDevDebugLogEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
