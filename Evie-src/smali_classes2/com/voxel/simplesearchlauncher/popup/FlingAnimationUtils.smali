.class public Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;
.super Ljava/lang/Object;
.source "FlingAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;,
        Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$VelocityInterpolator;,
        Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$InterpolatorInterpolator;
    }
.end annotation


# instance fields
.field private mAnimatorProperties:Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;

.field private mCachedStartGradient:F

.field private mCachedVelocityFactor:F

.field private mHighVelocityPxPerSecond:F

.field private mLinearOutSlowInX2:F

.field private mMaxLengthSeconds:F

.field private mMinVelocityPxPerSecond:F

.field private final mSpeedUpFactor:F

.field private final mY2:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;-><init>(Landroid/content/Context;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 6

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;-><init>(Landroid/content/Context;FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFFF)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;-><init>(Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$1;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mAnimatorProperties:Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;

    const/high16 v0, -0x40800000    # -1.0f

    .line 51
    iput v0, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mCachedStartGradient:F

    .line 52
    iput v0, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mCachedVelocityFactor:F

    .line 79
    iput p2, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mMaxLengthSeconds:F

    .line 80
    iput p3, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mSpeedUpFactor:F

    const/4 p2, 0x0

    cmpg-float p2, p4, p2

    if-gez p2, :cond_0

    const p2, 0x3eb33333    # 0.35f

    const p3, 0x3f2e147b    # 0.68f

    .line 82
    iget p4, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mSpeedUpFactor:F

    invoke-static {p2, p3, p4}, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->interpolate(FFF)F

    move-result p2

    iput p2, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mLinearOutSlowInX2:F

    goto :goto_0

    .line 86
    :cond_0
    iput p4, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mLinearOutSlowInX2:F

    .line 88
    :goto_0
    iput p5, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mY2:F

    const/high16 p2, 0x437a0000    # 250.0f

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    mul-float p3, p3, p2

    iput p3, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    const p2, 0x453b8000    # 3000.0f

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p2

    iput p1, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    return-void
.end method

.method private calculateLinearOutFasterInY2(F)F
    .locals 2

    .line 292
    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 294
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sub-float/2addr v0, p1

    const v1, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method private getDismissingProperties(FFFF)Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;
    .locals 6

    .line 253
    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mMaxLengthSeconds:F

    float-to-double v0, v0

    sub-float/2addr p2, p1

    .line 254
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p4

    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p1, v0

    .line 255
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 256
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 257
    invoke-direct {p0, p3}, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->calculateLinearOutFasterInY2(F)F

    move-result p4

    const/high16 v0, 0x3f000000    # 0.5f

    div-float v1, p4, v0

    const/4 v2, 0x0

    .line 260
    invoke-static {v2, v2, v0, p4}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p4

    mul-float v1, v1, p2

    div-float v0, v1, p3

    cmpg-float v1, v0, p1

    if-gtz v1, :cond_0

    .line 263
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mAnimatorProperties:Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;

    iput-object p4, p1, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    move p1, v0

    goto :goto_0

    .line 264
    :cond_0
    iget v0, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_1

    .line 269
    new-instance v0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$VelocityInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, p2, v1}, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFLcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$1;)V

    .line 271
    new-instance p2, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$InterpolatorInterpolator;

    sget-object p3, Lcom/voxel/simplesearchlauncher/popup/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p2, v0, p4, p3}, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 273
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mAnimatorProperties:Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;

    iput-object p2, p3, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 278
    :cond_1
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mAnimatorProperties:Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;

    sget-object p3, Lcom/voxel/simplesearchlauncher/popup/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object p3, p2, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    .line 280
    :goto_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->mAnimatorProperties:Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;

    const/high16 p3, 0x447a0000    # 1000.0f

    mul-float p1, p1, p3

    float-to-long p3, p1

    iput-wide p3, p2, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;->duration:J

    return-object p2
.end method

.method private static interpolate(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float p0, p0, v0

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public applyDismissing(Landroid/animation/Animator;FFFF)V
    .locals 0

    .line 225
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils;->getDismissingProperties(FFFF)Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;

    move-result-object p2

    .line 227
    iget-wide p3, p2, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 228
    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/popup/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method
