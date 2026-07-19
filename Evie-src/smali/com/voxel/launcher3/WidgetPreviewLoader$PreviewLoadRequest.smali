.class public Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewLoadRequest"
.end annotation


# instance fields
.field final mTask:Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;

.field final synthetic this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/WidgetPreviewLoader;Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object p2, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    return-void
.end method

.method public static synthetic lambda$cleanup$0(Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;)V
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    monitor-enter v0

    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v1, v1, Lcom/voxel/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    iget-object v2, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v2, v2, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 529
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    return-void

    :catchall_0
    move-exception v1

    .line 529
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 517
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->cancel(Z)Z

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->mTask:Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;

    iget-object v0, v0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$WidgetPreviewLoader$PreviewLoadRequest$PFFeAx1_XFFsw2fflB5VCkrujhg;

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/-$$Lambda$WidgetPreviewLoader$PreviewLoadRequest$PFFeAx1_XFFsw2fflB5VCkrujhg;-><init>(Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
