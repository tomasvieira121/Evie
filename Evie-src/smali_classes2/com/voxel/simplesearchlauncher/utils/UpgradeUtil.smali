.class public Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil;
.super Ljava/lang/Object;
.source "UpgradeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;
    }
.end annotation


# direct methods
.method public static declared-synchronized processUpgrade(Landroid/content/SharedPreferences;Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;I)Z
    .locals 3

    const-class v0, Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil;

    monitor-enter v0

    if-eqz p0, :cond_3

    if-ltz p2, :cond_2

    :try_start_0
    const-string v1, "_last_version"

    const/4 v2, -0x1

    .line 27
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-gt p2, v1, :cond_0

    .line 29
    monitor-exit v0

    return v2

    :cond_0
    if-eqz p1, :cond_1

    .line 33
    :try_start_1
    invoke-interface {p1, v1, p2}, Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;->onUpgrade(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 36
    :try_start_2
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    monitor-exit v0

    return v2

    .line 40
    :cond_1
    :goto_0
    :try_start_3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "_last_version"

    .line 41
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p0, 0x1

    .line 44
    monitor-exit v0

    return p0

    .line 24
    :cond_2
    :try_start_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "currentVersion must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "processUpgrade requires a non-null SharedPreferences"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
