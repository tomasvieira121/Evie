.class public Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;
.super Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;
.source "FrequentlyUsedViewHolder.java"


# static fields
.field public static final ID:I


# instance fields
.field private mLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget v0, Lcom/evie/search/R$layout;->frequently_used:I

    sput v0, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;->ID:I

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    sget v0, Lcom/evie/search/R$id;->frequently_used_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;->mLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static synthetic lambda$bindItems$0(Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;ILandroid/view/View;)V
    .locals 0

    .line 51
    iget-object p2, p0, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;->mPresenter:Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    check-cast p2, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;

    invoke-virtual {p2, p1}, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->onItemClick(I)V

    return-void
.end method

.method public static synthetic lambda$bindItems$1(Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;ILandroid/view/View;)Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;->mPresenter:Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    check-cast v0, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;

    invoke-virtual {v0, p2, p1}, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;->onItemLongClick(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public static onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;
    .locals 3

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;->ID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 27
    new-instance v0, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;

    invoke-direct {v0, p0}, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public bindItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/search/model/FrequentlyUsedItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 51
    new-instance v3, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$FrequentlyUsedViewHolder$LDC18cZeE6f-HjZDIBfHh4oB8gs;

    invoke-direct {v3, p0, v1}, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$FrequentlyUsedViewHolder$LDC18cZeE6f-HjZDIBfHh4oB8gs;-><init>(Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    new-instance v3, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$FrequentlyUsedViewHolder$XZA8yulOIvpQfe5yCacXN8mSWH4;

    invoke-direct {v3, p0, v1}, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$FrequentlyUsedViewHolder$XZA8yulOIvpQfe5yCacXN8mSWH4;-><init>(Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 54
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 55
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/search/model/FrequentlyUsedItem;

    invoke-virtual {v3}, Lcom/evie/search/model/FrequentlyUsedItem;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    :goto_0
    iget-object v2, p0, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/evie/search/recyclerview/viewholder/FrequentlyUsedViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 37
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 40
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 41
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
