.class public Lcom/evie/sidescreen/personalize/TopicItemViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "TopicItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/personalize/TopicItemPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field private mCheckFollowStyle:Z

.field private mDarkTheme:Z

.field mDivider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFollowButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mFollowButtonViewHolder:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

.field mFollowContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private final mFollowListener:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;

.field mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mIconWidth:I
    .annotation runtime Lbutterknife/BindDimen;
    .end annotation
.end field

.field mTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_topic_list_item:I

    sput v0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mCheckFollowStyle:Z

    .line 36
    iput-boolean p1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mDarkTheme:Z

    .line 38
    new-instance p1, Lcom/evie/sidescreen/personalize/TopicItemViewHolder$1;

    invoke-direct {p1, p0}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder$1;-><init>(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowListener:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;

    .line 63
    new-instance p1, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowButton:Landroid/view/View;

    invoke-direct {p1, v0}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowButtonViewHolder:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    .line 64
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowButtonViewHolder:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowListener:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->setOnFollowButtonClickListener(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)Lcom/evie/sidescreen/mvp/ItemPresenter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    return-object p0
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    return-void
.end method

.method public getFollowButtonViewHolder()Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowButtonViewHolder:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    return-object v0
.end method

.method public getIconWidth()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mIconWidth:I

    return v0
.end method

.method public hideDivider()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onItemViewClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/personalize/TopicItemPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/TopicItemPresenter;->onItemClick()V

    return-void
.end method

.method public setCheckFollowStyle()V
    .locals 4

    .line 103
    iget-boolean v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mCheckFollowStyle:Z

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 108
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/R$layout;->ss_follow_onboarding_button:I

    iget-object v2, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowButton:Landroid/view/View;

    .line 109
    new-instance v0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowButton:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowButtonViewHolder:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    .line 110
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowButtonViewHolder:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowListener:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->setOnFollowButtonClickListener(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setDarkTheme()V
    .locals 1

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mDarkTheme:Z

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextFollowStyle()V
    .locals 4

    .line 115
    iget-boolean v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mCheckFollowStyle:Z

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 120
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/R$layout;->ss_follow_button:I

    iget-object v2, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowButton:Landroid/view/View;

    .line 121
    new-instance v0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowButton:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowButtonViewHolder:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    .line 122
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowButtonViewHolder:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowListener:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->setOnFollowButtonClickListener(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mFollowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public showDivider()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
