.class public Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;
.super Ljava/lang/Object;
.source "SpringyMotionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;,
        Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentFactor:F

.field protected mDensity:F

.field private mDirection:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;

.field private mFactorDistance:I

.field protected mFlingThresholdVelocity:I

.field private mIsTouching:Z

.field protected mMinFlingVelocity:I

.field protected mMinSnapVelocity:I

.field private mMotionFactor:F

.field private mOnFactorChangeListener:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;

.field private mPreviousCoord:F

.field private mSpring:Lcom/facebook/rebound/Spring;

.field private mSpringListener:Lcom/facebook/rebound/SpringListener;

.field private mSpringSystem:Lcom/facebook/rebound/SpringSystem;

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mPreviousCoord:F

    if-eqz p1, :cond_0

    .line 75
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mContext:Landroid/content/Context;

    .line 76
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mDensity:F

    const/high16 p1, 0x43fa0000    # 500.0f

    .line 77
    iget v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mDensity:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mFlingThresholdVelocity:I

    const/high16 p1, 0x437a0000    # 250.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 78
    iput p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mMinFlingVelocity:I

    const p1, 0x44bb8000    # 1500.0f

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 79
    iput p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mMinSnapVelocity:I

    .line 81
    sget-object p1, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;->HORIZONTAL:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mDirection:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mFactorDistance:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 84
    iput p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mMotionFactor:F

    .line 86
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 87
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {p1}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    .line 88
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 90
    new-instance p1, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$1;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$1;-><init>(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpringListener:Lcom/facebook/rebound/SpringListener;

    .line 115
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpringListener:Lcom/facebook/rebound/SpringListener;

    invoke-virtual {p1, v0}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mIsTouching:Z

    return p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;ZZZZ)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->notifyListenerBeginIfNeeded(ZZZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;F)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setFactorBySpring(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;ZZZZ)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->notifyListenerEndIfNeeded(ZZZZ)V

    return-void
.end method

