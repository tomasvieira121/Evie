.class public final synthetic Lcom/voxel/launcher3/util/-$$Lambda$RevealOutlineAnimation$ni_OqtFjG4sy4Adyybh5TUuV4d0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/util/RevealOutlineAnimation;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/util/RevealOutlineAnimation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/util/-$$Lambda$RevealOutlineAnimation$ni_OqtFjG4sy4Adyybh5TUuV4d0;->f$0:Lcom/voxel/launcher3/util/RevealOutlineAnimation;

    iput-object p2, p0, Lcom/voxel/launcher3/util/-$$Lambda$RevealOutlineAnimation$ni_OqtFjG4sy4Adyybh5TUuV4d0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/util/-$$Lambda$RevealOutlineAnimation$ni_OqtFjG4sy4Adyybh5TUuV4d0;->f$0:Lcom/voxel/launcher3/util/RevealOutlineAnimation;

    iget-object v1, p0, Lcom/voxel/launcher3/util/-$$Lambda$RevealOutlineAnimation$ni_OqtFjG4sy4Adyybh5TUuV4d0;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/voxel/launcher3/util/RevealOutlineAnimation;->lambda$createRevealAnimator$0(Lcom/voxel/launcher3/util/RevealOutlineAnimation;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
