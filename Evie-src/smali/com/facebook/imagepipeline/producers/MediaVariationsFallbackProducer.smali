.class public Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;
.super Ljava/lang/Object;
.source "MediaVariationsFallbackProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$VariantComparator;,
        Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field private final mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaIdExtractor:Lcom/facebook/imagepipeline/cache/MediaIdExtractor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mMediaVariationsIndex:Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;

.field private final mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;Lcom/facebook/imagepipeline/cache/MediaIdExtractor;Lcom/facebook/imagepipeline/producers/Producer;)V
    .locals 0
    .param p5    # Lcom/facebook/imagepipeline/cache/MediaIdExtractor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;",
            "Lcom/facebook/imagepipeline/cache/MediaIdExtractor;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 75
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 76
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 77
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mMediaVariationsIndex:Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;

    .line 78
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mMediaIdExtractor:Lcom/facebook/imagepipeline/cache/MediaIdExtractor;

    .line 79
    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->startInputProducerWithWrappedConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Lcom/facebook/imagepipeline/common/ResizeOptions;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->chooseFromVariants(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Lcom/facebook/imagepipeline/common/ResizeOptions;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lbolts/Task;)Z
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->isTaskCancelled(Lbolts/Task;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/request/MediaVariations$Variant;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z
    .locals 0

    .line 52
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->isBigEnoughForRequestedSize(Lcom/facebook/imagepipeline/request/MediaVariations$Variant;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p7}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->attemptCacheReadForVariant(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;)Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-object p0
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;)Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mMediaVariationsIndex:Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;

    return-object p0
.end method

