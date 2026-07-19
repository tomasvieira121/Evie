.class public Lcom/voxel/simplesearchlauncher/view/GridLineController;
.super Ljava/lang/Object;
.source "GridLineController.java"


# instance fields
.field private mGridLineAlpha:I

.field private mGridLineAnimator:Landroid/animation/ValueAnimator;

.field private mGridLineColor:I

.field private mGridLineContainer:Landroid/widget/FrameLayout;

.field private mGridLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLines:Ljava/util/List;

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAlpha:I

    .line 32
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/-$$Lambda$GridLineController$Tl4iATMQPJesYZDJq-FN_uow6F0;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/view/-$$Lambda$GridLineController$Tl4iATMQPJesYZDJq-FN_uow6F0;-><init>(Lcom/voxel/simplesearchlauncher/view/GridLineController;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 42
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineContainer:Landroid/widget/FrameLayout;

    .line 43
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06008c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineColor:I

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/view/GridLineController;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 34
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAlpha:I

    .line 35
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 37
    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hideGridLines()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    .line 61
    new-array v0, v0, [I

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAlpha:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAnimator:Landroid/animation/ValueAnimator;

    .line 62
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 63
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public showGridLines()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    .line 51
    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAlpha:I

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xff

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAnimator:Landroid/animation/ValueAnimator;

    .line 52
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public updateGridLines(II)V
    .locals 11

    .line 69
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 72
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-int/2addr v1, p2

    int-to-float v1, v1

    .line 75
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    div-int/2addr v2, p1

    int-to-float v2, v2

    .line 77
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    .line 78
    invoke-static {v4, v3}, Lcom/voxel/launcher3/DynamicGrid;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    const/4 v6, -0x1

    if-ge v5, p1, :cond_0

    int-to-float v7, v5

    mul-float v7, v7, v2

    .line 83
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 84
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    iget v10, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineColor:I

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 86
    iget v10, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAlpha:I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 87
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v6, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 88
    invoke-virtual {v8, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    int-to-float v6, v7

    .line 90
    invoke-virtual {v8, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 92
    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLines:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 96
    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineColor:I

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 97
    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAlpha:I

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 98
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x30

    .line 100
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 101
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLines:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 108
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineColor:I

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 109
    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAlpha:I

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 110
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x50

    .line 112
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 113
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLines:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_1
    if-ge v4, p2, :cond_1

    int-to-float p1, v4

    mul-float p1, p1, v1

    .line 121
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 122
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    iget v7, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineColor:I

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 124
    iget v7, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAlpha:I

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 125
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v3, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 126
    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    int-to-float p1, p1

    .line 128
    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 129
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLines:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 134
    :cond_1
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget p2, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineColor:I

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 135
    iget p2, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAlpha:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 136
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    .line 138
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 139
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLines:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 146
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget p2, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineColor:I

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 147
    iget p2, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineAlpha:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 148
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 149
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x5

    .line 150
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 151
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLines:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/GridLineController;->mGridLineContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
