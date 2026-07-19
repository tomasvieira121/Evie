.class public final Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerSideScreenBaseComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private activationModule:Lcom/evie/sidescreen/dagger/ActivationModule;

.field private announcementModule:Lcom/evie/sidescreen/dagger/AnnouncementModule;

.field private backgroundModule:Lcom/evie/sidescreen/dagger/BackgroundModule;

.field private connectivityModule:Lcom/evie/sidescreen/dagger/ConnectivityModule;

.field private contextModule:Lcom/evie/sidescreen/dagger/ContextModule;

.field private disposeModule:Lcom/evie/sidescreen/dagger/DisposeModule;

.field private exoPlayerModule:Lcom/evie/sidescreen/dagger/ExoPlayerModule;

.field private layerStackModule:Lcom/evie/sidescreen/dagger/LayerStackModule;

.field private lifecycleCallbacksModule:Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;

.field private locationModule:Lcom/evie/sidescreen/dagger/LocationModule;

.field private networkStatusModule:Lcom/evie/sidescreen/dagger/NetworkStatusModule;

.field private settingsModule:Lcom/evie/sidescreen/dagger/SettingsModule;

.field private sideScreenContentModule:Lcom/evie/sidescreen/dagger/SideScreenContentModule;

.field private sideScreenSharedDependenciesExcludingContext:Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;

.field private tileSettingsModule:Lcom/evie/sidescreen/dagger/TileSettingsModule;

.field private topicsModule:Lcom/evie/sidescreen/dagger/TopicsModule;

