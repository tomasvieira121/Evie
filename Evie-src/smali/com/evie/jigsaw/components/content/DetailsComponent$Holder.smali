.class public Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DetailsComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/content/DetailsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# instance fields
.field public final icon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final items:Landroid/widget/LinearLayout;

.field public final poster:Lcom/facebook/drawee/view/SimpleDraweeView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 378
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 379
    sget v0, Lcom/evie/jigsaw/R$id;->details_items:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;->items:Landroid/widget/LinearLayout;

    .line 380
    sget v0, Lcom/evie/jigsaw/R$id;->details_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 381
    sget v0, Lcom/evie/jigsaw/R$id;->details_poster:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Holder;->poster:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-void
.end method
