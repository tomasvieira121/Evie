.class public Lcom/evie/jigsaw/components/containers/StackComponent$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StackComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/containers/StackComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# instance fields
.field public final stack:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/evie/jigsaw/components/containers/StackComponent$Holder;->stack:Landroid/widget/FrameLayout;

    return-void
.end method
