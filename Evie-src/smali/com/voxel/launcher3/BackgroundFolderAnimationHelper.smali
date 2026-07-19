.class public Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;
.super Ljava/lang/Object;
.source "BackgroundFolderAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final TAG:Ljava/lang/String; = "BackgroundFolderAnimationHelper"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mListener:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;

.field private mValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x3eb33333    # 0.35f

    const v1, 0x3f451eb8    # 0.77f

    const v2, 0x3e428f5c    # 0.19f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 23
    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    iput v0, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mValue:F

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;)Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mListener:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private addListeners(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 88
    new-instance v0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$1;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$1;-><init>(Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$BackgroundFolderAnimationHelper$rPaBGT_iku2OWndHlGRaNPRgNqU;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/-$$Lambda$BackgroundFolderAnimationHelper$rPaBGT_iku2OWndHlGRaNPRgNqU;-><init>(Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private animate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 120
    sget-object v0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "animate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mAnimator:Landroid/animation/ValueAnimator;

    .line 123
    invoke-static {}, Lcom/voxel/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 124
    iget-object v0, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 125
    iget-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static synthetic lambda$addListeners$0(Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 114
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mValue:F

    .line 115
    iget-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mListener:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;->onAnimationUpdate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateCloseFolder()V
    .locals 3

    .line 73
    sget-object v0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "animateCloseFolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x2

    .line 79
    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->getAnimatedValue()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1c2

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 81
    sget-object v1, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->addListeners(Landroid/animation/ValueAnimator;)V

    .line 84
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->animate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public animateOpenFolder()V
    .locals 3

    .line 58
    sget-object v0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "animateOpenFolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x2

    .line 64
    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->getAnimatedValue()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x3faa3d71    # 1.33f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1c2

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 66
    sget-object v1, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->addListeners(Landroid/animation/ValueAnimator;)V

    .line 69
    invoke-direct {p0, v0}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->animate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public getAnimatedRatio()F
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->getAnimatedValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const v2, 0x3ea8f5c4    # 0.33000004f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    return v1
.end method

.method public getAnimatedValue()F
    .locals 1

    .line 37
    iget v0, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mValue:F

    return v0
.end method

.method public setAnimatedValue(F)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mValue:F

    .line 42
    iget-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mAnimator:Landroid/animation/ValueAnimator;

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mListener:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;

    invoke-interface {p1}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;->onAnimationUpdate()V

    .line 47
    iget-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mListener:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;

    invoke-interface {p1}, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;->onAnimationEnd()V

    return-void
.end method

.method public setListener(Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/voxel/launcher3/BackgroundFolderAnimationHelper;->mListener:Lcom/voxel/launcher3/BackgroundFolderAnimationHelper$AnimationListener;

    return-void
.end method
