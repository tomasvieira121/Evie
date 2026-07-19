.class Lcom/android/photos/views/TiledImageRenderer$Tile;
.super Lcom/android/gallery3d/glrenderer/UploadedTexture;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/views/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field public mDecodedTile:Landroid/graphics/Bitmap;

.field public mNext:Lcom/android/photos/views/TiledImageRenderer$Tile;

.field public mTileLevel:I

.field public volatile mTileState:I

.field public mX:I

.field public mY:I

.field final synthetic this$0:Lcom/android/photos/views/TiledImageRenderer;


# direct methods
.method public constructor <init>(Lcom/android/photos/views/TiledImageRenderer;III)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;-><init>()V

    const/4 p1, 0x1

    .line 672
    iput p1, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    .line 675
    iput p2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    .line 676
    iput p3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    .line 677
    iput p4, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    return-void
.end method


# virtual methods
.method decode()Z
    .locals 5

    .line 689
    :try_start_0
    sget-object v0, Lcom/android/photos/views/TiledImageRenderer;->sTilePool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v2, v2, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    .line 693
    :cond_0
    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget-object v1, v1, Lcom/android/photos/views/TiledImageRenderer;->mModel:Lcom/android/photos/views/TiledImageRenderer$TileSource;

    iget v2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    iget v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    iget v4, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/photos/views/TiledImageRenderer$TileSource;->getTile(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TiledImageRenderer"

    const-string v2, "fail to decode tile"

    .line 695
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 697
    :goto_0
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getParentTile()Lcom/android/photos/views/TiledImageRenderer$Tile;
    .locals 4

    .line 738
    iget v0, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v1, v1, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    iget v1, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    add-int/lit8 v2, v1, 0x1

    shl-int/2addr v0, v2

    .line 742
    iget v2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    div-int/2addr v2, v0

    mul-int v2, v2, v0

    .line 743
    iget v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    div-int/2addr v3, v0

    mul-int v0, v0, v3

    .line 744
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/photos/views/TiledImageRenderer;->getTile(III)Lcom/android/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    return-object v0
.end method

.method public getTextureHeight()I
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 682
    sget-object v0, Lcom/android/photos/views/TiledImageRenderer;->sTilePool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 702
    iget v0, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 706
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v0, v0, Lcom/android/photos/views/TiledImageRenderer;->mImageWidth:I

    iget v2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    shr-int/2addr v0, v2

    .line 707
    iget-object v2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v2, v2, Lcom/android/photos/views/TiledImageRenderer;->mImageHeight:I

    iget v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    shr-int/2addr v2, v3

    .line 708
    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v3, v3, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v3, v3, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/photos/views/TiledImageRenderer$Tile;->setSize(II)V

    .line 710
    iget-object v0, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 711
    iput-object v2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 712
    iput v1, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileState:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "tile(%s, %s, %s / %s)"

    const/4 v1, 0x4

    .line 749
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v3, v3, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    div-int/2addr v2, v3

    .line 750
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    iget-object v3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v3, v3, Lcom/android/photos/views/TiledImageRenderer;->mTileSize:I

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v2, v2, Lcom/android/photos/views/TiledImageRenderer;->mLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->this$0:Lcom/android/photos/views/TiledImageRenderer;

    iget v2, v2, Lcom/android/photos/views/TiledImageRenderer;->mLevelCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 749
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(III)V
    .locals 0

    .line 731
    iput p1, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mX:I

    .line 732
    iput p2, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mY:I

    .line 733
    iput p3, p0, Lcom/android/photos/views/TiledImageRenderer$Tile;->mTileLevel:I

    .line 734
    invoke-virtual {p0}, Lcom/android/photos/views/TiledImageRenderer$Tile;->invalidateContent()V

    return-void
.end method
