.class public Lcom/voxel/launcher3/MemoryCrashHandler;
.super Ljava/lang/Object;
.source "MemoryCrashHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initPostFabric(Landroid/content/Context;)V
    .locals 1

    .line 20
    new-instance v0, Lcom/voxel/launcher3/MemoryCrashHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/MemoryCrashHandler$1;-><init>(Lcom/voxel/launcher3/MemoryCrashHandler;Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
