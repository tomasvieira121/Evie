.class public Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "TopicItemViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

.field private view7f0b008f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    .line 29
    sget v0, Lcom/evie/sidescreen/R$id;->icon:I

    const-string v1, "field \'mIcon\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 30
    sget v0, Lcom/evie/sidescreen/R$id;->label:I

    const-string v1, "field \'mTextView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mTextView:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/evie/sidescreen/R$id;->follow_button:I

    const-string v1, "field \'mFollowButton\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowButton:Landroid/view/View;

    .line 32
    sget v0, Lcom/evie/sidescreen/R$id;->follow_button_container:I

    const-string v1, "field \'mFollowContainer\'"

    const-class v2, Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowContainer:Landroid/view/ViewGroup;

    .line 33
    sget v0, Lcom/evie/sidescreen/R$id;->divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mDivider:Landroid/view/View;

    .line 34
    sget v0, Lcom/evie/sidescreen/R$id;->content:I

    const-string v1, "method \'onItemViewClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding;->view7f0b008f:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding;Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 44
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 45
    sget v0, Lcom/evie/sidescreen/R$dimen;->ss_topic_icon_dimen:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mIconWidth:I

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    .line 55
    iput-object v1, v0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 56
    iput-object v1, v0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mTextView:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowButton:Landroid/view/View;

    .line 58
    iput-object v1, v0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowContainer:Landroid/view/ViewGroup;

    .line 59
    iput-object v1, v0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mDivider:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding;->view7f0b008f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iput-object v1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding;->view7f0b008f:Landroid/view/View;

    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
