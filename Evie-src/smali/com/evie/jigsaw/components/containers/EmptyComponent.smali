.class public Lcom/evie/jigsaw/components/containers/EmptyComponent;
.super Lcom/evie/jigsaw/components/base/AbstractComponent;
.source "EmptyComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/components/containers/EmptyComponent$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/jigsaw/components/base/AbstractComponent<",
        "Lcom/evie/jigsaw/components/containers/EmptyComponent$Holder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/evie/jigsaw/components/base/AbstractComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/evie/jigsaw/components/containers/EmptyComponent$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/components/containers/EmptyComponent;->bind(Landroid/content/Context;Lcom/evie/jigsaw/components/containers/EmptyComponent$Holder;)V

    return-void
.end method

.method public bind(Landroid/content/Context;Lcom/evie/jigsaw/components/containers/EmptyComponent$Holder;)V
    .locals 0

    return-void
.end method
