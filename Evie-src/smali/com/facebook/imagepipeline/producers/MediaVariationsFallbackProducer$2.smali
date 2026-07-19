.class Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;
.super Ljava/lang/Object;
.source "MediaVariationsFallbackProducer.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->onFinishDiskReads(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;

.field final synthetic val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

.field final synthetic val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

.field final synthetic val$mediaVariations:Lcom/facebook/imagepipeline/request/MediaVariations;

.field final synthetic val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$sortedVariants:Ljava/util/List;

.field final synthetic val$variantsIndex:I


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILcom/facebook/imagepipeline/request/ImageRequest;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->this$0:Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$requestId:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iput-object p6, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$mediaVariations:Lcom/facebook/imagepipeline/request/MediaVariations;

    iput-object p7, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$sortedVariants:Ljava/util/List;

    iput p8, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$variantsIndex:I

    iput-object p9, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p10, p0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 258
    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->access$200(Lbolts/Task;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v4, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$requestId:Ljava/lang/String;

    const-string v5, "MediaVariationsFallbackProducer"

    invoke-interface {v1, v4, v5, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithCancellation(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 260
    iget-object v1, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 263
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lbolts/Task;->isFaulted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v5, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$requestId:Ljava/lang/String;

    const-string v6, "MediaVariationsFallbackProducer"

    invoke-virtual/range {p1 .. p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v7

    invoke-interface {v1, v5, v6, v7, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 265
    iget-object v1, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->this$0:Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;

    iget-object v5, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v6, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v7, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$mediaVariations:Lcom/facebook/imagepipeline/request/MediaVariations;

    .line 268
    invoke-virtual {v7}, Lcom/facebook/imagepipeline/request/MediaVariations;->getMediaId()Ljava/lang/String;

    move-result-object v7

    .line 265
    invoke-static {v1, v5, v6, v7}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->access$000(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_1

    .line 272
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/image/EncodedImage;

    if-eqz v1, :cond_5

    .line 274
    iget-object v5, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$mediaVariations:Lcom/facebook/imagepipeline/request/MediaVariations;

    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/MediaVariations;->shouldForceRequestForSpecifiedUri()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$sortedVariants:Ljava/util/List;

    iget v6, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$variantsIndex:I

    .line 276
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;

    iget-object v6, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 277
    invoke-virtual {v6}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v6

    .line 275
    invoke-static {v5, v6}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->access$300(Lcom/facebook/imagepipeline/request/MediaVariations$Variant;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 278
    :goto_0
    iget-object v12, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v13, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$requestId:Ljava/lang/String;

    const-string v14, "MediaVariationsFallbackProducer"

    const/4 v8, 0x1

    iget-object v6, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$sortedVariants:Ljava/util/List;

    .line 285
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    iget-object v6, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$mediaVariations:Lcom/facebook/imagepipeline/request/MediaVariations;

    .line 286
    invoke-virtual {v6}, Lcom/facebook/imagepipeline/request/MediaVariations;->getSource()Ljava/lang/String;

    move-result-object v10

    move-object v6, v12

    move-object v7, v13

    move v11, v5

    .line 281
    invoke-static/range {v6 .. v11}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;ZILjava/lang/String;Z)Ljava/util/Map;

    move-result-object v6

    .line 278
    invoke-interface {v12, v13, v14, v6}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v5, :cond_3

    .line 290
    iget-object v6, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v7, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$requestId:Ljava/lang/String;

    const-string v8, "MediaVariationsFallbackProducer"

    invoke-interface {v6, v7, v8, v4}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onUltimateProducerReached(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 291
    iget-object v6, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-interface {v6, v7}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 293
    :cond_3
    invoke-static {v5}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->simpleStatusForIsLast(Z)I

    move-result v6

    const/4 v7, 0x2

    .line 294
    invoke-static {v6, v7}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->turnOnStatusFlag(II)I

    move-result v6

    if-nez v5, :cond_4

    const/4 v7, 0x4

    .line 296
    invoke-static {v6, v7}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->turnOnStatusFlag(II)I

    move-result v6

    .line 298
    :cond_4
    iget-object v7, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v7, v1, v6}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    .line 301
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->close()V

    xor-int/lit8 v1, v5, 0x1

    move v4, v1

    const/4 v1, 0x0

    goto :goto_1

    .line 307
    :cond_5
    iget v1, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$variantsIndex:I

    iget-object v5, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$sortedVariants:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v1, v5, :cond_6

    .line 310
    iget-object v6, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->this$0:Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;

    iget-object v7, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v8, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v9, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v10, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$mediaVariations:Lcom/facebook/imagepipeline/request/MediaVariations;

    iget-object v11, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$sortedVariants:Ljava/util/List;

    iget v1, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$variantsIndex:I

    add-int/lit8 v12, v1, 0x1

    iget-object v13, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static/range {v6 .. v13}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->access$400(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/MediaVariations;Ljava/util/List;ILjava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_1

    .line 324
    :cond_6
    iget-object v1, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$listener:Lcom/facebook/imagepipeline/producers/ProducerListener;

    iget-object v5, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$requestId:Ljava/lang/String;

    const-string v6, "MediaVariationsFallbackProducer"

    const/16 v16, 0x0

    iget-object v7, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$sortedVariants:Ljava/util/List;

    .line 331
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    iget-object v7, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$mediaVariations:Lcom/facebook/imagepipeline/request/MediaVariations;

    .line 332
    invoke-virtual {v7}, Lcom/facebook/imagepipeline/request/MediaVariations;->getSource()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object v14, v1

    move-object v15, v5

    .line 327
    invoke-static/range {v14 .. v19}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;ZILjava/lang/String;Z)Ljava/util/Map;

    move-result-object v7

    .line 324
    invoke-interface {v1, v5, v6, v7}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerFinishWithSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    :goto_1
    if-eqz v4, :cond_8

    .line 340
    iget-object v4, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v4}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isIntermediateResultExpected()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v1, :cond_7

    .line 343
    new-instance v1, Lcom/facebook/imagepipeline/producers/SettableProducerContext;

    iget-object v4, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-direct {v1, v4}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;-><init>(Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 345
    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/producers/SettableProducerContext;->setIsIntermediateResultExpected(Z)V

    goto :goto_2

    .line 349
    :cond_7
    iget-object v1, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 351
    :goto_2
    iget-object v3, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->this$0:Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;

    iget-object v4, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    iget-object v5, v0, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer$2;->val$mediaVariations:Lcom/facebook/imagepipeline/request/MediaVariations;

    .line 354
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/request/MediaVariations;->getMediaId()Ljava/lang/String;

    move-result-object v5

    .line 351
    invoke-static {v3, v4, v1, v5}, Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;->access$000(Lcom/facebook/imagepipeline/producers/MediaVariationsFallbackProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    :cond_8
    return-object v2
.end method
