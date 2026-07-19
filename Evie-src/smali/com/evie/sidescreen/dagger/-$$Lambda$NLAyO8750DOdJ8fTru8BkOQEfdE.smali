.class public final synthetic Lcom/evie/sidescreen/dagger/-$$Lambda$NLAyO8750DOdJ8fTru8BkOQEfdE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/-$$Lambda$NLAyO8750DOdJ8fTru8BkOQEfdE;->f$0:Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;

    return-void
.end method


# virtual methods
.method public final create(Lcom/evie/sidescreen/personalize/FollowState;Lio/reactivex/disposables/CompositeDisposable;)Lcom/evie/sidescreen/personalize/IFollowButtonHandler;
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/-$$Lambda$NLAyO8750DOdJ8fTru8BkOQEfdE;->f$0:Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;

    invoke-virtual {v0, p1, p2}, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;->create(Lcom/evie/sidescreen/personalize/FollowState;Lio/reactivex/disposables/CompositeDisposable;)Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandler;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/personalize/IFollowButtonHandler;

    return-object p1
.end method
