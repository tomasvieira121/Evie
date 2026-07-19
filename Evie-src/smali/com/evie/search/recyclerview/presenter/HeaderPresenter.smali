.class public Lcom/evie/search/recyclerview/presenter/HeaderPresenter;
.super Ljava/lang/Object;
.source "HeaderPresenter.java"

# interfaces
.implements Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;


# instance fields
.field private mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;

.field private mHeight:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;->mTitle:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 22
    sget p2, Lcom/evie/search/R$dimen;->search_header_top_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget v0, Lcom/evie/search/R$dimen;->search_header_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;->mHeight:I

    return-void
.end method


# virtual methods
.method public bind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 1

    .line 37
    check-cast p1, Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;

    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;

    .line 38
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;

    invoke-virtual {p1, p0}, Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;->bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 39
    iget-object p1, p0, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;

    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;->bindItem(Ljava/lang/String;)V

    return-void
.end method

.method public getItemViewHeight()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;->mHeight:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 27
    sget v0, Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;->ID:I

    return v0
.end method

.method public onItemClick()V
    .locals 0

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public unbind(Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 45
    invoke-virtual {v0, p1}, Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;->bindPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 46
    iput-object p1, p0, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;->mBoundViewHolder:Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;

    :cond_0
    return-void
.end method
