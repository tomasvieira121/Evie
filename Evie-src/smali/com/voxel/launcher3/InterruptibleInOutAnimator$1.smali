.class Lcom/voxel/launcher3/InterruptibleInOutAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InterruptibleInOutAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/InterruptibleInOutAnimator;-><init>(Landroid/view/View;JFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/InterruptibleInOutAnimator;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator$1;->this$0:Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/voxel/launcher3/InterruptibleInOutAnimator$1;->this$0:Lcom/voxel/launcher3/InterruptibleInOutAnimator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/voxel/launcher3/InterruptibleInOutAnimator;->access$002(Lcom/voxel/launcher3/InterruptibleInOutAnimator;I)I

    return-void
.end method
