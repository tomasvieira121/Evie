.class Lcom/voxel/recyclerview/widget/DefaultItemAnimator$1;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$1;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 119
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 120
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$1;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    iget-object v3, v1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    iget v4, v1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    iget v5, v1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    iget v6, v1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toX:I

    iget v7, v1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->toY:I

    invoke-static/range {v2 .. v7}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->access$000(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$1;->this$0:Lcom/voxel/recyclerview/widget/DefaultItemAnimator;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->access$100(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
