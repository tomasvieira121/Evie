.class public final Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;
.super Ljava/lang/Object;
.source "TopicsOnboardingPresenterFactory.java"


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPreferencesModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;"
        }
    .end annotation
.end field

.field private final topicItemPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final topicsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->sharedPreferencesModelProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 34
    invoke-static {p2, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->activityStarterProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    .line 35
    invoke-static {p3, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->topicsModelProvider:Ljavax/inject/Provider;

    const/4 p1, 0x4

    .line 36
    invoke-static {p4, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 57
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@AutoFactory method argument is null but is not marked @Nullable. Argument index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public create(Lcom/evie/models/topics/data/ListTopicsRequestOptions;ZLcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;Lcom/evie/sidescreen/analytics/data/ScreenInfo;)Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;
    .locals 10

    .line 44
    new-instance v9, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;

    const/4 v0, 0x1

    .line 45
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/evie/models/topics/data/ListTopicsRequestOptions;

    const/4 p1, 0x3

    .line 47
    invoke-static {p3, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;

    const/4 p1, 0x4

    .line 48
    invoke-static {p4, p1}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/evie/sidescreen/analytics/data/ScreenInfo;

    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->sharedPreferencesModelProvider:Ljavax/inject/Provider;

    .line 49
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x5

    invoke-static {p1, p3}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 50
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x6

    invoke-static {p1, p3}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/evie/sidescreen/ActivityStarter;

    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->topicsModelProvider:Ljavax/inject/Provider;

    .line 51
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x7

    invoke-static {p1, p3}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/evie/models/topics/TopicsModel;

    iget-object p1, p0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

    .line 52
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const/16 p3, 0x8

    invoke-static {p1, p3}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;

    move-object v0, v9

    move v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenter;-><init>(Lcom/evie/models/topics/data/ListTopicsRequestOptions;ZLcom/evie/sidescreen/personalize/TopicItemPresenter$FollowStateChangedListener;Lcom/evie/sidescreen/analytics/data/ScreenInfo;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/models/topics/TopicsModel;Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;)V

    return-object v9
.end method
