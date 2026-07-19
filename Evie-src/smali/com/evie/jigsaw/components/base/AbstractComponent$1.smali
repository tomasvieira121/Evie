.class Lcom/evie/jigsaw/components/base/AbstractComponent$1;
.super Ljava/lang/Object;
.source "AbstractComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/base/AbstractComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/jigsaw/components/base/AbstractComponent;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/components/base/AbstractComponent;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/evie/jigsaw/components/base/AbstractComponent$1;->this$0:Lcom/evie/jigsaw/components/base/AbstractComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent$1;->this$0:Lcom/evie/jigsaw/components/base/AbstractComponent;

    invoke-static {v0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->access$200(Lcom/evie/jigsaw/components/base/AbstractComponent;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent$1;->this$0:Lcom/evie/jigsaw/components/base/AbstractComponent;

    invoke-static {v0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->access$200(Lcom/evie/jigsaw/components/base/AbstractComponent;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evie/jigsaw/components/base/AbstractComponent$1;->this$0:Lcom/evie/jigsaw/components/base/AbstractComponent;

    invoke-static {v0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->access$200(Lcom/evie/jigsaw/components/base/AbstractComponent;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/evie/jigsaw/R$id;->jigsaw_component:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/jigsaw/components/base/AbstractComponent$1;->this$0:Lcom/evie/jigsaw/components/base/AbstractComponent;

    if-ne v0, v1, :cond_0

    .line 332
    invoke-static {v1}, Lcom/evie/jigsaw/components/base/AbstractComponent;->access$200(Lcom/evie/jigsaw/components/base/AbstractComponent;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/evie/jigsaw/components/base/AbstractComponent$1;->this$0:Lcom/evie/jigsaw/components/base/AbstractComponent;

    invoke-static {v2}, Lcom/evie/jigsaw/components/base/AbstractComponent;->access$200(Lcom/evie/jigsaw/components/base/AbstractComponent;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/evie/jigsaw/components/base/AbstractComponent;->bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method
