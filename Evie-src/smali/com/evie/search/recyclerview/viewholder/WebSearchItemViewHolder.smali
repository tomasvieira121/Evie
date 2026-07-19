.class public Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;
.super Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;
.source "WebSearchItemViewHolder.java"


# static fields
.field public static final ID:I


# instance fields
.field private extraPadding:I

.field private mButton:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    sget v0, Lcom/evie/search/R$layout;->search_autocomplete:I

    sput v0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->ID:I

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 25
    sget v0, Lcom/evie/search/R$id;->search_autocomplete_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 26
    sget v0, Lcom/evie/search/R$id;->search_autocomplete_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->mLabel:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/evie/search/R$id;->search_autocomplete_fill:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->mButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 30
    sget v0, Lcom/evie/search/R$dimen;->search_autocomplete_top_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->extraPadding:I

    return-void
.end method

.method public static synthetic lambda$bindItem$0(Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;Lcom/evie/search/model/WebSearchItem;Landroid/view/View;)V
    .locals 0

    .line 50
    iget-object p2, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->mPresenter:Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    check-cast p2, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;

    invoke-virtual {p1}, Lcom/evie/search/model/WebSearchItem;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;->changeQuery(Ljava/lang/String;)V

    return-void
.end method

.method public static onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;
    .locals 3

    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->ID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 35
    new-instance v0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;

    invoke-direct {v0, p0}, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public bindItem(Lcom/evie/search/model/WebSearchItem;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget v1, Lcom/evie/search/R$drawable;->autocomplete:I

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 48
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->mButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget v1, Lcom/evie/search/R$drawable;->fill:I

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 50
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->mButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$WebSearchItemViewHolder$6vMLVsPe2znWlBhhLm9mCQZHl98;

    invoke-direct {v1, p0, p1}, Lcom/evie/search/recyclerview/viewholder/-$$Lambda$WebSearchItemViewHolder$6vMLVsPe2znWlBhhLm9mCQZHl98;-><init>(Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;Lcom/evie/search/model/WebSearchItem;)V

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p1}, Lcom/evie/search/model/WebSearchItem;->isFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->itemView:Landroid/view/View;

    iget v2, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->extraPadding:I

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 54
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->mButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 58
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->mButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/evie/search/model/WebSearchItem;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->setOnClickListener()V

    .line 65
    invoke-virtual {p0}, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->setOnLongClickListener()V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 41
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->mButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 42
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->mButton:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/WebSearchItemViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
