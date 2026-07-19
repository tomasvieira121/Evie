.class public Lcom/evie/jigsaw/components/actions/ActionRowComponent$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ActionRowComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/actions/ActionRowComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# instance fields
.field public final container:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 499
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 500
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/ActionRowComponent$Holder;->container:Landroid/view/ViewGroup;

    return-void
.end method
