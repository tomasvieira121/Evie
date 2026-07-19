.class public Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder_ViewBinding;
.super Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;
.source "VideoSeedViewHolder_ViewBinding.java"


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;

.field private view7f0b01c5:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder;Landroid/view/View;)V

    .line 23
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;

    .line 26
    sget v0, Lcom/evie/sidescreen/R$id;->subtitle:I

    const-string v1, "field \'mSubtitle\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 27
    sget v0, Lcom/evie/sidescreen/R$id;->subtitle:I

    const-string v1, "field \'mSubtitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 28
    iput-object p2, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder_ViewBinding;->view7f0b01c5:Landroid/view/View;

    .line 29
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;

    .line 43
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder_ViewBinding;->view7f0b01c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/videos/VideoSeedViewHolder_ViewBinding;->view7f0b01c5:Landroid/view/View;

    .line 48
    invoke-super {p0}, Lcom/evie/sidescreen/tiles/articles/AbstractArticleTileViewHolder_ViewBinding;->unbind()V

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
