.class public Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "YelpSingleBusinessViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;

    .line 23
    sget v0, Lcom/evie/sidescreen/R$id;->title:I

    const-string v1, "field \'mTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mTitle:Landroid/widget/TextView;

    .line 24
    sget v0, Lcom/evie/sidescreen/R$id;->subtitle:I

    const-string v1, "field \'mSubtitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 25
    sget v0, Lcom/evie/sidescreen/R$id;->distance:I

    const-string v1, "field \'mDistance\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mDistance:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/evie/sidescreen/R$id;->price:I

    const-string v1, "field \'mPrice\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mPrice:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/evie/sidescreen/R$id;->rating_container:I

    const-string v1, "field \'mRatingContainer\'"

    const-class v2, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mRatingContainer:Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;

    .line 28
    sget v0, Lcom/evie/sidescreen/R$id;->image:I

    const-string v1, "field \'mImage\'"

    const-class v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 29
    sget v0, Lcom/evie/sidescreen/R$id;->action_container:I

    const-string v1, "field \'mYelpActionContainer\'"

    const-class v2, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;

    iput-object p2, p1, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mYelpActionContainer:Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;

    .line 39
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mTitle:Landroid/widget/TextView;

    .line 40
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 41
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mDistance:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mPrice:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mRatingContainer:Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;

    .line 44
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 45
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mYelpActionContainer:Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
