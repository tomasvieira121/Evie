.class Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;
.super Lcom/voxel/recyclerview/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->animateMoveImpl(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IILandroidx/core/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;->val$holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;->val$deltaX:I

    iput p4, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;->val$deltaY:I

    iput-object p5, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    .line 291
    iget v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;->val$deltaX:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 294
    :cond_0
    iget v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;->val$deltaY:I

    if-eqz v0, :cond_1

    .line 295
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 300
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 301
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;->val$holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 302
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    invoke-static {p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->access$1100(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;->val$holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 303
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    invoke-static {p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->access$800(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 287
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;->val$holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchMoveStarting(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
