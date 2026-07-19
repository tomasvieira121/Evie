.class Lcom/voxel/launcher3/MemoryCrashHandler$1;
.super Ljava/lang/Object;
.source "MemoryCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/MemoryCrashHandler;->initPostFabric(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic this$0:Lcom/voxel/launcher3/MemoryCrashHandler;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/MemoryCrashHandler;Landroid/content/Context;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/voxel/launcher3/MemoryCrashHandler$1;->this$0:Lcom/voxel/launcher3/MemoryCrashHandler;

    iput-object p2, p0, Lcom/voxel/launcher3/MemoryCrashHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/MemoryCrashHandler$1;->mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    const-string v0, "crash detected"

    const/4 v1, 0x0

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    instance-of v0, p2, Ljava/lang/OutOfMemoryError;

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/high16 v1, 0x100000

    const-string v2, "used_memory"

    .line 32
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    sub-long/2addr v3, v5

    int-to-long v5, v1

    div-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/crashlytics/android/Crashlytics;->setLong(Ljava/lang/String;J)V

    const-string v1, "free_memory"

    .line 33
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    div-long/2addr v2, v5

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/Crashlytics;->setLong(Ljava/lang/String;J)V

    const-string v1, "total_memory"

    .line 34
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    div-long/2addr v2, v5

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/Crashlytics;->setLong(Ljava/lang/String;J)V

    const-string v1, "max_memory"

    .line 35
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    div-long/2addr v2, v5

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/Crashlytics;->setLong(Ljava/lang/String;J)V

    .line 37
    iget-object v0, p0, Lcom/voxel/launcher3/MemoryCrashHandler$1;->val$context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v1, "memory_class"

    .line 38
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/Crashlytics;->setLong(Ljava/lang/String;J)V

    const-string v1, "large_memory_class"

    .line 39
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/Crashlytics;->setLong(Ljava/lang/String;J)V

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/MemoryCrashHandler$1;->mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
