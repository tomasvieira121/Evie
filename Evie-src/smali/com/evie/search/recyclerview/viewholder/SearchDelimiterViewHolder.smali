.class public Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;
.super Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;
.source "SearchDelimiterViewHolder.java"


# static fields
.field public static final ID:I


# instance fields
.field private mChevron:Landroid/widget/ImageView;

.field private mDelimiter:Landroid/view/View;

.field private mFullHeight:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mSmallHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget v0, Lcom/evie/search/R$layout;->search_delimiter:I

    sput v0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->ID:I

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 25
    sget v0, Lcom/evie/search/R$id;->search_delimiter_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    .line 26
    sget v0, Lcom/evie/search/R$id;->search_delimiter_chevron:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->mChevron:Landroid/widget/ImageView;

    .line 27
    sget v0, Lcom/evie/search/R$id;->search_delimiter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->mDelimiter:Landroid/view/View;

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 30
    sget v0, Lcom/evie/search/R$dimen;->search_delimiter_small_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->mSmallHeight:I

    .line 31
    sget v0, Lcom/evie/search/R$dimen;->search_delimiter_full_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->mFullHeight:I

    return-void
.end method

.method public static onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;
    .locals 3

    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->ID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 36
    new-instance v0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;

    invoke-direct {v0, p0}, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public bindItem(Z)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz p1, :cond_0

    .line 48
    iget p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->mFullHeight:I

    iput p1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 49
    iget-object p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->mChevron:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->mDelimiter:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-virtual {p0}, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->setOnClickListener()V

    goto :goto_0

    .line 53
    :cond_0
    iget p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->mSmallHeight:I

    iput p1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 54
    iget-object p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->mChevron:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->mDelimiter:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :goto_0
    iget-object p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchDelimiterViewHolder;->mChevron:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
