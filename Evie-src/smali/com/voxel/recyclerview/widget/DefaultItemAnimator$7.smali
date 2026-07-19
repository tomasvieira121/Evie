.class Lcom/voxel/recyclerview/widget/DefaultItemAnimator$7;
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

.field final synthetic val$oldViewAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$7;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$7;->val$changeInfo:Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$7;->val$oldViewAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$7;->val$oldViewAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 352
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    const/4 v0, 0x0

    .line 353
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 354
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 355
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$7;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$7;->val$changeInfo:Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchChangeFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 356
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$7;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    invoke-static {p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->access$1300(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$7;->val$changeInfo:Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 357
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$7;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    invoke-static {p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->access$800(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .line 346
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$7;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$7;->val$changeInfo:Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchChangeStarting(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
