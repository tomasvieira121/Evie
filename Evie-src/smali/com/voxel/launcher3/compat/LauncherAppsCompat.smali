.class public abstract Lcom/voxel/launcher3/compat/LauncherAppsCompat;
.super Ljava/lang/Object;
.source "LauncherAppsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/voxel/launcher3/compat/LauncherAppsCompat;

.field private static sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/LauncherAppsCompat;
    .locals 2

    .line 56
    sget-object v0, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->sInstance:Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    if-nez v1, :cond_1

    .line 58
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/compat/LauncherAppsCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->sInstance:Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    goto :goto_0

    .line 61
    :cond_0
    new-instance v1, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/compat/LauncherAppsCompatV16;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->sInstance:Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    .line 64
    :cond_1
    :goto_0
    sget-object p0, Lcom/voxel/launcher3/compat/LauncherAppsCompat;->sInstance:Lcom/voxel/launcher3/compat/LauncherAppsCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract addOnAppsChangedCallback(Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
.end method

.method public abstract getActivityList(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
.end method

.method public abstract isPackageEnabledForProfile(Ljava/lang/String;Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
.end method

.method public abstract removeOnAppsChangedCallback(Lcom/voxel/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
.end method

.method public abstract resolveActivity(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;
.end method

.method public abstract showAppDetailsForProfile(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
.end method

.method public abstract startActivityForProfile(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;Landroid/graphics/Rect;Landroid/os/Bundle;)V
.end method