.method private calculateEndValueWithVelocity(F)Ljava/lang/Float;
    .locals 2

    .line 355
    iget v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mFlingThresholdVelocity:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 356
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_0
    neg-float p1, p1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 358
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private calculateNewFactor(F)F
    .locals 5

    .line 327
    iget v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mCurrentFactor:F

    .line 328
    iget v1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mMotionFactor:F

    mul-float p1, p1, v1

    iget v1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mFactorDistance:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    add-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    cmpl-float v4, p1, v3

    if-lez v4, :cond_0

    .line 331
    invoke-direct {p0, v1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->calculateOvershootFactor(F)F

    move-result v2

    goto :goto_0

    :cond_0
    cmpg-float v4, v1, v3

    if-gez v4, :cond_1

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 333
    invoke-direct {p0, v1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->calculateOvershootFactor(F)F

    move-result v2

    :cond_1
    :goto_0
    div-float/2addr p1, v2

    add-float/2addr p1, v0

    return p1
.end method

.method private calculateOvershootFactor(F)F
    .locals 3

    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    mul-float v1, p1, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 348
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr p1, v1

    mul-float v1, p1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method private getRelevantCoordinateFromEvent(Landroid/view/MotionEvent;)F
    .locals 2

    .line 156
    sget-object v0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$2;->$SwitchMap$com$voxel$simplesearchlauncher$touch$SpringyMotionTracker$Direction:[I

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mDirection:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 162
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unhandled direction type!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1

    .line 158
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRelevantVelocityFromTracker(Landroid/view/VelocityTracker;)F
    .locals 2

    .line 167
    sget-object v0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$2;->$SwitchMap$com$voxel$simplesearchlauncher$touch$SpringyMotionTracker$Direction:[I

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mDirection:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 173
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unhandled direction type!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    return p1

    .line 169
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyListenerBeginIfNeeded(ZZZZ)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mOnFactorChangeListener:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    .line 271
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mOnFactorChangeListener:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;->onFactorBeginChanging()V

    :cond_0
    return-void
.end method

.method private notifyListenerEndIfNeeded(ZZZZ)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mOnFactorChangeListener:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    .line 287
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mOnFactorChangeListener:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;->onFactorEndChanging()V

    :cond_0
    return-void
.end method

.method private setFactorBySpring(F)V
    .locals 1

    .line 239
    iput p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mCurrentFactor:F

    .line 240
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mOnFactorChangeListener:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;

    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v0, p1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;->onFactorChanged(F)V

    :cond_0
    return-void
.end method

.method private updateSpringEndValue(D)V
    .locals 3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    .line 319
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_0

    .line 321
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentFactor()F
    .locals 1

    .line 120
    iget v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mCurrentFactor:F

    return v0
.end method

.method public getEndValueIfAvailable()Ljava/lang/Float;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFactorDistance()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mFactorDistance:I

    return v0
.end method

.method public sendMotionEvent(Landroid/view/MotionEvent;)V
    .locals 8

    .line 178
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->getRelevantCoordinateFromEvent(Landroid/view/MotionEvent;)F

    move-result v0

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v5, :cond_3

    .line 187
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->wasAtRest()Z

    move-result v1

    xor-int/2addr v1, v5

    .line 188
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v2}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 191
    iget-boolean v2, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mIsTouching:Z

    .line 192
    iput-boolean v5, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mIsTouching:Z

    .line 194
    iget-boolean v5, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mIsTouching:Z

    invoke-direct {p0, v2, v5, v1, v4}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->notifyListenerBeginIfNeeded(ZZZZ)V

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mPreviousCoord:F

    cmpl-float v1, p1, v3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sub-float p1, v0, p1

    .line 201
    iput v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mPreviousCoord:F

    .line 202
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->calculateNewFactor(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setFactor(F)V

    goto :goto_2

    .line 198
    :cond_2
    :goto_0
    iput v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mPreviousCoord:F

    goto :goto_2

    .line 206
    :cond_3
    iput v3, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mPreviousCoord:F

    .line 208
    iget p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mCurrentFactor:F

    .line 209
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 211
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->getRelevantVelocityFromTracker(Landroid/view/VelocityTracker;)F

    move-result v0

    .line 212
    iget v1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mMotionFactor:F

    mul-float v1, v1, v0

    iget v2, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mFactorDistance:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->calculateOvershootFactor(F)F

    move-result v2

    div-float/2addr v1, v2

    .line 213
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    float-to-double v6, v1

    invoke-virtual {v2, v6, v7}, Lcom/facebook/rebound/Spring;->setVelocity(D)Lcom/facebook/rebound/Spring;

    .line 215
    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->calculateEndValueWithVelocity(F)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 218
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->setEndValue(F)V

    goto :goto_1

    :cond_4
    float-to-double v0, p1

    .line 220
    invoke-direct {p0, v0, v1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->updateSpringEndValue(D)V

    .line 223
    :goto_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2, v4}, Lcom/facebook/rebound/Spring;->setCurrentValue(DZ)Lcom/facebook/rebound/Spring;

    .line 225
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->wasAtRest()Z

    move-result p1

    xor-int/2addr p1, v5

    .line 226
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v0

    xor-int/2addr v0, v5

    .line 228
    iget-boolean v1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mIsTouching:Z

    .line 229
    iput-boolean v4, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mIsTouching:Z

    .line 231
    iget-boolean v2, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mIsTouching:Z

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->notifyListenerEndIfNeeded(ZZZZ)V

    .line 233
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_2
    return-void
.end method

.method public setDirection(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 135
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mDirection:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$Direction;

    return-void

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "direction cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEndValue(F)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 255
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    iget v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mCurrentFactor:F

    float-to-double v0, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(DZ)Lcom/facebook/rebound/Spring;

    return-void
.end method

.method public setFactor(F)V
    .locals 1

    .line 246
    iput p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mCurrentFactor:F

    .line 247
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 248
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mOnFactorChangeListener:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v0, p1}, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;->onFactorChanged(F)V

    :cond_0
    return-void
.end method

.method public setFactorDistance(I)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mFactorDistance:I

    return-void
.end method

.method public setOnFactorChangeListener(Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mOnFactorChangeListener:Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker$OnFactorChangeListener;

    return-void
.end method

.method public setSpringConfig(Lcom/facebook/rebound/SpringConfig;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/touch/SpringyMotionTracker;->mSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, p1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    return-void
.end method
