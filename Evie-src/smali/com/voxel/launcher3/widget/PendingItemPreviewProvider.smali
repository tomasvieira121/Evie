.class public Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;
.super Lcom/voxel/launcher3/graphics/DragPreviewProvider;
.source "PendingItemPreviewProvider.java"


# instance fields
.field private final mAddInfo:Lcom/voxel/launcher3/PendingAddItemInfo;

.field private final mOutlineColor:I

.field private final mPreviewBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/voxel/launcher3/PendingAddItemInfo;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    .line 46
    iput-object p2, p0, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;->mAddInfo:Lcom/voxel/launcher3/PendingAddItemInfo;

    .line 47
    iput-object p3, p0, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600db

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;->mOutlineColor:I

    return-void
.end method


# virtual methods
.method public createDragOutline(Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 9

    .line 54
    iget-object v0, p0, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/voxel/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;->mAddInfo:Lcom/voxel/launcher3/PendingAddItemInfo;

    iget v1, v1, Lcom/voxel/launcher3/PendingAddItemInfo;->spanX:I

    iget-object v2, p0, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;->mAddInfo:Lcom/voxel/launcher3/PendingAddItemInfo;

    iget v2, v2, Lcom/voxel/launcher3/PendingAddItemInfo;->spanY:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/launcher3/Workspace;->estimateItemSize(IIZ)[I

    move-result-object v0

    .line 57
    aget v1, v0, v3

    const/4 v2, 0x1

    .line 58
    aget v0, v0, v2

    .line 59
    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 60
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v3, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    add-int/lit8 v6, v1, -0x2

    int-to-float v6, v6

    .line 63
    iget-object v7, p0, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-int/lit8 v7, v0, -0x2

    int-to-float v7, v7

    iget-object v8, p0, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 64
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 63
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 65
    iget-object v7, p0, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v6

    float-to-int v7, v7

    .line 66
    iget-object v8, p0, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v6, v6, v8

    float-to-int v6, v6

    .line 67
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v3, v3, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int/2addr v1, v7

    .line 70
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v8, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 72
    iget-object v0, p0, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;->mPreviewBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v5, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 75
    iget-object v0, p0, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;->mAddInfo:Lcom/voxel/launcher3/PendingAddItemInfo;

    instance-of v5, v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    if-eqz v5, :cond_1

    check-cast v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iget v0, v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->previewImage:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 77
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/voxel/launcher3/widget/PendingItemPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/HolographicOutlineHelper;->obtain(Landroid/content/Context;)Lcom/voxel/launcher3/HolographicOutlineHelper;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v4, p1, v2}, Lcom/voxel/launcher3/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Z)V

    .line 79
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v4
.end method
