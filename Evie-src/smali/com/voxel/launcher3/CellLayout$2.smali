.class Lcom/voxel/launcher3/CellLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/voxel/launcher3/CellLayout;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$lp:Lcom/voxel/launcher3/CellLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/CellLayout$LayoutParams;Landroid/view/View;)V
    .locals 0

    .line 1085
    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$2;->this$0:Lcom/voxel/launcher3/CellLayout;

    iput-object p2, p0, Lcom/voxel/launcher3/CellLayout$2;->val$lp:Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iput-object p3, p0, Lcom/voxel/launcher3/CellLayout$2;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 1086
    iput-boolean p1, p0, Lcom/voxel/launcher3/CellLayout$2;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1100
    iput-boolean p1, p0, Lcom/voxel/launcher3/CellLayout$2;->cancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1092
    iget-boolean p1, p0, Lcom/voxel/launcher3/CellLayout$2;->cancelled:Z

    if-nez p1, :cond_0

    .line 1093
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout$2;->val$lp:Lcom/voxel/launcher3/CellLayout$LayoutParams;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/voxel/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1094
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout$2;->val$child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1096
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout$2;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-static {p1}, Lcom/voxel/launcher3/CellLayout;->access$000(Lcom/voxel/launcher3/CellLayout;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$2;->val$lp:Lcom/voxel/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
