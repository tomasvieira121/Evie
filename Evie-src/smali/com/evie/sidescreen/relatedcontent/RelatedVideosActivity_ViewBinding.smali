.class public Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RelatedVideosActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity_ViewBinding;->target:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    .line 29
    sget v0, Lcom/evie/sidescreen/R$id;->content_view:I

    const-string v1, "field \'mContentView\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mContentView:Landroid/view/View;

    .line 30
    sget v0, Lcom/evie/sidescreen/R$id;->toolbar:I

    const-string v1, "field \'mToolbar\'"

    const-class v2, Landroidx/appcompat/widget/Toolbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 31
    sget v0, Lcom/evie/sidescreen/R$id;->toolbar_title:I

    const-string v1, "field \'mToolbarTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mToolbarTitle:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/evie/sidescreen/R$id;->logo:I

    const-string v1, "field \'mLogo\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mLogo:Landroid/widget/ImageView;

    .line 33
    sget v0, Lcom/evie/sidescreen/R$id;->playback_controls:I

    const-string v1, "field \'mPlaybackControls\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlaybackControls:Landroid/view/View;

    .line 34
    sget v0, Lcom/evie/sidescreen/R$id;->container:I

    const-string v1, "field \'mContainer\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mContainer:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity_ViewBinding;->target:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity_ViewBinding;->target:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    .line 44
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mContentView:Landroid/view/View;

    .line 45
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 46
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mToolbarTitle:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mLogo:Landroid/widget/ImageView;

    .line 48
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mPlaybackControls:Landroid/view/View;

    .line 49
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->mContainer:Landroid/widget/FrameLayout;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
