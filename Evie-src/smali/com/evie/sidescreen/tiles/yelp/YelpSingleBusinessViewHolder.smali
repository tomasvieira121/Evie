.class public Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "YelpSingleBusinessViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final HERO_ID:I

.field public static final ROW_ID:I


# instance fields
.field mDistance:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImage:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRatingContainer:Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSubtitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mYelpActionContainer:Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_yelp_single_business_hero:I

    sput v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->HERO_ID:I

    .line 23
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_yelp_single_business_row:I

    sput v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->ROW_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    new-instance v0, Lcom/evie/sidescreen/tiles/yelp/-$$Lambda$YelpSingleBusinessViewHolder$AXXkmj0dMTkscPF4jVJgbO-lWnc;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/tiles/yelp/-$$Lambda$YelpSingleBusinessViewHolder$AXXkmj0dMTkscPF4jVJgbO-lWnc;-><init>(Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mYelpActionContainer:Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;

    if-eqz v0, :cond_0

    .line 43
    new-instance v1, Lcom/evie/sidescreen/tiles/yelp/-$$Lambda$YelpSingleBusinessViewHolder$c-nazfbTeXsKaeeZ_rdj9QsmPPE;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/tiles/yelp/-$$Lambda$YelpSingleBusinessViewHolder$c-nazfbTeXsKaeeZ_rdj9QsmPPE;-><init>(Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->setOnActionClick(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;Landroid/view/View;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->onItemClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 44
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast p2, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;

    invoke-virtual {p2, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessPresenter;->onActionClicked(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hideRating()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mRatingContainer:Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->setVisibility(I)V

    return-void
.end method

.method public setAction(Lorg/schema/evie/yelp/YelpAction;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mYelpActionContainer:Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->setAction(Lorg/schema/evie/yelp/YelpAction;)V

    return-void
.end method

.method public setDistance(D)V
    .locals 4

    .line 58
    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->convertToMilesString(D)Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mDistance:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/R$string;->ss_distance_mi:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    return-void
.end method

.method public setPrice(I)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 67
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mPrice:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRating(FI)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mRatingContainer:Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;

    invoke-virtual {v0, p1, p2}, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->showYelpRating(FI)V

    .line 75
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mRatingContainer:Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->setVisibility(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpSingleBusinessViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
