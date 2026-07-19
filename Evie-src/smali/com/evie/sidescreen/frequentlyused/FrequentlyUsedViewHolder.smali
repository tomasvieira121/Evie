.class public Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "FrequentlyUsedViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATA_TAG:I

.field public static final ID:I

.field private static final TAG_TAG:I


# instance fields
.field mContent:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_frequently_used:I

    sput v0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->ID:I

    .line 21
    sget v0, Lcom/evie/sidescreen/R$id;->tag:I

    sput v0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->TAG_TAG:I

    .line 22
    sget v0, Lcom/evie/sidescreen/R$id;->data:I

    sput v0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->DATA_TAG:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->mIcons:Ljava/util/List;

    const/4 p1, 0x0

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 33
    sget v1, Lcom/evie/sidescreen/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 34
    iget-object v1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->mIcons:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 18
    sget v0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->TAG_TAG:I

    return v0
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    return-object p0
.end method

.method private makeIconListener(I)Landroid/view/View$OnClickListener;
    .locals 1

    .line 69
    new-instance v0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder$1;-><init>(Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;I)V

    return-object v0
.end method


# virtual methods
.method public onLinkTap()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter;->onLinkTap()V

    return-void
.end method

.method public setIconTexts(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->mIcons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 47
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;

    .line 49
    iget-object v3, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->mIcons:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 50
    sget v4, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->DATA_TAG:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;

    .line 52
    sget v5, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->DATA_TAG:I

    invoke-virtual {v3, v5, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 53
    sget v5, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->TAG_TAG:I

    iget-object v6, v2, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;->tag:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    if-eqz v4, :cond_0

    .line 54
    iget-object v4, v4, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;->iconUri:Landroid/net/Uri;

    iget-object v5, v2, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;->iconUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 56
    :cond_0
    iget-object v2, v2, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedPresenter$IconText;->iconUri:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 58
    :cond_1
    invoke-direct {p0, v1}, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->makeIconListener(I)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->mIcons:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 63
    iget-object p1, p0, Lcom/evie/sidescreen/frequentlyused/FrequentlyUsedViewHolder;->mIcons:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/16 v0, 0x8

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
