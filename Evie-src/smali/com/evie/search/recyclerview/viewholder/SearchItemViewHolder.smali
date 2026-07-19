.class public Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;
.super Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;
.source "SearchItemViewHolder.java"


# static fields
.field public static final ID:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mLabel:Landroid/widget/TextView;

.field private mNote:Landroid/widget/TextView;

.field private mNoteLayout:Landroid/view/View;

.field private mRatingImage:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mRatingText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget v0, Lcom/evie/search/R$layout;->search_item:I

    sput v0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->ID:I

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    sget v0, Lcom/evie/search/R$id;->search_item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    sget v0, Lcom/evie/search/R$id;->search_item_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mLabel:Landroid/widget/TextView;

    .line 33
    sget v0, Lcom/evie/search/R$id;->search_item_note_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mNoteLayout:Landroid/view/View;

    .line 34
    sget v0, Lcom/evie/search/R$id;->search_item_label_note:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mNote:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/evie/search/R$id;->search_item_rating_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mRatingImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 36
    sget v0, Lcom/evie/search/R$id;->search_item_rating_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mRatingText:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;
    .locals 3

    .line 42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->ID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 43
    new-instance v0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;

    invoke-direct {v0, p0}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public bindItem(Lcom/evie/search/model/LocalSearchItem;)V
    .locals 2

    .line 57
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONTACT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    invoke-static {}, Lcom/facebook/drawee/generic/RoundingParams;->asCircle()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getNote()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mNote:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getNote()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mNote:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mNoteLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mNoteLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->setOnClickListener()V

    .line 73
    invoke-virtual {p0}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->setOnLongClickListener()V

    return-void
.end method

.method public bindItem(Lcom/evie/search/model/RecentItem;)V
    .locals 2

    .line 103
    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONTACT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    invoke-static {}, Lcom/facebook/drawee/generic/RoundingParams;->asCircle()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/evie/search/model/RecentItem;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mNoteLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-virtual {p0}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->setOnClickListener()V

    .line 112
    invoke-virtual {p0}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->setOnLongClickListener()V

    return-void
.end method

.method public bindItem(Lcom/evie/search/model/RemoteSearchItem;)V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/evie/search/R$dimen;->search_item_image_dimension:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/evie/search/model/RemoteSearchItem;->getImageUrl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/evie/search/model/RemoteSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p1}, Lcom/evie/search/model/RemoteSearchItem;->getNote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mNote:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/evie/search/model/RemoteSearchItem;->getNote()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mNote:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mNote:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 90
    :goto_0
    invoke-virtual {p1}, Lcom/evie/search/model/RemoteSearchItem;->getRatingImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/evie/search/model/RemoteSearchItem;->getRatingText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 92
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mRatingImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/evie/search/model/RemoteSearchItem;->getRatingImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mRatingText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/evie/search/model/RemoteSearchItem;->getRatingText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mNoteLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    invoke-virtual {p0}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->setOnClickListener()V

    .line 99
    invoke-virtual {p0}, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->setOnLongClickListener()V

    return-void
.end method

.method public clear()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 49
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mNote:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mRatingImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchItemViewHolder;->mRatingText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
