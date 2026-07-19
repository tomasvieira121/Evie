.class public Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    }
.end annotation


# instance fields
.field private final mDecodeCancellationEnabled:Z

.field private final mExternalCreatedBitmapLogEnabled:Z

.field private final mMediaIdExtractor:Lcom/facebook/imagepipeline/cache/MediaIdExtractor;

.field private final mMediaVariationsIndexEnabled:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPartialImageCachingEnabled:Z

.field private final mSuppressBitmapPrefetching:Z

.field private final mUseBitmapPrepareToDraw:Z

.field private final mUseDownsamplingRatioForResizing:Z

.field private final mWebpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

.field private final mWebpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

.field private final mWebpSupportEnabled:Z


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$000(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mWebpSupportEnabled:Z

    .line 40
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$100(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mExternalCreatedBitmapLogEnabled:Z

    .line 41
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$200(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Lcom/facebook/common/internal/Supplier;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 42
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$200(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Lcom/facebook/common/internal/Supplier;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mMediaVariationsIndexEnabled:Lcom/facebook/common/internal/Supplier;

    goto :goto_0

    .line 44
    :cond_0
    new-instance p2, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$1;

    invoke-direct {p2, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$1;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;)V

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mMediaVariationsIndexEnabled:Lcom/facebook/common/internal/Supplier;

    .line 51
    :goto_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$300(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Lcom/facebook/imagepipeline/cache/MediaIdExtractor;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mMediaIdExtractor:Lcom/facebook/imagepipeline/cache/MediaIdExtractor;

    .line 52
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$400(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mWebpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    .line 53
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$500(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mDecodeCancellationEnabled:Z

    .line 54
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$600(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Lcom/facebook/common/webp/WebpBitmapFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mWebpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

    .line 55
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$700(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mSuppressBitmapPrefetching:Z

    .line 56
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$800(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mUseDownsamplingRatioForResizing:Z

    .line 57
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$900(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mUseBitmapPrepareToDraw:Z

    .line 58
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$1000(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mPartialImageCachingEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getMediaIdExtractor()Lcom/facebook/imagepipeline/cache/MediaIdExtractor;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mMediaIdExtractor:Lcom/facebook/imagepipeline/cache/MediaIdExtractor;

    return-object v0
.end method

.method public getMediaVariationsIndexEnabled()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mMediaVariationsIndexEnabled:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUseBitmapPrepareToDraw()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mUseBitmapPrepareToDraw:Z

    return v0
.end method

.method public getUseDownsamplingRatioForResizing()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mUseDownsamplingRatioForResizing:Z

    return v0
.end method

.method public getWebpBitmapFactory()Lcom/facebook/common/webp/WebpBitmapFactory;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mWebpBitmapFactory:Lcom/facebook/common/webp/WebpBitmapFactory;

    return-object v0
.end method

.method public getWebpErrorLogger()Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mWebpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    return-object v0
.end method

.method public isDecodeCancellationEnabled()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mDecodeCancellationEnabled:Z

    return v0
.end method

.method public isExternalCreatedBitmapLogEnabled()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mExternalCreatedBitmapLogEnabled:Z

    return v0
.end method

.method public isPartialImageCachingEnabled()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mPartialImageCachingEnabled:Z

    return v0
.end method

.method public isWebpSupportEnabled()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mWebpSupportEnabled:Z

    return v0
.end method
