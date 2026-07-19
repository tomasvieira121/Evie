.class public Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BlackRoundedFrameLayout.java"


# instance fields
.field mRadius:[I

.field mRoundedCornerDrawables:[Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x4

    .line 23
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout;->mRadius:[I

    .line 24
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout;->mRoundedCornerDrawables:[Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout;->initializeFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private initializeFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 53
    sget-object v0, Lis/shortcut/R$styleable;->BlackRoundedFrameLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 54
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/4 v1, 0x0

    .line 55
    :goto_0
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout;->mRadius:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 56
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    aget v0, v2, p2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    aput v0, v2, p2

    .line 60
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout;->mRadius:[I

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    aput v3, v0, v2

    .line 61
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout;->mRadius:[I

    const/4 v3, 0x2

    aget v5, v0, v3

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    aput v5, v0, v3

    .line 62
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout;->mRadius:[I

    aget v3, v0, v1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    aput v2, v0, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 65
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout;->mRoundedCornerDrawables:[Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable;

    new-instance v2, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout;->mRadius:[I

    aget v3, v3, v0

    invoke-static {}, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->values()[Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-direct {v2, v3, v5}, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable;-><init>(ILcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;)V

    aput-object v2, v1, v0

    .line 66
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout;->mRoundedCornerDrawables:[Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout;->mRadius:[I

    aget v3, v2, v0

    aget v2, v2, v0

    invoke-virtual {v1, p2, p2, v3, v2}, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable;->setBounds(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 7

    .line 75
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDrawForeground(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 79
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout;->mRadius:[I

    aget v3, v3, v1

    .line 80
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout;->mRoundedCornerDrawables:[Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable;

    aget-object v4, v4, v1

    .line 81
    invoke-static {}, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->values()[Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    move-result-object v5

    aget-object v5, v5, v1

    .line 86
    sget-object v6, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout$1;->$SwitchMap$com$voxel$simplesearchlauncher$drawable$RoundedCornerDrawable$CornerType:[I

    invoke-virtual {v5}, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 97
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v0

    int-to-float v6, v5

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    int-to-float v3, v5

    goto :goto_2

    .line 94
    :pswitch_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    int-to-float v3, v5

    goto :goto_2

    .line 91
    :pswitch_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v0

    int-to-float v3, v5

    move v6, v3

    const/4 v3, 0x0

    goto :goto_2

    :goto_1
    :pswitch_3
    const/4 v3, 0x0

    .line 101
    :goto_2
    invoke-virtual {p1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
