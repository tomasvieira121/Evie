.class public Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;
.super Ljava/lang/Object;
.source "ImagePipelineCleaner.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private mCacheCleaner:Ljava/lang/Runnable;

.field private mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

.field private mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;


# direct methods
.method public constructor <init>(Lcom/evie/search/local/LocalSearchManager;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner$1;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner$1;-><init>(Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;)V

    iput-object v0, p0, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;->mCacheCleaner:Ljava/lang/Runnable;

    .line 24
    iput-object p1, p0, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;->mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;

    .line 25
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;)Lcom/evie/search/local/LocalSearchManager;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;->mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;)Lcom/facebook/imagepipeline/core/ImagePipeline;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;->mImagePipeline:Lcom/facebook/imagepipeline/core/ImagePipeline;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 57
    invoke-static {}, Lcom/voxel/simplesearchlauncher/fragment/Executors;->getMainThreadExecutor()Lcom/voxel/launcher3/MainThreadExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;->mCacheCleaner:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Lcom/voxel/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 52
    invoke-static {}, Lcom/voxel/simplesearchlauncher/fragment/Executors;->getMainThreadExecutor()Lcom/voxel/launcher3/MainThreadExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;->mCacheCleaner:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/MainThreadExecutor;->removeCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
