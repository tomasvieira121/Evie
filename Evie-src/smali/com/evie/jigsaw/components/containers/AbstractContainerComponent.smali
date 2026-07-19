.class public abstract Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;
.super Lcom/evie/jigsaw/components/base/AbstractComponent;
.source "AbstractContainerComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/evie/jigsaw/components/base/AbstractComponent<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/components/base/AbstractComponent<",
            "*>;>;"
        }
    .end annotation
.end field

.field private maximum:I

.field private minimum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/evie/jigsaw/components/base/AbstractComponent;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->minimum:I

    const v0, 0x7fffffff

    .line 26
    iput v0, p0, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->maximum:I

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/components/base/AbstractComponent<",
            "*>;>;"
        }
    .end annotation

    .line 106
    iget v0, p0, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->maximum:I

    iget-object v1, p0, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 110
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->maximum:I

    if-ge v2, v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/jigsaw/components/base/AbstractComponent;

    .line 113
    invoke-virtual {v2}, Lcom/evie/jigsaw/components/base/AbstractComponent;->ready()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->items:Ljava/util/List;

    return-object v0
.end method

.method public initialize(Lcom/evie/jigsaw/Jigsaw;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Lcom/evie/jigsaw/components/base/AbstractComponent;->initialize(Lcom/evie/jigsaw/Jigsaw;)V

    .line 35
    iget-object v0, p0, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/jigsaw/components/base/AbstractComponent;

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1, p1}, Lcom/evie/jigsaw/components/base/AbstractComponent;->initialize(Lcom/evie/jigsaw/Jigsaw;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public proliferate()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/jigsaw/components/base/AbstractComponent;

    .line 69
    iput-object p0, v1, Lcom/evie/jigsaw/components/base/AbstractComponent;->parent:Lcom/evie/jigsaw/components/base/AbstractComponent;

    .line 70
    invoke-virtual {v1}, Lcom/evie/jigsaw/components/base/AbstractComponent;->proliferate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ready()Z
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/jigsaw/components/base/AbstractComponent;

    .line 58
    invoke-virtual {v3}, Lcom/evie/jigsaw/components/base/AbstractComponent;->ready()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    iget v0, p0, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->minimum:I

    if-lt v2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public resume()V
    .locals 2

    .line 76
    invoke-super {p0}, Lcom/evie/jigsaw/components/base/AbstractComponent;->resume()V

    .line 78
    iget-object v0, p0, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/jigsaw/components/base/AbstractComponent;

    .line 79
    invoke-virtual {v1}, Lcom/evie/jigsaw/components/base/AbstractComponent;->resume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItems(Ljava/util/List;)Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/jigsaw/components/base/AbstractComponent<",
            "*>;>;)",
            "Lcom/evie/jigsaw/components/containers/AbstractContainerComponent<",
            "TVH;>;"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->items:Ljava/util/List;

    return-object p0
.end method
