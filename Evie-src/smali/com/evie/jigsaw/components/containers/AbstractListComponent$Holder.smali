.class public Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AbstractListComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/containers/AbstractListComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# instance fields
.field public final items:Landroidx/recyclerview/widget/RecyclerView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 71
    sget v0, Lcom/evie/jigsaw/R$id;->list_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;->title:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/evie/jigsaw/R$id;->list_items:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/evie/jigsaw/components/containers/AbstractListComponent$Holder;->items:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
