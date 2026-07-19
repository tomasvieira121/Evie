.class public Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "TopicsOnboardingHeaderViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderItemPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_topics_onboarding_header_item:I

    sput v0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onSearchBarClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderItemPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderItemPresenter;->onSearchBarClick()V

    return-void
.end method
