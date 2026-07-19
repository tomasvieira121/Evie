.class public Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;
.super Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;
.source "PullDownRecyclerView.java"


# instance fields
.field private mCurrentFactor:F

.field private mPaddingBetweenElements:I

.field private mTopStackIndentationFunctor:Lcom/voxel/simplesearchlauncher/view/stack/StackIndentationFunctor;

.field private mTopStackPeekSize:I

.field private mTopStackSlowDownLength:I

.field private mTopStackTotalSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->initialize()V

    return-void
.end method

.method private applyCurrentFactor()V
    .locals 11

    .line 88
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getItemAnimator()Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getItemAnimator()Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->mCurrentFactor:F

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v4, v0, v2

    if-nez v4, :cond_2

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 96
    invoke-virtual {p0, v3}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 98
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 108
    :goto_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 109
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 111
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 112
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 113
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 122
    :goto_2
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_7

    .line 123
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 124
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 126
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_5

    .line 127
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 128
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    .line 129
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    .line 132
    :goto_3
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 134
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v0, v9, :cond_6

    add-int/2addr v5, v8

    goto :goto_4

    :cond_6
    add-int/2addr v5, v7

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    int-to-float v0, v5

    .line 143
    iget v5, p0, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->mCurrentFactor:F

    mul-float v0, v0, v5

    int-to-float v6, v6

    sub-float v5, v4, v5

    mul-float v6, v6, v5

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 144
    iget v5, p0, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->mCurrentFactor:F

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getChildCount()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    const/4 v6, 0x0

    .line 146
    :goto_5
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 147
    invoke-virtual {p0, v6}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    int-to-float v8, v6

    sub-float v8, v5, v8

    .line 153
    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    .line 162
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 164
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v8, v9

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 165
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    .line 167
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v8

    sub-float v8, v4, v8

    .line 169
    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    cmpg-float v8, v8, v2

    if-gtz v8, :cond_8

    .line 171
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 173
    :cond_8
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    return-void
.end method

.method private initialize()V
    .locals 3

    .line 48
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07025c

    .line 50
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->mTopStackPeekSize:I

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07025d

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->mTopStackSlowDownLength:I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->mPaddingBetweenElements:I

    .line 55
    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->updatePadding(Z)V

    return-void
.end method

.method private updatePadding(Z)V
    .locals 4

    .line 60
    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->mTopStackSlowDownLength:I

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->mPaddingBetweenElements:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->mTopStackPeekSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->mTopStackTotalSize:I

    .line 62
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/stack/PiecewiseLinearIndentationFunctor;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->mTopStackTotalSize:I

    sub-int/2addr v1, v0

    const/4 v2, 0x3

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {p1, v2, v0, v1, v3}, Lcom/voxel/simplesearchlauncher/view/stack/PiecewiseLinearIndentationFunctor;-><init>(IIIF)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->mTopStackIndentationFunctor:Lcom/voxel/simplesearchlauncher/view/stack/StackIndentationFunctor;

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 73
    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/voxel/simplesearchlauncher/view/NoItemClickRecyclerView;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->applyCurrentFactor()V

    return-void

    :catch_0
    move-exception p1

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failing adapter = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getAdapter()Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "adapter"

    invoke-static {p3, p2}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    throw p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->applyCurrentFactor()V

    return-void
.end method

.method public setCurrentFactor(F)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->mCurrentFactor:F

    .line 182
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getItemAnimator()Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->getItemAnimator()Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->invalidate()V

    .line 187
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/PullDownRecyclerView;->requestLayout()V

    return-void
.end method
