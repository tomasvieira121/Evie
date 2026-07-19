.class public Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "PlaylistItemViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;

.field private view7f0b008f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;Landroid/view/View;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;

    .line 26
    sget v0, Lcom/evie/sidescreen/R$id;->content:I

    const-string v1, "field \'mContent\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    iput-object v0, p1, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->mContent:Landroid/view/View;

    .line 28
    iput-object v0, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder_ViewBinding;->view7f0b008f:Landroid/view/View;

    .line 29
    new-instance v1, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    sget v0, Lcom/evie/sidescreen/R$id;->image:I

    const-string v1, "field \'mImage\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 36
    sget v0, Lcom/evie/sidescreen/R$id;->title:I

    const-string v1, "field \'mTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/evie/sidescreen/R$id;->subtitle:I

    const-string v1, "field \'mSubtitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->mSubtitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;

    .line 47
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->mContent:Landroid/view/View;

    .line 48
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 49
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder_ViewBinding;->view7f0b008f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/videos/PlaylistItemViewHolder_ViewBinding;->view7f0b008f:Landroid/view/View;

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
