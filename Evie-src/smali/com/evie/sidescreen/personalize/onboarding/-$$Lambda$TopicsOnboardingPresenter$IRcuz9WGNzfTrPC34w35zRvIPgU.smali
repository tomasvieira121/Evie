.class public final synthetic Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingPresenter$IRcuz9WGNzfTrPC34w35zRvIPgU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;

.field private final synthetic f$1:Lio/reactivex/subjects/SingleSubject;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;Lio/reactivex/subjects/SingleSubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingPresenter$IRcuz9WGNzfTrPC34w35zRvIPgU;->f$0:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingPresenter$IRcuz9WGNzfTrPC34w35zRvIPgU;->f$1:Lio/reactivex/subjects/SingleSubject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingPresenter$IRcuz9WGNzfTrPC34w35zRvIPgU;->f$0:Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;

    iget-object v1, p0, Lcom/evie/sidescreen/personalize/onboarding/-$$Lambda$TopicsOnboardingPresenter$IRcuz9WGNzfTrPC34w35zRvIPgU;->f$1:Lio/reactivex/subjects/SingleSubject;

    check-cast p1, Lcom/evie/common/data/Lce;

    invoke-static {v0, v1, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;->lambda$onLoad$0(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;Lio/reactivex/subjects/SingleSubject;Lcom/evie/common/data/Lce;)V

    return-void
.end method
