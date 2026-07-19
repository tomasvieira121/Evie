.class public Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent;
.super Lcom/evie/jigsaw/components/delimiters/AbstractDelimiterComponent;
.source "HorizontalDelimiterComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/jigsaw/components/delimiters/AbstractDelimiterComponent<",
        "Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent$Holder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/evie/jigsaw/components/delimiters/AbstractDelimiterComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public getInset(Landroid/content/Context;)I
    .locals 1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/evie/jigsaw/R$dimen;->base_and_half_spacing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic inset(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 14
    check-cast p1, Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent;->inset(Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent$Holder;I)V

    return-void
.end method

.method protected inset(Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent$Holder;I)V
    .locals 0

    .line 24
    iget-object p1, p1, Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent$Holder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 25
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 26
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-void
.end method
