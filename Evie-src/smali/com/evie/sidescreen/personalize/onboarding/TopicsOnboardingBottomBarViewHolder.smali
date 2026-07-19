.class Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "TopicsOnboardingBottomBarViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mBottomBarContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mFollowButton:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_topics_onboarding_bottom_bar:I

    sput v0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->mBottomBarContainer:Landroid/view/View;

    sget-object v0, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingBottomBarViewHolder$zIKVJ0VXjjLRmHcZsTChjyfYCag;->INSTANCE:Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingBottomBarViewHolder$zIKVJ0VXjjLRmHcZsTChjyfYCag;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onFollowButtonClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->onFollowButton()V

    return-void
.end method

.method public onSkipClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenter;->onSkip()V

    return-void
.end method

.method public setFollowCount(I)V
    .locals 6

    if-nez p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->mFollowButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/evie/sidescreen/R$string;->ss_follow_zero_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->mFollowButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/evie/sidescreen/R$plurals;->ss_follow_count:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setFollowEnabled(Z)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->mFollowButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 36
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->mFollowButton:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
