.class public Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "FastScrollRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$FastScrollAdapterDataObserver;
    }
.end annotation


# instance fields
.field private mAnimationEnterDirection:Z

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mCurrentOverlayAnimator:Landroid/animation/ValueAnimator;

.field mCurrentSection:Ljava/lang/String;

.field private mDidSetup:Z

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$FastScrollAdapterDataObserver;

.field mOverlayFactor:F

.field mScaledIndexHeight:F

.field mScaledIndexWidth:F

.field mSectionStartX:F

.field mSectionStartY:F

.field mSections:[Ljava/lang/String;

.field mShowLetter:Z

.field mTouchY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 103
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mDidSetup:Z

    .line 29
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mHandler:Landroid/os/Handler;

    .line 40
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mShowLetter:Z

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mOverlayFactor:F

    .line 46
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/-$$Lambda$FastScrollRecyclerView$icgmQUdUrGlNGZm_iCLBAHCccuI;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/view/-$$Lambda$FastScrollRecyclerView$icgmQUdUrGlNGZm_iCLBAHCccuI;-><init>(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 51
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$1;-><init>(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 73
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$FastScrollAdapterDataObserver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$FastScrollAdapterDataObserver;-><init>(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$1;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mObserver:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$FastScrollAdapterDataObserver;

    return-void
.end method

.method static synthetic access$002(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentOverlayAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$202(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mDidSetup:Z

    return p1
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->setupThings()V

    return-void
.end method

.method public static synthetic lambda$Cv7fHhJBU5wOQ0J3g7IsHhc497k(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->startExitOverlayAnimator()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 47
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mOverlayFactor:F

    .line 48
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->invalidate()V

    return-void
.end method

.method private setupThings()V
    .locals 5

    .line 128
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewInterface;

    invoke-interface {v0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewInterface;->getMapIndex()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 130
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 131
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSections:[Ljava/lang/String;

    .line 133
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSections:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aput-object v2, v3, v1

    move v1, v4

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41c80000    # 25.0f

    .line 137
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mScaledIndexWidth:F

    const/high16 v0, 0x41900000    # 18.0f

    .line 138
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mScaledIndexHeight:F

    .line 139
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mScaledIndexWidth:F

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSectionStartX:F

    .line 140
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mScaledIndexHeight:F

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSections:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSectionStartY:F

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mDidSetup:Z

    return-void
.end method

.method private startEnterOverlayAnimator()V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentOverlayAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentOverlayAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mAnimationEnterDirection:Z

    const/4 v1, 0x2

    .line 244
    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mOverlayFactor:F

    aput v3, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xaf

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 246
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentOverlayAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 247
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentOverlayAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentOverlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startExitOverlayAnimator()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentOverlayAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentOverlayAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mAnimationEnterDirection:Z

    const/4 v1, 0x2

    .line 258
    new-array v1, v1, [F

    iget v2, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mOverlayFactor:F

    aput v2, v1, v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xaf

    .line 259
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 260
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentOverlayAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 261
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentOverlayAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 262
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentOverlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public isNearIndexBar(FF)Z
    .locals 2

    .line 273
    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSectionStartX:F

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSectionStartY:F

    cmpg-float v0, p2, p1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mScaledIndexHeight:F

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSections:[Ljava/lang/String;

    array-length v1, v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    add-float/2addr p1, v0

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mDidSetup:Z

    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->setupThings()V

    .line 123
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->setupThings()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 161
    iput v1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mTouchY:F

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 197
    :pswitch_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mShowLetter:Z

    if-nez v0, :cond_0

    .line 198
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getPaddingBottom()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSectionStartY:F

    sub-float/2addr v1, p1

    .line 201
    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mScaledIndexHeight:F

    div-float/2addr v1, p1

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSections:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_2

    array-length p1, v0

    sub-int/2addr p1, v3

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSections:[Ljava/lang/String;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentSection:Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewInterface;

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewInterface;->getMapIndex()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentSection:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewInterface;

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewInterface;->getMapIndex()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentSection:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 211
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->stopScroll()V

    .line 212
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_4

    .line 213
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 215
    :cond_4
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 218
    :goto_1
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->invalidate()V

    goto/16 :goto_4

    .line 224
    :pswitch_1
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mShowLetter:Z

    if-nez v0, :cond_5

    .line 225
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 228
    :cond_5
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/voxel/simplesearchlauncher/view/-$$Lambda$FastScrollRecyclerView$Cv7fHhJBU5wOQ0J3g7IsHhc497k;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/view/-$$Lambda$FastScrollRecyclerView$Cv7fHhJBU5wOQ0J3g7IsHhc497k;-><init>(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    iput-boolean v4, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mShowLetter:Z

    .line 230
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->invalidate()V

    return v3

    .line 165
    :pswitch_2
    invoke-virtual {p0, v0, v1}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->isNearIndexBar(FF)Z

    move-result v0

    if-nez v0, :cond_6

    .line 167
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 169
    :cond_6
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 170
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->startEnterOverlayAnimator()V

    .line 173
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getPaddingBottom()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSectionStartY:F

    sub-float/2addr v1, p1

    .line 174
    iget p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mScaledIndexHeight:F

    div-float/2addr v1, p1

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    if-gez p1, :cond_7

    const/4 p1, 0x0

    .line 176
    :cond_7
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSections:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_8

    array-length p1, v0

    sub-int/2addr p1, v3

    .line 178
    :cond_8
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mSections:[Ljava/lang/String;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentSection:Ljava/lang/String;

    .line 179
    iput-boolean v3, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mShowLetter:Z

    .line 182
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewInterface;

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewInterface;->getMapIndex()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentSection:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 183
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewInterface;

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerViewInterface;->getMapIndex()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mCurrentSection:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    .line 185
    :goto_2
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->stopScroll()V

    .line 186
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_a

    .line 187
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_3

    .line 189
    :cond_a
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 191
    :goto_3
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->invalidate()V

    :goto_4
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mObserver:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$FastScrollAdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 150
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 152
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->mObserver:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$FastScrollAdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_1
    return-void
.end method
