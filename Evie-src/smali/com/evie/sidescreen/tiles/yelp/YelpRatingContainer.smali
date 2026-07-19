.class public Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;
.super Landroid/widget/LinearLayout;
.source "YelpRatingContainer.java"


# instance fields
.field mNumberOfReviewsText:Landroid/widget/TextView;

.field mRatingIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getYelpRatingResource(F)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    .line 67
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_9

    const/16 v0, 0xa

    if-eq p1, v0, :cond_8

    const/16 v0, 0xf

    if-eq p1, v0, :cond_7

    const/16 v0, 0x14

    if-eq p1, v0, :cond_6

    const/16 v0, 0x19

    if-eq p1, v0, :cond_5

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_4

    const/16 v0, 0x23

    if-eq p1, v0, :cond_3

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    .line 98
    sget p1, Lcom/evie/sidescreen/R$drawable;->yelp_5_stars:I

    return p1

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid rating"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_1
    sget p1, Lcom/evie/sidescreen/R$drawable;->yelp_4_5_stars:I

    return p1

    .line 92
    :cond_2
    sget p1, Lcom/evie/sidescreen/R$drawable;->yelp_4_stars:I

    return p1

    .line 89
    :cond_3
    sget p1, Lcom/evie/sidescreen/R$drawable;->yelp_3_5_stars:I

    return p1

    .line 86
    :cond_4
    sget p1, Lcom/evie/sidescreen/R$drawable;->yelp_3_stars:I

    return p1

    .line 83
    :cond_5
    sget p1, Lcom/evie/sidescreen/R$drawable;->yelp_2_5_stars:I

    return p1

    .line 80
    :cond_6
    sget p1, Lcom/evie/sidescreen/R$drawable;->yelp_2_stars:I

    return p1

    .line 77
    :cond_7
    sget p1, Lcom/evie/sidescreen/R$drawable;->yelp_1_5_stars:I

    return p1

    .line 74
    :cond_8
    sget p1, Lcom/evie/sidescreen/R$drawable;->yelp_1_stars:I

    return p1

    .line 71
    :cond_9
    sget p1, Lcom/evie/sidescreen/R$drawable;->yelp_0_stars:I

    return p1
.end method

.method private handleNumberOfReviews(I)V
    .locals 4

    .line 106
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/R$plurals;->ss_number_of_reviews:I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->mNumberOfReviewsText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->mNumberOfReviewsText:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 47
    sget v0, Lcom/evie/sidescreen/R$layout;->yelp_rating_container:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    sget p1, Lcom/evie/sidescreen/R$id;->rating_icon:I

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->mRatingIcon:Landroid/widget/ImageView;

    .line 49
    sget p1, Lcom/evie/sidescreen/R$id;->number_of_reviews_text:I

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->mNumberOfReviewsText:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x40900000    # 4.5f

    const/16 v0, 0x2c3

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->showYelpRating(FI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public showYelpRating(FI)V
    .locals 2

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->mRatingIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->mRatingIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->getYelpRatingResource(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    invoke-direct {p0, p2}, Lcom/evie/sidescreen/tiles/yelp/YelpRatingContainer;->handleNumberOfReviews(I)V

    return-void
.end method