.field private weatherModule:Lcom/evie/sidescreen/dagger/WeatherModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V
    .locals 0

    .line 576
    invoke-direct {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/evie/sidescreen/dagger/SideScreenBaseComponent;
    .locals 22

    move-object/from16 v0, p0

    .line 702
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->sideScreenContentModule:Lcom/evie/sidescreen/dagger/SideScreenContentModule;

    if-nez v1, :cond_0

    .line 703
    new-instance v1, Lcom/evie/sidescreen/dagger/SideScreenContentModule;

    invoke-direct {v1}, Lcom/evie/sidescreen/dagger/SideScreenContentModule;-><init>()V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->sideScreenContentModule:Lcom/evie/sidescreen/dagger/SideScreenContentModule;

    .line 705
    :cond_0
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->contextModule:Lcom/evie/sidescreen/dagger/ContextModule;

    const-class v2, Lcom/evie/sidescreen/dagger/ContextModule;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 706
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->locationModule:Lcom/evie/sidescreen/dagger/LocationModule;

    if-nez v1, :cond_1

    .line 707
    new-instance v1, Lcom/evie/sidescreen/dagger/LocationModule;

    invoke-direct {v1}, Lcom/evie/sidescreen/dagger/LocationModule;-><init>()V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->locationModule:Lcom/evie/sidescreen/dagger/LocationModule;

    .line 709
    :cond_1
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->disposeModule:Lcom/evie/sidescreen/dagger/DisposeModule;

    if-nez v1, :cond_2

    .line 710
    new-instance v1, Lcom/evie/sidescreen/dagger/DisposeModule;

    invoke-direct {v1}, Lcom/evie/sidescreen/dagger/DisposeModule;-><init>()V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->disposeModule:Lcom/evie/sidescreen/dagger/DisposeModule;

    .line 712
    :cond_2
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->backgroundModule:Lcom/evie/sidescreen/dagger/BackgroundModule;

    if-nez v1, :cond_3

    .line 713
    new-instance v1, Lcom/evie/sidescreen/dagger/BackgroundModule;

    invoke-direct {v1}, Lcom/evie/sidescreen/dagger/BackgroundModule;-><init>()V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->backgroundModule:Lcom/evie/sidescreen/dagger/BackgroundModule;

    .line 715
    :cond_3
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->settingsModule:Lcom/evie/sidescreen/dagger/SettingsModule;

    const-class v2, Lcom/evie/sidescreen/dagger/SettingsModule;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 716
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->lifecycleCallbacksModule:Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;

    const-class v2, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 718
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->activationModule:Lcom/evie/sidescreen/dagger/ActivationModule;

    if-nez v1, :cond_4

    .line 719
    new-instance v1, Lcom/evie/sidescreen/dagger/ActivationModule;

    invoke-direct {v1}, Lcom/evie/sidescreen/dagger/ActivationModule;-><init>()V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->activationModule:Lcom/evie/sidescreen/dagger/ActivationModule;

    .line 721
    :cond_4
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->layerStackModule:Lcom/evie/sidescreen/dagger/LayerStackModule;

    if-nez v1, :cond_5

    .line 722
    new-instance v1, Lcom/evie/sidescreen/dagger/LayerStackModule;

    invoke-direct {v1}, Lcom/evie/sidescreen/dagger/LayerStackModule;-><init>()V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->layerStackModule:Lcom/evie/sidescreen/dagger/LayerStackModule;

    .line 724
    :cond_5
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->networkStatusModule:Lcom/evie/sidescreen/dagger/NetworkStatusModule;

    const-class v2, Lcom/evie/sidescreen/dagger/NetworkStatusModule;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 725
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->connectivityModule:Lcom/evie/sidescreen/dagger/ConnectivityModule;

    if-nez v1, :cond_6

    .line 726
    new-instance v1, Lcom/evie/sidescreen/dagger/ConnectivityModule;

    invoke-direct {v1}, Lcom/evie/sidescreen/dagger/ConnectivityModule;-><init>()V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->connectivityModule:Lcom/evie/sidescreen/dagger/ConnectivityModule;

    .line 728
    :cond_6
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->exoPlayerModule:Lcom/evie/sidescreen/dagger/ExoPlayerModule;

    if-nez v1, :cond_7

    .line 729
    new-instance v1, Lcom/evie/sidescreen/dagger/ExoPlayerModule;

    invoke-direct {v1}, Lcom/evie/sidescreen/dagger/ExoPlayerModule;-><init>()V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->exoPlayerModule:Lcom/evie/sidescreen/dagger/ExoPlayerModule;

    .line 731
    :cond_7
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->tileSettingsModule:Lcom/evie/sidescreen/dagger/TileSettingsModule;

    if-nez v1, :cond_8

    .line 732
    new-instance v1, Lcom/evie/sidescreen/dagger/TileSettingsModule;

    invoke-direct {v1}, Lcom/evie/sidescreen/dagger/TileSettingsModule;-><init>()V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->tileSettingsModule:Lcom/evie/sidescreen/dagger/TileSettingsModule;

    .line 734
    :cond_8
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->weatherModule:Lcom/evie/sidescreen/dagger/WeatherModule;

    if-nez v1, :cond_9

    .line 735
    new-instance v1, Lcom/evie/sidescreen/dagger/WeatherModule;

    invoke-direct {v1}, Lcom/evie/sidescreen/dagger/WeatherModule;-><init>()V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->weatherModule:Lcom/evie/sidescreen/dagger/WeatherModule;

    .line 737
    :cond_9
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->announcementModule:Lcom/evie/sidescreen/dagger/AnnouncementModule;

    if-nez v1, :cond_a

    .line 738
    new-instance v1, Lcom/evie/sidescreen/dagger/AnnouncementModule;

    invoke-direct {v1}, Lcom/evie/sidescreen/dagger/AnnouncementModule;-><init>()V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->announcementModule:Lcom/evie/sidescreen/dagger/AnnouncementModule;

    .line 740
    :cond_a
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->topicsModule:Lcom/evie/sidescreen/dagger/TopicsModule;

    if-nez v1, :cond_b

    .line 741
    new-instance v1, Lcom/evie/sidescreen/dagger/TopicsModule;

    invoke-direct {v1}, Lcom/evie/sidescreen/dagger/TopicsModule;-><init>()V

    iput-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->topicsModule:Lcom/evie/sidescreen/dagger/TopicsModule;

    .line 743
    :cond_b
    iget-object v1, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->sideScreenSharedDependenciesExcludingContext:Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;

    const-class v2, Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 746
    new-instance v1, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;

    move-object v3, v1

    iget-object v4, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->sideScreenContentModule:Lcom/evie/sidescreen/dagger/SideScreenContentModule;

    iget-object v5, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->contextModule:Lcom/evie/sidescreen/dagger/ContextModule;

    iget-object v6, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->locationModule:Lcom/evie/sidescreen/dagger/LocationModule;

    iget-object v7, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->disposeModule:Lcom/evie/sidescreen/dagger/DisposeModule;

    iget-object v8, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->backgroundModule:Lcom/evie/sidescreen/dagger/BackgroundModule;

    iget-object v9, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->settingsModule:Lcom/evie/sidescreen/dagger/SettingsModule;

    iget-object v10, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->lifecycleCallbacksModule:Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;

    iget-object v11, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->activationModule:Lcom/evie/sidescreen/dagger/ActivationModule;

    iget-object v12, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->layerStackModule:Lcom/evie/sidescreen/dagger/LayerStackModule;

    iget-object v13, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->networkStatusModule:Lcom/evie/sidescreen/dagger/NetworkStatusModule;

    iget-object v14, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->connectivityModule:Lcom/evie/sidescreen/dagger/ConnectivityModule;

    iget-object v15, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->exoPlayerModule:Lcom/evie/sidescreen/dagger/ExoPlayerModule;

    iget-object v2, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->tileSettingsModule:Lcom/evie/sidescreen/dagger/TileSettingsModule;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->weatherModule:Lcom/evie/sidescreen/dagger/WeatherModule;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->announcementModule:Lcom/evie/sidescreen/dagger/AnnouncementModule;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->topicsModule:Lcom/evie/sidescreen/dagger/TopicsModule;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->sideScreenSharedDependenciesExcludingContext:Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;

    move-object/from16 v20, v2

    const/16 v21, 0x0

    invoke-direct/range {v3 .. v21}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;-><init>(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Lcom/evie/sidescreen/dagger/ContextModule;Lcom/evie/sidescreen/dagger/LocationModule;Lcom/evie/sidescreen/dagger/DisposeModule;Lcom/evie/sidescreen/dagger/BackgroundModule;Lcom/evie/sidescreen/dagger/SettingsModule;Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;Lcom/evie/sidescreen/dagger/ActivationModule;Lcom/evie/sidescreen/dagger/LayerStackModule;Lcom/evie/sidescreen/dagger/NetworkStatusModule;Lcom/evie/sidescreen/dagger/ConnectivityModule;Lcom/evie/sidescreen/dagger/ExoPlayerModule;Lcom/evie/sidescreen/dagger/TileSettingsModule;Lcom/evie/sidescreen/dagger/WeatherModule;Lcom/evie/sidescreen/dagger/AnnouncementModule;Lcom/evie/sidescreen/dagger/TopicsModule;Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$1;)V

    return-object v1
.end method

.method public contextModule(Lcom/evie/sidescreen/dagger/ContextModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;
    .locals 0

    .line 615
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/dagger/ContextModule;

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->contextModule:Lcom/evie/sidescreen/dagger/ContextModule;

    return-object p0
.end method

.method public lifecycleCallbacksModule(Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;
    .locals 0

    .line 625
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->lifecycleCallbacksModule:Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;

    return-object p0
.end method

.method public networkStatusModule(Lcom/evie/sidescreen/dagger/NetworkStatusModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;
    .locals 0

    .line 620
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/dagger/NetworkStatusModule;

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->networkStatusModule:Lcom/evie/sidescreen/dagger/NetworkStatusModule;

    return-object p0
.end method

.method public settingsModule(Lcom/evie/sidescreen/dagger/SettingsModule;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;
    .locals 0

    .line 630
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/dagger/SettingsModule;

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->settingsModule:Lcom/evie/sidescreen/dagger/SettingsModule;

    return-object p0
.end method

.method public sideScreenSharedDependenciesExcludingContext(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;
    .locals 0

    .line 697
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;

    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$Builder;->sideScreenSharedDependenciesExcludingContext:Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;

    return-object p0
.end method
