.class public Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "TopicDetailHeaderViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

.field private view7f0b003e:Landroid/view/View;

.field private view7f0b00e1:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

    .line 31
    sget v0, Lcom/evie/sidescreen/R$id;->backdrop:I

    const-string v1, "field \'mBackdrop\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mBackdrop:Landroid/widget/ImageView;

    .line 32
    sget v0, Lcom/evie/sidescreen/R$id;->logo:I

    const-string v1, "field \'mLogo\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mLogo:Landroid/widget/ImageView;

    .line 33
    sget v0, Lcom/evie/sidescreen/R$id;->title:I

    const-string v1, "field \'mTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mTitle:Landroid/widget/TextView;

    .line 34
    sget v0, Lcom/evie/sidescreen/R$id;->description:I

    const-string v1, "field \'mDescription\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mDescription:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/evie/sidescreen/R$id;->follow_button:I

    const-string v1, "field \'mFollowButton\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mFollowButton:Landroid/view/View;

    .line 36
    sget v0, Lcom/evie/sidescreen/R$id;->back_button:I

    const-string v1, "method \'onClickBackButton\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;->view7f0b003e:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    sget v0, Lcom/evie/sidescreen/R$id;->follow_context_button:I

    const-string v1, "method \'onClickFollowContextButton\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;->view7f0b00e1:Landroid/view/View;

    .line 46
    new-instance v1, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding$2;-><init>(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 54
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 55
    sget v0, Lcom/evie/sidescreen/R$dimen;->ss_topic_detail_logo_dimen:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mLogoWidth:I

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

    .line 65
    iput-object v1, v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mBackdrop:Landroid/widget/ImageView;

    .line 66
    iput-object v1, v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mLogo:Landroid/widget/ImageView;

    .line 67
    iput-object v1, v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mTitle:Landroid/widget/TextView;

    .line 68
    iput-object v1, v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mDescription:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mFollowButton:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;->view7f0b003e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;->view7f0b003e:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;->view7f0b00e1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;->view7f0b00e1:Landroid/view/View;

    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
