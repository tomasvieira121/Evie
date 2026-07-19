.class public Lcom/voxel/launcher3/fresco/ConservativeBitmapCacheConfigSupplier;
.super Ljava/lang/Object;
.source "ConservativeBitmapCacheConfigSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/Supplier<",
        "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/voxel/launcher3/fresco/ConservativeBitmapCacheConfigSupplier;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/imagepipeline/cache/MemoryCacheParams;
    .locals 9

    .line 19
    new-instance v0, Lcom/facebook/imagepipeline/cache/DefaultBitmapMemoryCacheParamsSupplier;

    iget-object v1, p0, Lcom/voxel/launcher3/fresco/ConservativeBitmapCacheConfigSupplier;->mActivityManager:Landroid/app/ActivityManager;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/DefaultBitmapMemoryCacheParamsSupplier;-><init>(Landroid/app/ActivityManager;)V

    .line 21
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/DefaultBitmapMemoryCacheParamsSupplier;->get()Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    move-result-object v0

    .line 23
    iget v1, v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheSize:I

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0xf00000

    if-le v1, v2, :cond_0

    const/high16 v4, 0xf00000

    goto :goto_0

    :cond_0
    move v4, v1

    .line 26
    :goto_0
    new-instance v1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v5, v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntries:I

    iget v6, v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxEvictionQueueSize:I

    iget v7, v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxEvictionQueueEntries:I

    iget v8, v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntrySize:I

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;-><init>(IIIII)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/voxel/launcher3/fresco/ConservativeBitmapCacheConfigSupplier;->get()Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    move-result-object v0

    return-object v0
.end method
