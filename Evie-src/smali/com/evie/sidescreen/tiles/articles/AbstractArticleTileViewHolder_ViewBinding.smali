.class public Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "AbstractArticleTileViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;

.field private view7f0b008f:Landroid/view/View;

.field private view7f0b00f5:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;Landroid/view/View;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;

    .line 33
    sget v0, Lcom/evie/sidescreen/R$id;->content:I

    const-string v1, "field \'mContent\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mContent:Landroid/view/View;

    .line 35
    iput-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;->view7f0b008f:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sget v0, Lcom/evie/sidescreen/R$id;->main_content:I

    const-string v1, "field \'mHeaderLayout\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 43
    sget v0, Lcom/evie/sidescreen/R$id;->image:I

    const-string v1, "field \'mImage\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 44
    sget v0, Lcom/evie/sidescreen/R$id;->title:I

    const-string v1, "field \'mTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mTitle:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/evie/sidescreen/R$id;->header:I

    const-string v1, "field \'mHeader\'"

    const-class v2, Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeader:Landroid/view/ViewGroup;

    .line 46
    sget v0, Lcom/evie/sidescreen/R$id;->header_logo:I

    const-string v1, "field \'mHeaderLogo\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLogo:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 47
    sget v0, Lcom/evie/sidescreen/R$id;->header_publisher:I

    const-string v1, "field \'mHeaderPublisher\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderPublisher:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/evie/sidescreen/R$id;->header_topic_divider:I

    const-string v1, "field \'mHeaderTopicDivider\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTopicDivider:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/evie/sidescreen/R$id;->header_topic:I

    const-string v1, "field \'mHeaderTopic\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTopic:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/evie/sidescreen/R$id;->header_time_elapsed_divider:I

    const-string v1, "field \'mHeaderTimeElapsedDivider\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTimeElapsedDivider:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/evie/sidescreen/R$id;->header_time_elapsed:I

    const-string v1, "field \'mHeaderTimeElapsed\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTimeElapsed:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/evie/sidescreen/R$id;->header_link_divider:I

    const-string v1, "field \'mHeaderLinkDivider\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLinkDivider:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/evie/sidescreen/R$id;->header_link:I

    const-string v1, "field \'mHeaderLink\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLink:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/evie/sidescreen/R$id;->header_context_button:I

    const-string v1, "field \'mHeaderContextButton\' and method \'onContextMenuClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderContextButton:Landroid/view/View;

    .line 56
    iput-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;->view7f0b00f5:Landroid/view/View;

    .line 57
    new-instance v1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding$2;-><init>(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget v0, Lcom/evie/sidescreen/R$id;->header_tag_container:I

    const-string v1, "field \'mHeaderTagContainer\'"

    const-class v2, Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTagContainer:Landroid/view/ViewGroup;

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 66
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 67
    sget v0, Lcom/evie/sidescreen/R$dimen;->ss_button_touch_delegate_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mButtonTouchDelegateSize:I

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;

    .line 77
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mContent:Landroid/view/View;

    .line 78
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 79
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 80
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mTitle:Landroid/widget/TextView;

    .line 81
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeader:Landroid/view/ViewGroup;

    .line 82
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLogo:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 83
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderPublisher:Landroid/widget/TextView;

    .line 84
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTopicDivider:Landroid/widget/TextView;

    .line 85
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTopic:Landroid/widget/TextView;

    .line 86
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTimeElapsedDivider:Landroid/widget/TextView;

    .line 87
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTimeElapsed:Landroid/widget/TextView;

    .line 88
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLinkDivider:Landroid/widget/TextView;

    .line 89
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderLink:Landroid/widget/TextView;

    .line 90
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderContextButton:Landroid/view/View;

    .line 91
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;->mHeaderTagContainer:Landroid/view/ViewGroup;

    .line 93
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;->view7f0b008f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;->view7f0b008f:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;->view7f0b00f5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;->view7f0b00f5:Landroid/view/View;

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
