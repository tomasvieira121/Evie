.class final Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerSideScreenBaseComponent.java"

# interfaces
.implements Lcom/evie/sidescreen/dagger/SideScreenActivitySubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SideScreenActivitySubcomponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedVideosFragmentSubcomponentImpl;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedVideosFragmentSubcomponentBuilder;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentImpl;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$RelatedArticlesFragmentSubcomponentBuilder;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$PersonalizeFragmentSubcomponentImpl;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$PersonalizeFragmentSubcomponentBuilder;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentImpl;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsOnboardingFragmentSubcomponentBuilder;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsListFragmentSubcomponentImpl;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicsListFragmentSubcomponentBuilder;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentImpl;,
        Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$TopicDetailFragmentSubcomponentBuilder;
    }
.end annotation


# instance fields
.field private activityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private exoPlayerObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;",
            ">;"
        }
    .end annotation
.end field

.field private personalizeFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_PersonalizeFragment$PersonalizeFragmentSubcomponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private popupViewProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;",
            ">;"
        }
    .end annotation
.end field

.field private relatedArticlesFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeRelatedContentFragmentInjector$RelatedArticlesFragmentSubcomponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private relatedVideosFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeRelatedVideosFragmentInjector$RelatedVideosFragmentSubcomponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

.field private topicDetailFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributesTopicDetailFragmentInjector$TopicDetailFragmentSubcomponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private topicsListFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeTopicsListFragmentInjector$TopicsListFragmentSubcomponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private topicsOnboardingFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/dagger/SideScreenInternalAndroidInjectorModule_ContributeTopicsOnboardingFragmentInjector$TopicsOnboardingFragmentSubcomponent$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;Landroid/app/Activity;Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;)V
    .locals 0

    .line 1667
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1669
    invoke-direct {p0, p2, p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->initialize(Landroid/app/Activity;Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;Landroid/app/Activity;Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V
    .locals 0

    .line 1629
    invoke-direct {p0, p1, p2, p3}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;Landroid/app/Activity;Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1629
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->activityProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1629
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->popupViewProvider2:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 1629
    iget-object p0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->exoPlayerObservableProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method private getMapOfClassOfAndProviderOfFactoryOf()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/AndroidInjector$Factory<",
            "*>;>;>;"
        }
    .end annotation

    const/4 v0, 0x6

    .line 1674
    invoke-static {v0}, Ldagger/internal/MapBuilder;->newMapBuilder(I)Ldagger/internal/MapBuilder;

    move-result-object v0

    const-class v1, Lcom/evie/sidescreen/topicdetail/TopicDetailFragment;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->topicDetailFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;

    .line 1675
    invoke-virtual {v0, v1, v2}, Ldagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ldagger/internal/MapBuilder;

    move-result-object v0

    const-class v1, Lcom/evie/sidescreen/personalize/TopicsListFragment;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->topicsListFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;

    .line 1676
    invoke-virtual {v0, v1, v2}, Ldagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ldagger/internal/MapBuilder;

    move-result-object v0

    const-class v1, Lcom/evie/sidescreen/personalize/onboarding/TopicsOnboardingFragment;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->topicsOnboardingFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;

    .line 1677
    invoke-virtual {v0, v1, v2}, Ldagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ldagger/internal/MapBuilder;

    move-result-object v0

    const-class v1, Lcom/evie/sidescreen/personalize/onboarding/PersonalizeFragment;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->personalizeFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;

    .line 1680
    invoke-virtual {v0, v1, v2}, Ldagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ldagger/internal/MapBuilder;

    move-result-object v0

    const-class v1, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->relatedArticlesFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;

    .line 1681
    invoke-virtual {v0, v1, v2}, Ldagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ldagger/internal/MapBuilder;

    move-result-object v0

    const-class v1, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->relatedVideosFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;

    .line 1684
    invoke-virtual {v0, v1, v2}, Ldagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ldagger/internal/MapBuilder;

    move-result-object v0

    .line 1687
    invoke-virtual {v0}, Ldagger/internal/MapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Landroid/app/Activity;Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;)V
    .locals 3

    .line 1693
    new-instance v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$1;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$1;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)V

    iput-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->topicDetailFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;

    .line 1704
    new-instance v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$2;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$2;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)V

    iput-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->topicsListFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;

    .line 1715
    new-instance v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$3;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$3;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)V

    iput-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->topicsOnboardingFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;

    .line 1727
    new-instance v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$4;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$4;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)V

    iput-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->personalizeFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;

    .line 1738
    new-instance v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$5;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$5;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)V

    iput-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->relatedArticlesFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;

    .line 1749
    new-instance v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$6;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl$6;-><init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;)V

    iput-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->relatedVideosFragmentSubcomponentBuilderProvider:Ljavax/inject/Provider;

    .line 1760
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1762
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1763
    invoke-static {v1}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2300(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1764
    invoke-static {v2}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2400(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 1761
    invoke-static {v0, v1, v2}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->exoPlayerObservableProvider:Ljavax/inject/Provider;

    .line 1765
    invoke-static {p1}, Ldagger/internal/InstanceFactory;->createNullable(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->activityProvider:Ljavax/inject/Provider;

    .line 1766
    invoke-static {p2}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->popupViewProvider2:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public activationModel()Lcom/evie/sidescreen/ActivationModel;
    .locals 1

    .line 1790
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1500(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/ActivationModel;

    return-object v0
.end method

.method public analyticsModel()Lcom/evie/sidescreen/analytics/AnalyticsModel;
    .locals 1

    .line 1795
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$600(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/analytics/AnalyticsModel;

    return-object v0
.end method

.method public disposables()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1

    .line 1800
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$3200(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/CompositeDisposable;

    return-object v0
.end method

.method public exoPlayerObservableProvider()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;",
            ">;"
        }
    .end annotation

    .line 1815
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->exoPlayerObservableProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method public layerStack()Lcom/evie/sidescreen/LayerStack;
    .locals 1

    .line 1778
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2100(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/LayerStack;

    return-object v0
.end method

.method public lifecycleCallbacks()Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;
    .locals 1

    .line 1771
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    .line 1773
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$5400(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;

    move-result-object v0

    .line 1772
    invoke-static {v0}, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory;->proxyProvidesLifecycleCallbacks(Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;)Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    move-result-object v0

    return-object v0
.end method

.method public sideScreenRelatedContentModel()Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;
    .locals 1

    .line 1805
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$2000(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    return-object v0
.end method

.method public sideScreenSharedPreferencesModel()Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;
    .locals 1

    .line 1810
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->this$0:Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;->access$1800(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    return-object v0
.end method

.method public supportFragmentInjector()Ldagger/android/DispatchingAndroidInjector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1784
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$SideScreenActivitySubcomponentImpl;->getMapOfClassOfAndProviderOfFactoryOf()Ljava/util/Map;

    move-result-object v0

    .line 1785
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 1783
    invoke-static {v0, v1}, Ldagger/android/DispatchingAndroidInjector_Factory;->newDispatchingAndroidInjector(Ljava/util/Map;Ljava/util/Map;)Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method
