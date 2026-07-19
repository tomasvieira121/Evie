.class public Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderItemPresenter;
.super Lcom/evie/sidescreen/mvp/ItemPresenter;
.source "TopicsOnboardingHeaderItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/ItemPresenter<",
        "Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/ActivityStarter;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/evie/sidescreen/mvp/ItemPresenter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderItemPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/mvp/MvpViewHolder;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderItemPresenter;->createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected createViewHolderInstance(Landroid/view/View;)Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;
    .locals 1

    .line 28
    new-instance v0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected getType()I
    .locals 1

    .line 23
    sget v0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;->ID:I

    return v0
.end method

.method protected bridge synthetic onBindViewHolder(Lcom/evie/sidescreen/mvp/MvpViewHolder;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderItemPresenter;->onBindViewHolder(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;)V

    return-void
.end method

.method protected onBindViewHolder(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderViewHolder;)V
    .locals 0

    return-void
.end method

.method public onSearchBarClick()V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderItemPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const-class v1, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    invoke-virtual {v0, v1}, Lcom/evie/sidescreen/ActivityStarter;->getLocalActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingHeaderItemPresenter;->mActivityStarter:Lcom/evie/sidescreen/ActivityStarter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/evie/sidescreen/ActivityStarter;->startActivity(Landroid/view/View;Landroid/content/Intent;Z)Z

    return-void
.end method
