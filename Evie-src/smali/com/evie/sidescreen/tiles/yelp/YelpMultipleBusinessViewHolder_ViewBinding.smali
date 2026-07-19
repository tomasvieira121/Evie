.class public Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "YelpMultipleBusinessViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;Landroid/view/View;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;

    .line 25
    sget v0, Lcom/evie/sidescreen/R$id;->headline:I

    const-string v1, "field \'mHeadline\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mHeadline:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/evie/sidescreen/R$id;->description:I

    const-string v1, "field \'mDescription\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mDescription:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/evie/sidescreen/R$id;->recycler_view:I

    const-string v1, "field \'mRecyclerView\'"

    const-class v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    sget v0, Lcom/evie/sidescreen/R$id;->action_container:I

    const-string v1, "field \'mActionContainer\'"

    const-class v2, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mActionContainer:Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 31
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 32
    sget v0, Lcom/evie/sidescreen/R$dimen;->ss_margin_side:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mDividerPadding:I

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;

    .line 42
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mHeadline:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mDescription:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/yelp/YelpMultipleBusinessViewHolder;->mActionContainer:Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
