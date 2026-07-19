.class public Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;
.super Landroid/os/AsyncTask;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mBitmapToRecycle:Landroid/graphics/Bitmap;

.field private final mCaller:Lcom/voxel/simplesearchlauncher/widget/WidgetCell;

.field private final mInfo:Ljava/lang/Object;

.field final mKey:Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field mVersions:[J

.field final synthetic this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/WidgetPreviewLoader;Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;Ljava/lang/Object;IILcom/voxel/simplesearchlauncher/widget/WidgetCell;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 547
    iput-object p2, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    .line 548
    iput-object p3, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Ljava/lang/Object;

    .line 549
    iput p5, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    .line 550
    iput p4, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    .line 551
    iput-object p6, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lcom/voxel/simplesearchlauncher/widget/WidgetCell;

    return-void
.end method

.method public static synthetic lambda$onCancelled$1(Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 637
    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    monitor-enter v0

    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v1, v1, Lcom/voxel/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 639
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic lambda$onPostExecute$0(Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 610
    invoke-virtual {p0}, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v2, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    invoke-virtual {v0, v1, v2, p1}, Lcom/voxel/launcher3/WidgetPreviewLoader;->writeToDb(Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;[JLandroid/graphics/Bitmap;)V

    .line 614
    iput-object p1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    monitor-enter v0

    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v1, v1, Lcom/voxel/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 620
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 7

    .line 563
    invoke-virtual {p0}, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 566
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object p1, p1, Lcom/voxel/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    monitor-enter p1

    .line 568
    :try_start_0
    iget-object v1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v1, v1, Lcom/voxel/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 569
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 570
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    if-ne v3, v4, :cond_1

    .line 571
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    if-ne v3, v4, :cond_1

    .line 573
    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mUnusedBitmaps:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 577
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 581
    iget p1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    iget v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_3
    move-object v4, v0

    .line 584
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v4

    .line 587
    :cond_4
    iget-object p1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    invoke-virtual {p1, v0, v4, p0}, Lcom/voxel/launcher3/WidgetPreviewLoader;->readFromDb(Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;Landroid/graphics/Bitmap;Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 589
    invoke-virtual {p0}, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_5

    .line 593
    iget-object p1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mKey:Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;

    iget-object v0, v0, Lcom/voxel/launcher3/WidgetPreviewLoader$WidgetCacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/WidgetPreviewLoader;->getPackageVersion(Ljava/lang/String;)[J

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    .line 595
    iget-object p1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lcom/voxel/simplesearchlauncher/widget/WidgetCell;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/voxel/launcher3/Launcher;

    .line 598
    iget-object v1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v3, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mInfo:Ljava/lang/Object;

    iget v5, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewWidth:I

    iget v6, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mPreviewHeight:I

    invoke-virtual/range {v1 .. v6}, Lcom/voxel/launcher3/WidgetPreviewLoader;->generatePreview(Lcom/voxel/launcher3/Launcher;Ljava/lang/Object;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_5
    return-object p1

    :catchall_0
    move-exception v0

    .line 577
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 536
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$WidgetPreviewLoader$PreviewLoadTask$vGt9AxipSBJEHvYt8SlHsRGqPkA;

    invoke-direct {v1, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$WidgetPreviewLoader$PreviewLoadTask$vGt9AxipSBJEHvYt8SlHsRGqPkA;-><init>(Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 536
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mCaller:Lcom/voxel/simplesearchlauncher/widget/WidgetCell;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/widget/WidgetCell;->applyPreview(Landroid/graphics/Bitmap;)V

    .line 608
    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mVersions:[J

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->this$0:Lcom/voxel/launcher3/WidgetPreviewLoader;

    iget-object v0, v0, Lcom/voxel/launcher3/WidgetPreviewLoader;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/voxel/launcher3/-$$Lambda$WidgetPreviewLoader$PreviewLoadTask$ZLXWDw4krHqCPjbcTLGgyZ1wn7g;

    invoke-direct {v1, p0, p1}, Lcom/voxel/launcher3/-$$Lambda$WidgetPreviewLoader$PreviewLoadTask$ZLXWDw4krHqCPjbcTLGgyZ1wn7g;-><init>(Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 626
    :cond_0
    iput-object p1, p0, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->mBitmapToRecycle:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 536
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/WidgetPreviewLoader$PreviewLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
