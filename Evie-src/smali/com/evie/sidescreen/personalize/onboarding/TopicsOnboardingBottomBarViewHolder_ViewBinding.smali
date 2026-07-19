.class public Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "TopicsOnboardingBottomBarViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

.field private view7f0b0061:Landroid/view/View;

.field private view7f0b01af:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;Landroid/view/View;)V
    .locals 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

    .line 28
    sget v0, Lcom/evie/sidescreen/R$id;->bottom_bar_container:I

    const-string v1, "field \'mBottomBarContainer\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->mBottomBarContainer:Landroid/view/View;

    .line 29
    sget v0, Lcom/evie/sidescreen/R$id;->button:I

    const-string v1, "field \'mFollowButton\' and method \'onFollowButtonClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 30
    sget v1, Lcom/evie/sidescreen/R$id;->button:I

    const-string v2, "field \'mFollowButton\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->mFollowButton:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding;->view7f0b0061:Landroid/view/View;

    .line 32
    new-instance v1, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding$1;-><init>(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding;Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    sget v0, Lcom/evie/sidescreen/R$id;->skip:I

    const-string v1, "method \'onSkipClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding;->view7f0b01af:Landroid/view/View;

    .line 40
    new-instance v0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding$2;-><init>(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding;Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding;->target:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;

    .line 55
    iput-object v1, v0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->mBottomBarContainer:Landroid/view/View;

    .line 56
    iput-object v1, v0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder;->mFollowButton:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding;->view7f0b0061:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iput-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding;->view7f0b0061:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding;->view7f0b01af:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iput-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarViewHolder_ViewBinding;->view7f0b01af:Landroid/view/View;

    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
