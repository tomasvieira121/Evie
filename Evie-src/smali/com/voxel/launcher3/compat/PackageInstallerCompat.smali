.class public abstract Lcom/voxel/launcher3/compat/PackageInstallerCompat;
.super Ljava/lang/Object;
.source "PackageInstallerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/voxel/launcher3/compat/PackageInstallerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/compat/PackageInstallerCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/PackageInstallerCompat;
    .locals 2

    .line 35
    sget-object v0, Lcom/voxel/launcher3/compat/PackageInstallerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/voxel/launcher3/compat/PackageInstallerCompat;->sInstance:Lcom/voxel/launcher3/compat/PackageInstallerCompat;

    if-nez v1, :cond_1

    .line 37
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/voxel/launcher3/compat/PackageInstallerCompat;->sInstance:Lcom/voxel/launcher3/compat/PackageInstallerCompat;

    goto :goto_0

    .line 40
    :cond_0
    new-instance v1, Lcom/voxel/launcher3/compat/PackageInstallerCompat$1;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/compat/PackageInstallerCompat$1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/voxel/launcher3/compat/PackageInstallerCompat;->sInstance:Lcom/voxel/launcher3/compat/PackageInstallerCompat;

    .line 43
    :cond_1
    :goto_0
    sget-object p0, Lcom/voxel/launcher3/compat/PackageInstallerCompat;->sInstance:Lcom/voxel/launcher3/compat/PackageInstallerCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract onFinishBind()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStop()V
.end method

.method public abstract updateAndGetActiveSessionCache()Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
