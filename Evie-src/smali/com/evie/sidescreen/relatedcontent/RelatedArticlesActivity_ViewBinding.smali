.class public Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity_ViewBinding;
.super Ljava/lang/Object;
.source "RelatedArticlesActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity_ViewBinding;->target:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;

    .line 30
    sget v0, Lcom/evie/sidescreen/R$id;->toolbar:I

    const-string v1, "field \'mToolbar\'"

    const-class v2, Landroidx/appcompat/widget/Toolbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 31
    sget v0, Lcom/evie/sidescreen/R$id;->toolbar_title:I

    const-string v1, "field \'mToolbarTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mToolbarTitle:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/evie/sidescreen/R$id;->logo:I

    const-string v1, "field \'mLogo\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mLogo:Landroid/widget/ImageView;

    .line 33
    sget v0, Lcom/evie/sidescreen/R$id;->container:I

    const-string v1, "field \'mContainer\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mContainer:Landroid/widget/FrameLayout;

    .line 34
    sget v0, Lcom/evie/sidescreen/R$id;->popup_view:I

    const-string v1, "field \'mPopupView\'"

    const-class v2, Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mPopupView:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity_ViewBinding;->target:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity_ViewBinding;->target:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;

    .line 44
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 45
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mToolbarTitle:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mLogo:Landroid/widget/ImageView;

    .line 47
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mContainer:Landroid/widget/FrameLayout;

    .line 48
    iput-object v1, v0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->mPopupView:Landroid/view/ViewGroup;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
