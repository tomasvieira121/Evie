.class Lcom/voxel/launcher3/fresco/ImagePipelineCleaner$1;
.super Ljava/lang/Object;
.source "ImagePipelineCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner$1;->this$0:Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner$1;->this$0:Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;

    invoke-static {v0}, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;->access$000(Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;)Lcom/evie/search/local/LocalSearchManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner$1;->this$0:Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;

    invoke-static {v0}, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;->access$100(Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;)Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearMemoryCaches()V

    .line 37
    iget-object v0, p0, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner$1;->this$0:Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;

    invoke-static {v0}, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;->access$000(Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;)Lcom/evie/search/local/LocalSearchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evie/search/local/LocalSearchManager;->getRecentItems()Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/search/model/RecentItem;

    .line 39
    iget-object v2, p0, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner$1;->this$0:Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;

    invoke-static {v2}, Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;->access$100(Lcom/voxel/launcher3/fresco/ImagePipelineCleaner;)Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evie/search/model/RecentItem;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/facebook/imagepipeline/core/ImagePipeline;->prefetchToBitmapCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    goto :goto_0

    :cond_1
    return-void
.end method
