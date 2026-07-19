.class public Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;
.super Lcom/voxel/launcher3/graphics/DragPreviewProvider;
.source "ShortcutDragPreviewProvider.java"


# instance fields
.field private final mPositionShift:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    .line 41
    iput-object p2, p0, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;->mPositionShift:Landroid/graphics/Point;

    return-void
.end method

.method private drawScaledPreview(Landroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    .line 65
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/voxel/launcher3/DeviceProfile;->unscaledIconSizePx:I

    add-int/lit8 v3, v2, 0x2

    .line 67
    invoke-static {v3, v3, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 74
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v2, v2

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 76
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-object p2
.end method


# virtual methods
.method public createDragBitmap(Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 2

    .line 56
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;->drawScaledPreview(Landroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public createDragOutline(Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 2

    .line 46
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, p1, v0}, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;->drawScaledPreview(Landroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/voxel/launcher3/HolographicOutlineHelper;->obtain(Landroid/content/Context;)Lcom/voxel/launcher3/HolographicOutlineHelper;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v0, p1}, Lcom/voxel/launcher3/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getScaleAndPosition(Landroid/graphics/Bitmap;[I)F
    .locals 7

    .line 84
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/voxel/launcher3/Launcher;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 86
    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0, v2, p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v0

    .line 88
    iget-object v2, p0, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    .line 89
    iget-object v3, p0, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int v2, v3, v2

    :cond_0
    const/4 v3, 0x0

    .line 93
    aget v4, p2, v3

    int-to-float v2, v2

    mul-float v2, v2, v0

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v1, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    iget-object v5, p0, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;->mPositionShift:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v4, v2

    aput v4, p2, v3

    const/4 v2, 0x1

    .line 95
    aget v3, p2, v2

    iget-object v4, p0, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v0, v0, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    div-float/2addr v0, v6

    iget-object p1, p0, Lcom/voxel/launcher3/shortcuts/ShortcutDragPreviewProvider;->mPositionShift:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v3, p1

    aput v3, p2, v2

    .line 97
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/voxel/launcher3/DeviceProfile;->unscaledIconSizePx:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    return v1
.end method
