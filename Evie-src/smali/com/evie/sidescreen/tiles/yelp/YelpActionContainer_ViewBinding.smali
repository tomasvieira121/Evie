.class public Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer_ViewBinding;
.super Ljava/lang/Object;
.source "YelpActionContainer_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer_ViewBinding;->target:Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;

    .line 28
    sget v0, Lcom/evie/sidescreen/R$id;->bar_type:I

    const-string v1, "field \'mBarType\'"

    const-class v2, Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mBarType:Landroid/view/ViewGroup;

    .line 29
    sget v0, Lcom/evie/sidescreen/R$id;->bar_action:I

    const-string v1, "field \'mBarAction\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mBarAction:Landroid/widget/Button;

    .line 30
    sget v0, Lcom/evie/sidescreen/R$id;->button_type:I

    const-string v1, "field \'mButtonType\'"

    const-class v2, Landroid/view/ViewGroup;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mButtonType:Landroid/view/ViewGroup;

    .line 31
    sget v0, Lcom/evie/sidescreen/R$id;->button_description:I

    const-string v1, "field \'mButtonDescription\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mButtonDescription:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/evie/sidescreen/R$id;->button_action:I

    const-string v1, "field \'mButtonAction\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mButtonAction:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer_ViewBinding;->target:Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer_ViewBinding;->target:Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;

    .line 42
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mBarType:Landroid/view/ViewGroup;

    .line 43
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mBarAction:Landroid/widget/Button;

    .line 44
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mButtonType:Landroid/view/ViewGroup;

    .line 45
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mButtonDescription:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mButtonAction:Landroid/widget/Button;

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