.method private attemptCacheReadForVariant(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/MediaVariations;",
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/request/MediaVariations$Variant;",
            ">;I",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbolts/Task;"
        }
    .end annotation

    .line 210
    invoke-interface {p5, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;

    .line 211
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 212
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getCallerContext()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, p3, v2, v3}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;Landroid/net/Uri;Ljava/lang/Object;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v1

    .line 214
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v2

    if-nez v2, :cond_0

    .line 215
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/request/ImageRequest;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    .line 219
    :goto_0
    sget-object v2, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 223
    :goto_1
    invoke-virtual {v0, v1, p7}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->get(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;

    move-result-object v0

    .line 225
    invoke-direct/range {p0 .. p7}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->onFinishDiskReads(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Continuation;

    move-result-object p1

    .line 233
    invoke-virtual {v0, p1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method private chooseFromVariants(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Lcom/facebook/imagepipeline/common/ResizeOptions;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/MediaVariations;",
            "Lcom/facebook/imagepipeline/common/ResizeOptions;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbolts/Task;"
        }
    .end annotation

    .line 177
    invoke-virtual {p4}, Lcom/facebook/imagepipeline/request/MediaVariations;->getVariantsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p6

    .line 178
    invoke-direct/range {v1 .. v8}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->onFinishDiskReads(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Continuation;

    move-result-object p1

    const/4 p2, 0x0

    .line 186
    check-cast p2, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-static {p2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    return-object p1

    .line 189
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$VariantComparator;

    invoke-direct {v0, p5}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$VariantComparator;-><init>(Lcom/facebook/imagepipeline/common/ResizeOptions;)V

    .line 190
    invoke-virtual {p4, v0}, Lcom/facebook/imagepipeline/request/MediaVariations;->getSortedVariants(Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p6

    .line 192
    invoke-direct/range {v1 .. v8}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->attemptCacheReadForVariant(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method static getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;ZILjava/lang/String;Z)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ProducerListener;",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-interface {p0, p1}, Lcom/facebook/imagepipeline/producers/ProducerListener;->requiresExtraMap(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "cached_value_found"

    const/4 p0, 0x1

    .line 395
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cached_value_used_as_last"

    .line 397
    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "variants_count"

    .line 399
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "variants_source"

    move-object v7, p4

    .line 393
    invoke-static/range {v0 .. v7}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "cached_value_found"

    const/4 p0, 0x0

    .line 405
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "variants_count"

    .line 407
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "variants_source"

    move-object v5, p4

    .line 403
    invoke-static/range {v0 .. v5}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static isBigEnoughForRequestedSize(Lcom/facebook/imagepipeline/request/MediaVariations$Variant;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->getWidth()I

    move-result v0

    iget v1, p1, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->getHeight()I

    move-result p0

    iget p1, p1, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTaskCancelled(Lbolts/Task;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "*>;)Z"
        }
    .end annotation

    .line 377
    invoke-virtual {p0}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 378
    invoke-virtual {p0}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p0

    instance-of p0, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private onFinishDiskReads(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Continuation;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/imagepipeline/request/MediaVariations;",
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/request/MediaVariations$Variant;",
            ">;I",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbolts/Continuation<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 250
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v2

    .line 252
    new-instance v11, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;

    move-object v0, v11

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object v9, p3

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;-><init>(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILcom/facebook/imagepipeline/request/ImageRequest;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v11
.end method

.method private startInputProducerWithExistingConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method

.method private startInputProducerWithWrappedConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    new-instance v1, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$MediaVariationsConsumer;-><init>(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method

.method private subscribeTaskForRequestCancellation(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 1

    .line 416
    new-instance v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$3;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$3;-><init>(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    return-void
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v5

    .line 86
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v6

    .line 87
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequest;->getMediaVariations()Lcom/facebook/imagepipeline/request/MediaVariations;

    move-result-object v4

    .line 89
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequest;->isDiskCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v6, :cond_6

    iget v0, v6, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    if-lez v0, :cond_6

    iget v0, v6, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    if-lez v0, :cond_6

    .line 93
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequest;->getBytesRange()Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    if-nez v4, :cond_2

    .line 101
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mMediaIdExtractor:Lcom/facebook/imagepipeline/cache/MediaIdExtractor;

    if-nez v1, :cond_1

    move-object v1, v0

    move-object v7, v1

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/cache/MediaIdExtractor;->getMediaIdFrom(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id_extractor"

    move-object v7, v0

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/request/MediaVariations;->getMediaId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "index_db"

    move-object v7, v0

    :goto_0
    if-nez v4, :cond_3

    if-nez v7, :cond_3

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->startInputProducerWithExistingConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void

    .line 118
    :cond_3
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v0

    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaVariationsFallbackProducer"

    invoke-interface {v0, v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    if-eqz v4, :cond_4

    .line 122
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/request/MediaVariations;->getVariantsCount()I

    move-result v2

    if-lez v2, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v5

    move-object v5, v6

    move-object v6, v8

    .line 123
    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->chooseFromVariants(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Lcom/facebook/imagepipeline/common/ResizeOptions;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;

    goto :goto_1

    .line 132
    :cond_4
    invoke-static {v7}, Lcom/facebook/imagepipeline/request/MediaVariations;->newBuilderForMediaId(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/MediaVariations$Builder;

    move-result-object v2

    if-eqz v4, :cond_5

    .line 134
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/request/MediaVariations;->shouldForceRequestForSpecifiedUri()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    .line 133
    :cond_5
    invoke-virtual {v2, v0}, Lcom/facebook/imagepipeline/request/MediaVariations$Builder;->setForceRequestForSpecifiedUri(Z)Lcom/facebook/imagepipeline/request/MediaVariations$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/MediaVariations$Builder;->setSource(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/MediaVariations$Builder;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->mMediaVariationsIndex:Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;

    .line 137
    invoke-interface {v1, v7, v0}, Lcom/facebook/imagepipeline/cache/MediaVariationsIndex;->getCachedVariants(Ljava/lang/String;Lcom/facebook/imagepipeline/request/MediaVariations$Builder;)Lbolts/Task;

    move-result-object v9

    .line 138
    new-instance v10, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$1;-><init>(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/common/ResizeOptions;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v9, v10}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 166
    :goto_1
    invoke-direct {p0, v8, p2}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->subscribeTaskForRequestCancellation(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void

    .line 94
    :cond_6
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->startInputProducerWithExistingConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method
