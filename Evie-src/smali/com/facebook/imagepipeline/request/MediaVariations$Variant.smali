.class public final Lcom/facebook/imagepipeline/request/MediaVariations$Variant;
.super Ljava/lang/Object;
.source "MediaVariations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/request/MediaVariations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Variant"
.end annotation


# instance fields
.field private final mCacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mHeight:I

.field private final mUri:Landroid/net/Uri;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IILcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)V
    .locals 0
    .param p4    # Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mUri:Landroid/net/Uri;

    .line 186
    iput p2, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mWidth:I

    .line 187
    iput p3, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mHeight:I

    .line 188
    iput-object p4, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mCacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 210
    instance-of v0, p1, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 213
    :cond_0
    check-cast p1, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;

    .line 214
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mUri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mWidth:I

    iget v2, p1, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mWidth:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mHeight:I

    iget v2, p1, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mHeight:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mCacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    iget-object p1, p1, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mCacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCacheChoice()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mCacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mHeight:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 223
    iget v1, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mWidth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 224
    iget v1, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 230
    check-cast v0, Ljava/util/Locale;

    const-string v1, "%dx%d %s %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mUri:Landroid/net/Uri;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/facebook/imagepipeline/request/MediaVariations$Variant;->mCacheChoice:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
