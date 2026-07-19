.class Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;)V
    .locals 0

    .line 1418
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator$1;->this$1:Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1423
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator$1;->this$1:Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;

    iget-object v1, v1, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v1}, Lcom/voxel/launcher3/Workspace;->access$200(Lcom/voxel/launcher3/Workspace;)Landroid/app/WallpaperManager;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator$1;->this$1:Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;

    iget-object v2, v2, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v2}, Lcom/voxel/launcher3/Workspace;->access$400(Lcom/voxel/launcher3/Workspace;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator$1;->this$1:Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;

    iget-object v3, v3, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    iget-object v3, v3, Lcom/voxel/launcher3/Workspace;->mWallpaperOffset:Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v3}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 1428
    :catch_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator$1;->this$1:Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;

    iget-object v1, v1, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v1}, Lcom/voxel/launcher3/Workspace;->access$000(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/Launcher;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator$1;->this$1:Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;

    iget-object v2, v2, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/voxel/launcher3/Workspace;

    iget-object v2, v2, Lcom/voxel/launcher3/Workspace;->mWallpaperOffset:Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/voxel/launcher3/Launcher;->setWallpaperOffsets(FF)V

    .line 1429
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator$1;->this$1:Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;

    invoke-static {v0}, Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;->access$500(Lcom/voxel/launcher3/Workspace$WallpaperOffsetInterpolator;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1433
    :goto_1
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
