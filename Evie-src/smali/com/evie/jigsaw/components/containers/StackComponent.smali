.class public Lcom/evie/jigsaw/components/containers/StackComponent;
.super Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;
.source "StackComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/components/containers/StackComponent$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/jigsaw/components/containers/AbstractContainerComponent<",
        "Lcom/evie/jigsaw/components/containers/StackComponent$Holder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/evie/jigsaw/components/containers/StackComponent$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/components/containers/StackComponent;->bind(Landroid/content/Context;Lcom/evie/jigsaw/components/containers/StackComponent$Holder;)V

    return-void
.end method

.method public bind(Landroid/content/Context;Lcom/evie/jigsaw/components/containers/StackComponent$Holder;)V
    .locals 4

    .line 23
    invoke-super {p0, p1, p2}, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 24
    iget-object v0, p2, Lcom/evie/jigsaw/components/containers/StackComponent$Holder;->stack:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 28
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/containers/StackComponent;->getItems()Ljava/util/List;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/jigsaw/components/base/AbstractComponent;

    .line 33
    invoke-virtual {v2}, Lcom/evie/jigsaw/components/base/AbstractComponent;->ready()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    iget-object v3, p2, Lcom/evie/jigsaw/components/containers/StackComponent$Holder;->stack:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1, v3}, Lcom/evie/jigsaw/components/base/AbstractComponent;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
