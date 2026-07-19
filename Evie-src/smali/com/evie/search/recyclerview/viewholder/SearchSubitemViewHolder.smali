.class public Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;
.super Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;
.source "SearchSubitemViewHolder.java"


# static fields
.field public static final ID:I


# instance fields
.field private mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget v0, Lcom/evie/search/R$layout;->search_subitem:I

    sput v0, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->ID:I

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    sget v0, Lcom/evie/search/R$id;->search_subitem_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 22
    sget v0, Lcom/evie/search/R$id;->search_subitem_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->mLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;
    .locals 3

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->ID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 27
    new-instance v0, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;

    invoke-direct {v0, p0}, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public bindItem(Lcom/evie/search/local/LocalSearchSubitem;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/evie/search/local/LocalSearchSubitem;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/evie/search/local/LocalSearchSubitem;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p0}, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->setOnClickListener()V

    .line 49
    invoke-virtual {p0}, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->setOnLongClickListener()V

    return-void
.end method

.method public bindItem(Lcom/evie/search/model/RemoteSearchItem;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget v1, Lcom/evie/search/R$dimen;->search_subitem_image_dimension:I

    invoke-virtual {p1, v1}, Lcom/evie/search/model/RemoteSearchItem;->getImageUrl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/evie/search/model/RemoteSearchItem;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0}, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->setOnClickListener()V

    .line 41
    invoke-virtual {p0}, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->setOnLongClickListener()V

    return-void
.end method

.method public clear()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchSubitemViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
