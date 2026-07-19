.class public Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;
.super Landroid/widget/FrameLayout;
.source "YelpActionContainer.java"


# instance fields
.field mBarAction:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mBarType:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mButtonAction:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mButtonDescription:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mButtonType:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 59
    sget v0, Lcom/evie/sidescreen/R$layout;->yelp_action_container:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public setAction(Lorg/schema/evie/yelp/YelpAction;)V
    .locals 2

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 90
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->setVisibility(I)V

    const-string v0, "button"

    .line 96
    invoke-virtual {p1}, Lorg/schema/evie/yelp/YelpAction;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->setButtonType()V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->setBarType()V

    .line 102
    :goto_0
    invoke-virtual {p1}, Lorg/schema/evie/yelp/YelpAction;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->setActionLabel(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lorg/schema/evie/yelp/YelpAction;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setActionLabel(Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mBarAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mButtonAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBarType()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mBarType:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mButtonType:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setButtonType()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mBarType:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mButtonType:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mButtonDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnActionClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mBarAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/yelp/YelpActionContainer;->mButtonAction:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
