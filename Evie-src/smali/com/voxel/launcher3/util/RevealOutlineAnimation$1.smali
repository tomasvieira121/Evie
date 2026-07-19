.class Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RevealOutlineAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/util/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWasCanceled:Z

.field final synthetic this$0:Lcom/voxel/launcher3/util/RevealOutlineAnimation;

.field final synthetic val$elevation:F

.field final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/util/RevealOutlineAnimation;Landroid/view/View;F)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;->this$0:Lcom/voxel/launcher3/util/RevealOutlineAnimation;

    iput-object p2, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iput p3, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;->val$elevation:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;->mWasCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;->mWasCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 65
    iget-boolean p1, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;->mWasCanceled:Z

    if-nez p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    sget-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 67
    iget-object p1, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 68
    iget-object p1, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;->this$0:Lcom/voxel/launcher3/util/RevealOutlineAnimation;

    invoke-virtual {p1}, Lcom/voxel/launcher3/util/RevealOutlineAnimation;->shouldRemoveElevationDuringAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iget-object v0, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;->this$0:Lcom/voxel/launcher3/util/RevealOutlineAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 53
    iget-object p1, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 54
    iget-object p1, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;->this$0:Lcom/voxel/launcher3/util/RevealOutlineAnimation;

    invoke-virtual {p1}, Lcom/voxel/launcher3/util/RevealOutlineAnimation;->shouldRemoveElevationDuringAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;->val$revealView:Landroid/view/View;

    iget v0, p0, Lcom/voxel/launcher3/util/RevealOutlineAnimation$1;->val$elevation:F

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    :cond_0
    return-void
.end method
