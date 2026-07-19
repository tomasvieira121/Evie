.class public Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandler;
.super Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;
.source "FollowButtonOnboardingHandler.java"


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation


# instance fields
.field private final mSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/personalize/FollowState;Lio/reactivex/disposables/CompositeDisposable;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V
    .locals 0
    .param p3    # Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p4    # Lcom/evie/sidescreen/analytics/AnalyticsModel;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1, p2, p4}, Lcom/evie/sidescreen/personalize/BaseFollowButtonHandler;-><init>(Lcom/evie/sidescreen/personalize/FollowState;Lio/reactivex/disposables/CompositeDisposable;Lcom/evie/sidescreen/analytics/AnalyticsModel;)V

    .line 26
    iput-object p3, p0, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandler;->mSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    return-void
.end method


# virtual methods
.method protected onHandleFollow(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandler;->mSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->addToPersonalizeOnboardingList(Lorg/schema/evie/topics/Topic;)V

    return-void
.end method

.method protected onHandleUnblock(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandler;->mSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->removeFromPersonalizeOnboardingList(Lorg/schema/evie/topics/Topic;)V

    return-void
.end method

.method protected onHandleUnfollow(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Lorg/schema/evie/topics/Topic;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandler;->mSharedPreferencesModel:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->removeFromPersonalizeOnboardingList(Lorg/schema/evie/topics/Topic;)V

    return-void
.end method
