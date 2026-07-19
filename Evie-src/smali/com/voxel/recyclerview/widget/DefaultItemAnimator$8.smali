.class Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;
.super Lcom/voxel/recyclerview/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->animateChangeImpl(Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$changeInfo:Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .line 372
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 373
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 374
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 375
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 376
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchChangeFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 377
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    invoke-static {p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->access$1300(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 378
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    invoke-static {p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->access$800(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .line 368
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;->val$changeInfo:Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchChangeStarting(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
