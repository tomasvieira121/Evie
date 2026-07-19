.class public Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MultipleActionViewHolder.java"


# instance fields
.field public final description:Lcom/evie/jigsaw/views/RichTextView;

.field public final icon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final multicon:Landroid/widget/GridView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    sget v0, Lcom/evie/jigsaw/R$id;->action_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;->title:Landroid/widget/TextView;

    .line 25
    sget v0, Lcom/evie/jigsaw/R$id;->action_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/views/RichTextView;

    iput-object v0, p0, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;->description:Lcom/evie/jigsaw/views/RichTextView;

    .line 26
    sget v0, Lcom/evie/jigsaw/R$id;->action_multicon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;->multicon:Landroid/widget/GridView;

    .line 27
    sget v0, Lcom/evie/jigsaw/R$id;->action_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/holders/MultipleActionViewHolder;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-void
.end method
