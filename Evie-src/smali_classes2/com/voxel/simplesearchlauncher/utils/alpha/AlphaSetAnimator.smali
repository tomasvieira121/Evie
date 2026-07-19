.class public Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;
.super Landroid/animation/ValueAnimator;
.source "AlphaSetAnimator.java"


# instance fields
.field private mProperty:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->mProperty:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;

    .line 28
    new-instance p1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator$1;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator$1;-><init>(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;)V

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 35
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->mProperty:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;->mAlphaSet:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mNormalViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 36
    new-instance p1, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->mProperty:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;->mAlphaSet:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->mNormalViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p1, p0, v0}, Lcom/voxel/simplesearchlauncher/utils/FirstFrameAnimatorHelper;-><init>(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 38
    new-instance p1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator$2;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator$2;-><init>(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;)V

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->mProperty:Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;

    return-object p0
.end method

.method public static ofFloat(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;F)Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;
    .locals 2

    .line 17
    new-instance v0, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;

    new-instance v1, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;

    invoke-direct {v1, p0, p1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;-><init>(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;-><init>(Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet$AnimatableProperty;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    invoke-virtual {p0, p1, v1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSet;->getValueForKey(Ljava/lang/Object;F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 p1, 0x2

    .line 19
    new-array p1, p1, [F

    const/4 v1, 0x0

    aput p0, p1, v1

    const/4 p0, 0x1

    aput p2, p1, p0

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/utils/alpha/AlphaSetAnimator;->setFloatValues([F)V

    return-object v0
.end method
