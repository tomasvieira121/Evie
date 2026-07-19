.class final Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerSideScreenBaseComponent.java"

# interfaces
.implements Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeTopicsOnboardingFragmentInjector$TopicsOnboardingFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TopicsOnboardingFragmentSubcomponentImpl"
.end annotation


# instance fields
.field private activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private followButtonHandlerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private followButtonHandlerFactoryProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/IFollowButtonHandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private followButtonOnboardingHandlerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private providesPersonalizationSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private providesTopicPersonalizationStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicPersonalizationStore;",
            ">;"
        }
    .end annotation
.end field

.field private providesTopicsModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/topics/TopicsModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

.field private topicItemPresenterFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;)V
    .locals 0

    .line 2318
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2320
    invoke-direct {p0, p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->initialize(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V
    .locals 0

    .line 2298
    invoke-direct {p0, p1, p2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;)V

    return-void
.end method

.method private getTopicsOnboardingBottomBarPresenterFactory()Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenterFactory;
    .locals 3

    .line 2333
    new-instance v0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, v2, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2335
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private getTopicsOnboardingPresenterFactory()Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;
    .locals 5

    .line 2324
    new-instance v0, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2325
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private initialize(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;)V
    .locals 6

    .line 2340
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2343
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    .line 2344
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->access$5700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2345
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2342
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/ActivityStarter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/ActivityStarter_Factory;

    move-result-object p1

    .line 2341
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    .line 2346
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2349
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/TopicsModule;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2350
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2348
    invoke-static {p1, v0}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;->create(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesPersonalizationSharedPreferencesFactory;

    move-result-object p1

    .line 2347
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->providesPersonalizationSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 2351
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2354
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/TopicsModule;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->providesPersonalizationSharedPreferencesProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v1, v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2356
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 2353
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;->create(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicPersonalizationStoreFactory;

    move-result-object p1

    .line 2352
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->providesTopicPersonalizationStoreProvider:Ljavax/inject/Provider;

    .line 2357
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2360
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/TopicsModule;

    move-result-object v0

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2361
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2362
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2363
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$5600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->providesTopicPersonalizationStoreProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2365
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v5

    .line 2359
    invoke-static/range {v0 .. v5}, Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;->create(Lcom/evie/sidescreen/dagger/TopicsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/TopicsModule_ProvidesTopicsModelFactory;

    move-result-object p1

    .line 2358
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    .line 2366
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->providesTopicsModelProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2369
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2367
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/personalize/FollowButtonHandlerFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->followButtonHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 2370
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2372
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2373
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 2371
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/personalize/onboarding/FollowButtonOnboardingHandlerFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->followButtonOnboardingHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 2374
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2377
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->followButtonHandlerFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->followButtonOnboardingHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 2376
    invoke-static {p1, v0, v1}, Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/FactoryModule_FollowButtonHandlerFactoryFactory;

    move-result-object p1

    .line 2375
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->followButtonHandlerFactoryProvider2:Ljavax/inject/Provider;

    .line 2380
    iget-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object p1, p1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2382
    invoke-static {p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->followButtonHandlerFactoryProvider2:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v2, v2, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2385
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 2381
    invoke-static {p1, v0, v1, v2}, Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/personalize/TopicItemPresenterFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->topicItemPresenterFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectTopicsOnboardingFragment(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;)Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;
    .locals 1

    .line 2396
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->getTopicsOnboardingPresenterFactory()Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;

    move-result-object v0

    .line 2395
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment_MembersInjector;->injectMTopicsOnboardingPresenterFactory(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingPresenterFactory;)V

    .line 2398
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->getTopicsOnboardingBottomBarPresenterFactory()Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenterFactory;

    move-result-object v0

    .line 2397
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment_MembersInjector;->injectMTopicsOnboardingBottomBarPresenterFactory(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingBottomBarPresenterFactory;)V

    .line 2399
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->this$1:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 2401
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    .line 2399
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment_MembersInjector;->injectMPreferencesModel(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;)V

    .line 2402
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->activityStarterProvider:Ljavax/inject/Provider;

    .line 2403
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/ActivityStarter;

    .line 2402
    invoke-static {p1, v0}, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment_MembersInjector;->injectMActivityStarter(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;Lcom/evie/sidescreen/ActivityStarter;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;)V
    .locals 0

    .line 2390
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->injectTopicsOnboardingFragment(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;)Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 2298
    check-cast p1, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;->inject(Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;)V

    return-void
.end method
