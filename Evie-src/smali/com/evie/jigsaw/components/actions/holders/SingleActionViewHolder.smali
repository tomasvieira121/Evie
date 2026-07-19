.class public Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SingleActionViewHolder.java"


# instance fields
.field public final customButton:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final description:Lcom/evie/jigsaw/views/RichTextView;

.field public final icon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final mainButton:Landroid/widget/ImageView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    sget v0, Lcom/evie/jigsaw/R$id;->action_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->title:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/evie/jigsaw/R$id;->action_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/views/RichTextView;

    iput-object v0, p0, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->description:Lcom/evie/jigsaw/views/RichTextView;

    .line 28
    sget v0, Lcom/evie/jigsaw/R$id;->action_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 29
    sget v0, Lcom/evie/jigsaw/R$id;->action_button_main:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->mainButton:Landroid/widget/ImageView;

    .line 30
    sget v0, Lcom/evie/jigsaw/R$id;->action_button_custom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/holders/SingleActionViewHolder;->customButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-void
.end method
