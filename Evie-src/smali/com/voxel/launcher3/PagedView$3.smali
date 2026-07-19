.class Lcom/voxel/launcher3/PagedView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/PagedView;->lambda$createPostDeleteAnimationRunnable$4(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/PagedView;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/PagedView;)V
    .locals 0

    .line 2536
    iput-object p1, p0, Lcom/voxel/launcher3/PagedView$3;->this$0:Lcom/voxel/launcher3/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2539
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView$3;->this$0:Lcom/voxel/launcher3/PagedView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/voxel/launcher3/PagedView;->access$002(Lcom/voxel/launcher3/PagedView;Z)Z

    .line 2540
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView$3;->this$0:Lcom/voxel/launcher3/PagedView;

    invoke-virtual {p1}, Lcom/voxel/launcher3/PagedView;->onEndReordering()V

    .line 2541
    iget-object p1, p0, Lcom/voxel/launcher3/PagedView$3;->this$0:Lcom/voxel/launcher3/PagedView;

    invoke-virtual {p1}, Lcom/voxel/launcher3/PagedView;->onRemoveViewAnimationCompleted()V

    return-void
.end method
