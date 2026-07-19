.class public Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;
.super Ljava/lang/Object;
.source "FollowButtonViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mBlockedButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFollowButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFollowingButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mOnFollowButtonClickListener:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;

.field private mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

.field private mTopic:Lorg/schema/evie/topics/Topic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_follow_button:I

    sput v0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mTopic:Lorg/schema/evie/topics/Topic;

    .line 35
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    .line 38
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public onBlockedButtonClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mOnFollowButtonClickListener:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mTopic:Lorg/schema/evie/topics/Topic;

    iget-object v2, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, p0, v1, v2}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;->onBlockedButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    :cond_0
    return-void
.end method

.method public onFollowButtonClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mOnFollowButtonClickListener:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mTopic:Lorg/schema/evie/topics/Topic;

    iget-object v2, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, p0, v1, v2}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;->onFollowButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    :cond_0
    return-void
.end method

.method public onFollowingButtonClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mOnFollowButtonClickListener:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mTopic:Lorg/schema/evie/topics/Topic;

    iget-object v2, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    invoke-interface {v0, p0, v1, v2}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;->onFollowingButtonClick(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V

    :cond_0
    return-void
.end method

.method public setOnFollowButtonClickListener(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mOnFollowButtonClickListener:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$OnFollowButtonClickListener;

    return-void
.end method

.method public setScreenInfo(Lcom/evie/sidescreen/analytics/data/ScreenInfo;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mScreenInfo:Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    return-void
.end method

.method public setState(Lcom/evie/sidescreen/personalize/FollowState;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mFollowButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mFollowingButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mBlockedButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :cond_0
    sget-object v0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder$1;->$SwitchMap$com$evie$sidescreen$personalize$FollowState:[I

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/FollowState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unhandled State argument!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mBlockedButton:Landroid/view/View;

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mFollowingButton:Landroid/view/View;

    goto :goto_0

    .line 60
    :pswitch_2
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mFollowButton:Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    sget-object v0, Lcom/evie/sidescreen/personalize/FollowState;->FOLLOWING:Lcom/evie/sidescreen/personalize/FollowState;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/personalize/FollowState;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 75
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mFollowButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    instance-of v1, v0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;

    if-eqz v1, :cond_1

    .line 77
    check-cast v0, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailActivity;->setIsFollowingResult(Z)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTopic(Lorg/schema/evie/topics/Topic;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mTopic:Lorg/schema/evie/topics/Topic;

    return-void
.end method

.method public showError()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->mFollowButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/R$string;->ss_follow_error_message:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
