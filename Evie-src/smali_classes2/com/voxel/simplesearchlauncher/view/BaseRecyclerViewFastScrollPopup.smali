.class public Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;
.super Ljava/lang/Object;
.source "BaseRecyclerViewFastScrollPopup.java"


# instance fields
.field private mAlpha:F

.field private mAlphaAnimator:Landroid/animation/Animator;

.field private mBg:Landroid/graphics/drawable/Drawable;

.field private mBgBounds:Landroid/graphics/Rect;

.field private mBgOriginalSize:I

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mRes:Landroid/content/res/Resources;

.field private mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

.field private mSectionName:Ljava/lang/String;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;Landroid/content/res/Resources;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    .line 57
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mRes:Landroid/content/res/Resources;

    .line 58
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    const p1, 0x7f0700a7

    .line 59
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    const p1, 0x7f08008d

    .line 60
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    .line 61
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    .line 63
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const v0, 0x7f0700a8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public animateVisibility(Z)V
    .locals 4

    .line 118
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mVisible:Z

    if-eq v0, p1, :cond_3

    .line 119
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mVisible:Z

    .line 120
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const-string v0, "alpha"

    const/4 v1, 0x1

    .line 123
    new-array v1, v1, [F

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    .line 124
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_2

    const-wide/16 v1, 0xc8

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x96

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 125
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mAlphaAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 144
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 148
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 149
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 150
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 151
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 152
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 154
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mSectionName:Ljava/lang/String;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    .line 155
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    .line 154
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 157
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 136
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .line 162
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mSectionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    .line 131
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mAlpha:F

    .line 132
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSectionName(Ljava/lang/String;)V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mSectionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mSectionName:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 76
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method

.method public updateFastScrollerBounds(I)Landroid/graphics/Rect;
    .locals 6

    .line 85
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 87
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getMaxScrollbarWidth()I

    move-result v0

    .line 90
    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 91
    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgOriginalSize:I

    .line 92
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 93
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mRes:Landroid/content/res/Resources;

    invoke-static {v3}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    invoke-virtual {v4}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getMaxScrollbarWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 95
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    invoke-virtual {v4}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getBackgroundPadding()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    .line 98
    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getMaxScrollbarWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 99
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    const/high16 v3, 0x3fc00000    # 1.5f

    int-to-float v4, v2

    mul-float v4, v4, v3

    float-to-int v3, v4

    sub-int/2addr p1, v3

    iput p1, v1, Landroid/graphics/Rect;->top:I

    .line 102
    iget p1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mRv:Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;

    .line 103
    invoke-virtual {v3}, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 102
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Landroid/graphics/Rect;->top:I

    .line 104
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 110
    :goto_1
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mBgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 111
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BaseRecyclerViewFastScrollPopup;->mInvalidateRect:Landroid/graphics/Rect;

    return-object p1
.end method
