.class public Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SearchBarViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

.field private view7f0b0192:Landroid/view/View;

.field private view7f0b01a8:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;Landroid/view/View;)V
    .locals 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    .line 28
    sget v0, Lcom/evie/sidescreen/R$id;->search_bar_bg:I

    const-string v1, "field \'mSearchBarBackground\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mSearchBarBackground:Landroid/widget/ImageView;

    .line 29
    sget v0, Lcom/evie/sidescreen/R$id;->icon:I

    const-string v1, "field \'mSearchIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mSearchIcon:Landroid/widget/ImageView;

    .line 30
    sget v0, Lcom/evie/sidescreen/R$id;->text:I

    const-string v1, "field \'mHint\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mHint:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/evie/sidescreen/R$id;->settings:I

    const-string v1, "field \'mSettingsIcon\' and method \'onSettingsClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 32
    sget v1, Lcom/evie/sidescreen/R$id;->settings:I

    const-string v2, "field \'mSettingsIcon\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mSettingsIcon:Landroid/widget/ImageView;

    .line 33
    iput-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding;->view7f0b01a8:Landroid/view/View;

    .line 34
    new-instance v1, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding;Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    sget v0, Lcom/evie/sidescreen/R$id;->search_bar:I

    const-string v1, "method \'onSearchBarClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 41
    iput-object p2, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding;->view7f0b0192:Landroid/view/View;

    .line 42
    new-instance v0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding$2;-><init>(Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding;Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;

    .line 57
    iput-object v1, v0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mSearchBarBackground:Landroid/widget/ImageView;

    .line 58
    iput-object v1, v0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mSearchIcon:Landroid/widget/ImageView;

    .line 59
    iput-object v1, v0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mHint:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder;->mSettingsIcon:Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding;->view7f0b01a8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iput-object v1, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding;->view7f0b01a8:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding;->view7f0b0192:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iput-object v1, p0, Lcom/evie/sidescreen/searchbar/SearchBarViewHolder_ViewBinding;->view7f0b0192:Landroid/view/View;

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
