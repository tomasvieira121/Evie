.class public Lcom/evie/sidescreen/LayerStack;
.super Ljava/lang/Object;
.source "LayerStack.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/evie/sidescreen/StackLayer;",
        ">;"
    }
.end annotation


# instance fields
.field private mStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/evie/sidescreen/StackLayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/evie/sidescreen/LayerStack;->mStack:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public clearToRoot(Z)V
    .locals 2

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/evie/sidescreen/LayerStack;->mStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/StackLayer;

    if-eqz v0, :cond_1

    .line 15
    invoke-interface {v0}, Lcom/evie/sidescreen/StackLayer;->isRootLayer()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    invoke-interface {v0, p1}, Lcom/evie/sidescreen/StackLayer;->pop(Z)V

    .line 20
    iget-object v1, p0, Lcom/evie/sidescreen/LayerStack;->mStack:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/evie/sidescreen/StackLayer;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/evie/sidescreen/LayerStack;->mStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public push(Lcom/evie/sidescreen/StackLayer;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/evie/sidescreen/LayerStack;->mStack:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/evie/sidescreen/LayerStack;->mStack:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
