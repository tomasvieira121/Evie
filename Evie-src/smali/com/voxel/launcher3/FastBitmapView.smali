.class public Lcom/voxel/launcher3/FastBitmapView;
.super Landroid/view/View;
.source "FastBitmapView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/voxel/launcher3/FastBitmapView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/voxel/launcher3/FastBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/voxel/launcher3/FastBitmapView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/voxel/launcher3/FastBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/voxel/launcher3/FastBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v1, v0, v2}, Lcom/voxel/launcher3/FastBitmapView;->invalidate(IIII)V

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/voxel/launcher3/FastBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    .line 44
    iget-object p1, p0, Lcom/voxel/launcher3/FastBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/voxel/launcher3/FastBitmapView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/voxel/launcher3/FastBitmapView;->invalidate(IIII)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
