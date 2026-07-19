.class public Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;
.super Ljava/lang/Object;
.source "DelimiterPresenter.java"

# interfaces
.implements Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;


# instance fields
.field private mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;

.field private mHeight:I

.field private final mIncludeChevron:Z

.field private mSearchPresenter:Lcom/evie/search/SearchPresenter;


# direct methods
.method public constructor <init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    .line 21
    iput-boolean p3, p0, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;->mIncludeChevron:Z

    if-eqz p3, :cond_0

    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/evie/search/R$dimen;->search_delimiter_full_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/evie/search/R$dimen;->search_delimiter_small_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;->mHeight:I

    return-void
.end method


# virtual methods
.method public bind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 1

    .line 39
    check-cast p1, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;

    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;

    .line 40
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;

    invoke-virtual {p1, p0}, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 41
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;

    iget-boolean v0, p0, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;->mIncludeChevron:Z

    invoke-virtual {p1, v0}, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->bindItem(Z)V

    return-void
.end method

.method public getItemViewHeight()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;->mHeight:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 29
    sget v0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->ID:I

    return v0
.end method

.method public onItemClick()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;->mSearchPresenter:Lcom/evie/search/SearchPresenter;

    invoke-virtual {v0}, Lcom/evie/search/SearchPresenter;->expandLocalResults()V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public unbind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 47
    invoke-virtual {v0, p1}, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 48
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;

    :cond_0
    return-void
.end method
