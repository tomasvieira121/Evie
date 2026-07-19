.class public Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;
.super Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;
.source "SearchHeaderViewHolder.java"


# static fields
.field public static final ID:I


# instance fields
.field private mLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget v0, Lcom/evie/search/R$layout;->search_header:I

    sput v0, Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;->ID:I

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1}, Lcom/evie/search/recyclerview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 17
    sget v0, Lcom/evie/search/R$id;->search_title_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;->mLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;
    .locals 3

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;->ID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 22
    new-instance v0, Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;

    invoke-direct {v0, p0}, Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public bindItem(Ljava/lang/String;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/evie/search/recyclerview/viewholder/SearchHeaderViewHolder;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
