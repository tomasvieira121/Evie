.class public Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "TopicDetailHeaderViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mBackdrop:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mDescription:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFollowButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final mFollowButtonViewHolder:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

.field mLogo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mLogoWidth:I
    .annotation runtime Lbutterknife/BindDimen;
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_topic_detail_header:I

    sput v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    new-instance p1, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mFollowButton:Landroid/view/View;

    invoke-direct {p1, v0}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mFollowButtonViewHolder:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    .line 42
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mFollowButtonViewHolder:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    new-instance v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder$1;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder$1;-><init>(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;)V

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->setOnFollowButtonClickListener(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    return-object p0
.end method


# virtual methods
.method public getBackdropAspectRatio()F
    .locals 1

    const v0, 0x40649249

    return v0
.end method

.method public getBackdropWidth()I
    .locals 3

    .line 117
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 119
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 120
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getFollowButtonViewHolder()Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mFollowButtonViewHolder:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    return-object v0
.end method

.method public getLogoAspectRatio()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getLogoWidth()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mLogoWidth:I

    return v0
.end method

.method public onClickBackButton()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->onBack()V

    return-void
.end method

.method public onClickFollowContextButton(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderPresenter;->onClickFollowContextButton(Landroid/view/View;)V

    return-void
.end method

.method public setBackdrop(Landroid/graphics/drawable/ColorDrawable;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mBackdrop:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackdropUri(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mBackdrop:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mBackdrop:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mDescription:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mDescription:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/ColorDrawable;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogoUri(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mLogo:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mLogo:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->mTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
