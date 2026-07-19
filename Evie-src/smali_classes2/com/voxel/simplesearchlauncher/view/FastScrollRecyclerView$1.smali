.class Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$1;
.super Ljava/lang/Object;
.source "FastScrollRecyclerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->access$002(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;->access$002(Lcom/voxel/simplesearchlauncher/view/FastScrollRecyclerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
