.class public Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FirstFrameAnimatorHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private static sGlobalFrameCounter:J

.field private static sVisible:Z


# instance fields
.field private mAdjustedSecondFrameTime:Z

.field private mHandlingOnAnimationUpdate:Z

.field private mStartFrame:J

.field private mStartTime:J

.field private mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const-wide/16 v0, -0x1

    .line 40
    iput-wide v0, p0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mStartTime:J

    .line 49
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    .line 50
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const-wide/16 v0, -0x1

    .line 40
    iput-wide v0, p0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mStartTime:J

    .line 54
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    .line 55
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static synthetic access$008()J
    .locals 4

    .line 33
    sget-wide v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    return-wide v0
.end method

.method public static initializeDrawListener(Landroid/view/View;)V
    .locals 2

    .line 70
    sget-object v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 73
    :cond_0
    new-instance v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper$1;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper$1;-><init>()V

    sput-object v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    sget-object v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->sGlobalDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    const/4 p0, 0x1

    .line 85
    sput-boolean p0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->sVisible:Z

    return-void
.end method

.method public static setIsVisible(Z)V
    .locals 0

    .line 66
    sput-boolean p0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->sVisible:Z

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 60
    check-cast p1, Landroid/animation/ValueAnimator;

    .line 61
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 90
    iget-wide v4, v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 91
    sget-wide v4, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iput-wide v4, v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mStartFrame:J

    .line 92
    iput-wide v2, v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mStartTime:J

    .line 95
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    const/high16 v6, 0x3f800000    # 1.0f

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    const/4 v8, 0x1

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 98
    :goto_0
    iget-boolean v9, v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    if-nez v9, :cond_5

    sget-boolean v9, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->sVisible:Z

    if-eqz v9, :cond_5

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v9

    cmp-long v11, v4, v9

    if-gez v11, :cond_5

    if-nez v6, :cond_5

    .line 104
    iput-boolean v8, v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    .line 105
    sget-wide v9, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->sGlobalFrameCounter:J

    iget-wide v11, v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mStartFrame:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    const-wide/16 v13, 0x0

    cmp-long v6, v9, v13

    if-nez v6, :cond_2

    .line 109
    iget-wide v7, v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mStartTime:J

    add-long/2addr v7, v11

    cmp-long v15, v2, v7

    if-gez v15, :cond_2

    cmp-long v7, v4, v13

    if-lez v7, :cond_2

    .line 112
    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 113
    invoke-virtual {v1, v13, v14}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v7, 0x1

    cmp-long v13, v9, v7

    if-nez v13, :cond_3

    .line 117
    iget-wide v13, v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mStartTime:J

    add-long/2addr v11, v13

    cmp-long v15, v2, v11

    if-gez v15, :cond_3

    iget-boolean v11, v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    if-nez v11, :cond_3

    const-wide/16 v11, 0x10

    add-long/2addr v13, v11

    cmp-long v15, v2, v13

    if-lez v15, :cond_3

    cmp-long v2, v4, v11

    if-lez v2, :cond_3

    .line 121
    invoke-virtual {v1, v11, v12}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    const/4 v1, 0x1

    .line 122
    iput-boolean v1, v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mAdjustedSecondFrameTime:Z

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    cmp-long v2, v9, v7

    if-lez v2, :cond_4

    .line 125
    iget-object v2, v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mTarget:Landroid/view/View;

    new-instance v3, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper$2;

    invoke-direct {v3, v0, v1}, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper$2;-><init>(Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 133
    :goto_1
    iput-boolean v1, v0, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;->mHandlingOnAnimationUpdate:Z

    :cond_5
    return-void
.end method
