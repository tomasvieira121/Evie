.class public Lcom/voxel/launcher3/InterruptibleInOutAnimator;
.super Ljava/lang/Object;
.source "InterruptibleInOutAnimator.java"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mDirection:I

.field private mFirstRun:Z

.field private mOriginalDuration:J

.field private mOriginalFromValue:F

.field private mOriginalToValue:F

.field private mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;JFF)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mFirstRun:Z

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mDirection:I

    const/4 v2, 0x2

    .line 49
    new-array v2, v2, [F

    aput p4, v2, v1

    aput p5, v2, v0

    invoke-static {p1, v2}, Lcom/voxel/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 50
    iput-wide p2, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mOriginalDuration:J

    .line 51
    iput p4, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mOriginalFromValue:F

    .line 52
    iput p5, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mOriginalToValue:F

    .line 54
    iget-object p1, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/voxel/launcher3/InterruptibleInOutAnimator$1;

    invoke-direct {p2, p0}, Lcom/voxel/launcher3/InterruptibleInOutAnimator$1;-><init>(Lcom/voxel/launcher3/InterruptibleInOutAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/voxel/launcher3/InterruptibleInOutAnimator;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mDirection:I

    return p1
.end method

.method private animate(I)V
    .locals 9

    .line 63
    iget-object v0, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 64
    iget v3, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mOriginalToValue:F

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mOriginalFromValue:F

    .line 65
    :goto_0
    iget-boolean v4, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mFirstRun:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mOriginalFromValue:F

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 66
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 69
    :goto_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->cancel()V

    .line 73
    iput p1, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mDirection:I

    .line 76
    iget-wide v5, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mOriginalDuration:J

    sub-long v0, v5, v0

    .line 77
    iget-object p1, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 79
    iget-object p1, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v4, v0, v1

    aput v3, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 80
    iget-object p1, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 81
    iput-boolean v1, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mFirstRun:Z

    return-void
.end method


# virtual methods
.method public animateIn()V
    .locals 1

    const/4 v0, 0x1

    .line 107
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->animate(I)V

    return-void
.end method

.method public animateOut()V
    .locals 1

    const/4 v0, 0x2

    .line 117
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->animate(I)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mDirection:I

    return-void
.end method

.method public getAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    return-void
.end method
