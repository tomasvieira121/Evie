.class public Lcom/voxel/launcher3/graphics/DragPreviewProvider;
.super Ljava/lang/Object;
.source "DragPreviewProvider.java"


# instance fields
.field public generatedDragOutline:Landroid/graphics/Bitmap;

.field private final mTempRect:Landroid/graphics/Rect;

.field protected final mView:Landroid/view/View;

.field private final outlineColor:I

.field public final previewPadding:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    .line 54
    iput-object p1, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/voxel/launcher3/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 59
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    goto :goto_0

    .line 61
    :cond_0
    iput v2, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    .line 64
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600db

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->outlineColor:I

    return-void
.end method

.method private drawDragView(Landroid/graphics/Canvas;)V
    .locals 6

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 72
    iget-object v0, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 73
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/voxel/launcher3/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    .line 75
    iget v3, v1, Landroid/graphics/Rect;->left:I

    rsub-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mTempRect:Landroid/graphics/Rect;

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 83
    iget-object v0, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 84
    iget-object v3, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v3, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v5, v3, Lcom/voxel/launcher3/FolderIcon;

    if-eqz v5, :cond_1

    .line 88
    check-cast v3, Lcom/voxel/launcher3/FolderIcon;

    invoke-virtual {v3}, Lcom/voxel/launcher3/FolderIcon;->getTextVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    iget-object v3, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v3, Lcom/voxel/launcher3/FolderIcon;

    invoke-virtual {v3, v4}, Lcom/voxel/launcher3/FolderIcon;->setTextVisible(Z)V

    const/4 v4, 0x1

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    iget-object v5, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    .line 94
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    .line 93
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 96
    iget-object v1, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 98
    iget-object v1, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_2

    .line 102
    iget-object v0, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    check-cast v0, Lcom/voxel/launcher3/FolderIcon;

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/FolderIcon;->setTextVisible(Z)V

    .line 105
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected static getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 4

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 157
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 158
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    .line 159
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 163
    :goto_1
    instance-of v1, p0, Lcom/voxel/launcher3/PreloadIconDrawable;

    if-eqz v1, :cond_2

    .line 164
    check-cast p0, Lcom/voxel/launcher3/PreloadIconDrawable;

    invoke-virtual {p0}, Lcom/voxel/launcher3/PreloadIconDrawable;->getOutset()I

    move-result p0

    neg-int p0, p0

    .line 165
    invoke-virtual {v0, p0, p0}, Landroid/graphics/Rect;->inset(II)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public createDragBitmap(Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 116
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/voxel/launcher3/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    .line 119
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 118
    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    .line 122
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 121
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->drawDragView(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public createDragOutline(Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    .line 146
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 145
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->drawDragView(Landroid/graphics/Canvas;)V

    .line 149
    iget-object v1, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/voxel/launcher3/HolographicOutlineHelper;->obtain(Landroid/content/Context;)Lcom/voxel/launcher3/HolographicOutlineHelper;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v0, p1}, Lcom/voxel/launcher3/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public final generateDragOutline(Landroid/graphics/Canvas;)V
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->createDragOutline(Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->generatedDragOutline:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getScaleAndPosition(Landroid/graphics/Bitmap;[I)F
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/voxel/launcher3/Launcher;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Lcom/voxel/launcher3/dragndrop/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v0

    const/4 v1, 0x0

    .line 173
    aget v2, p2, v1

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, p2, v1

    const/4 v1, 0x1

    .line 174
    aget v2, p2, v1

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float v3, v3, p1

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget p1, p0, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p2, v1

    return v0
.end method
