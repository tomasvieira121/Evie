.class Lcom/voxel/recyclerview/widget/DefaultItemAnimator$4;
.super Lcom/voxel/recyclerview/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->animateRemoveImpl(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$4;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$4;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$4;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 204
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 205
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$4;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 206
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$4;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    invoke-static {p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->access$700(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 207
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$4;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    invoke-static {p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->access$800(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 199
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$4;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveStarting(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
