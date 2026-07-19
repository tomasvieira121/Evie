.class public Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;
.super Landroid/widget/FrameLayout;
.source "IndicatorContainer.java"

# interfaces
.implements Lcom/voxel/launcher3/PagedView$PageInteractionListener;
.implements Lcom/voxel/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field mAllAppsAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field mAllAppsIndicator:Landroid/widget/ImageView;

.field mAllAppsUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mCurrentAllAppsAnimator:Landroid/animation/ValueAnimator;

.field private mDragging:Z

.field mHandler:Landroid/os/Handler;

.field private mHideRunnable:Ljava/lang/Runnable;

.field mPageIndicator:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer$1;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer$1;-><init>(Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mAllAppsUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 42
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer$2;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer$2;-><init>(Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mAllAppsAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 66
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/launcher/-$$Lambda$IndicatorContainer$Dp3HMK5v5ZHmDJ3-WbBfdIeFymk;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/view/launcher/-$$Lambda$IndicatorContainer$Dp3HMK5v5ZHmDJ3-WbBfdIeFymk;-><init>(Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private hidePageIndicator()V
    .locals 3

    .line 150
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mDragging:Z

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private hidePageIndicatorImpl()V
    .locals 5

    .line 159
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 160
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mPageIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 161
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mPageIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 162
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result v0

    .line 163
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mCurrentAllAppsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v3, 0x2

    .line 167
    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    const/16 v4, 0xff

    aput v4, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mCurrentAllAppsAnimator:Landroid/animation/ValueAnimator;

    .line 168
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mCurrentAllAppsAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mAllAppsUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 169
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mCurrentAllAppsAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mAllAppsAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mCurrentAllAppsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 171
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mCurrentAllAppsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->hidePageIndicatorImpl()V

    return-void
.end method

.method private showPageIndicator()V
    .locals 5

    .line 133
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 134
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mPageIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 135
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mPageIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 136
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mAllAppsIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result v0

    .line 137
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mCurrentAllAppsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v3, 0x2

    .line 141
    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v4, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mCurrentAllAppsAnimator:Landroid/animation/ValueAnimator;

    .line 142
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mCurrentAllAppsAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mAllAppsUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 143
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mCurrentAllAppsAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mAllAppsAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 144
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mCurrentAllAppsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 145
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mCurrentAllAppsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getAllAppsIndicator()Landroid/widget/ImageView;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mAllAppsIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPageIndicator()Landroid/view/View;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mPageIndicator:Landroid/view/View;

    return-object v0
.end method

.method public onDragEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mDragging:Z

    .line 184
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->hidePageIndicator()V

    return-void
.end method

.method public onDragStart(Lcom/voxel/launcher3/DropTarget$DragObject;Lcom/voxel/launcher3/dragndrop/DragOptions;)V
    .locals 0

    const/4 p1, 0x1

    .line 176
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mDragging:Z

    .line 177
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->showPageIndicator()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 87
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a01eb

    .line 88
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mPageIndicator:Landroid/view/View;

    const v0, 0x7f0a003b

    .line 89
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mAllAppsIndicator:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mPageIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onPageBeginMoving()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->showPageIndicator()V

    return-void
.end method

.method public onPageEndMoving()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->hidePageIndicator()V

    return-void
.end method

.method public onScrollInteractionBegin()V
    .locals 0

    return-void
.end method

.method public onScrollInteractionEnd()V
    .locals 0

    return-void
.end method

.method public setAllAppsIndicator(Landroid/widget/ImageView;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mAllAppsIndicator:Landroid/widget/ImageView;

    return-void
.end method

.method public setPageIndicator(Landroid/view/View;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/launcher/IndicatorContainer;->mPageIndicator:Landroid/view/View;

    return-void
.end method
