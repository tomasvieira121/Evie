.class Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$2;
.super Lcom/voxel/launcher3/fresco/PriorityRunnable;
.source "HybridNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->getActivityIconRunnable(Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/launcher3/fresco/PriorityRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;

.field final synthetic val$activityName:Ljava/lang/String;

.field final synthetic val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

.field final synthetic val$iconPackPackageName:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;Lcom/facebook/imagepipeline/common/Priority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$2;->this$0:Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;

    iput-object p3, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$2;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$2;->val$activityName:Ljava/lang/String;

    iput-object p5, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$2;->val$iconPackPackageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    invoke-direct {p0, p2}, Lcom/voxel/launcher3/fresco/PriorityRunnable;-><init>(Lcom/facebook/imagepipeline/common/Priority;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$2;->this$0:Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;

    new-instance v1, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    iget-object v2, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$2;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$2;->val$activityName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$2;->val$iconPackPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->access$000(Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid icon pack"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    .line 165
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 166
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 167
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 168
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 170
    iget-object v0, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;->onResponse(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 172
    iget-object v1, p0, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher$2;->val$callback:Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
