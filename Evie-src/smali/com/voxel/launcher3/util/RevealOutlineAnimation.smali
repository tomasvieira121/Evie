.class public abstract Lcom/voxel/launcher3/util/RevealOutlineAnimation;
.super Landroid/view/ViewOutlineProvider;
.source "RevealOutlineAnimation.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field protected mOutline:Landroid/graphics/Rect;

.field protected mOutlineRadius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation;->mOutline:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic lambda$createRevealAnimator$0(Lcom/voxel/launcher3/util/RevealOutlineAnimation;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 77
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 78
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/util/RevealOutlineAnimation;->setProgress(F)V

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    .line 80
    sget-boolean p2, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP_MR1:Z

    if-nez p2, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    .line 44
    new-array p2, v0, [F

    fill-array-data p2, :array_0

    goto :goto_0

    .line 45
    :cond_0
    new-array p2, v0, [F

    fill-array-data p2, :array_1

    :goto_0
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    .line 48
    new-instance v1, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;-><init>(Lcom/voxel/launcher3/util/RevealOutlineAnimation;Landroid/view/View;F)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 76
    new-instance v0, Lcom/voxel/launcher3/util/-$$Lambda$RevealOutlineAnimation$ni_OqtFjG4sy4Adyybh5TUuV4d0;

    invoke-direct {v0, p0, p1}, Lcom/voxel/launcher3/util/-$$Lambda$RevealOutlineAnimation$ni_OqtFjG4sy4Adyybh5TUuV4d0;-><init>(Lcom/voxel/launcher3/util/RevealOutlineAnimation;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation;->mOutline:Landroid/graphics/Rect;

    iget v0, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation;->mOutlineRadius:F

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method public abstract setProgress(F)V
.end method

.method abstract shouldRemoveElevationDuringAnimation()Z
.end method
