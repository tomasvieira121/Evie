.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/CommonAndroidInjectionModule_SettingsActivity$SettingsActivitySubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsActivitySubcomponentImpl"
.end annotation


# instance fields
.field private abTestConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/AbTestConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private providesSideScreenRelatedContentModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/screen/SettingsActivity;)V
    .locals 0

    .line 1440
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1442
    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;->initialize(Lcom/evie/screen/SettingsActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/screen/SettingsActivity;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1434
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/evie/screen/SettingsActivity;)V

    return-void
.end method

.method private initialize(Lcom/evie/screen/SettingsActivity;)V
    .locals 7

    .line 1447
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1449
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$3500(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object p1

    invoke-static {p1}, Lcom/evie/common/AbTestConfiguration_Factory;->create(Ljavax/inject/Provider;)Lcom/evie/common/AbTestConfiguration_Factory;

    move-result-object p1

    .line 1448
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;->abTestConfigurationProvider:Ljavax/inject/Provider;

    .line 1450
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1453
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$3600(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Lcom/evie/sidescreen/dagger/SideScreenContentModule;

    move-result-object v0

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1454
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$3500(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1455
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$3700(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    .line 1456
    invoke-static {}, Lcom/voxel/simplesearchlauncher/dagger/module/AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory;->create()Lcom/voxel/simplesearchlauncher/dagger/module/AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;->abTestConfigurationProvider:Ljavax/inject/Provider;

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1458
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$3800(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1459
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$3900(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    .line 1452
    invoke-static/range {v0 .. v6}, Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;->create(Lcom/evie/sidescreen/dagger/SideScreenContentModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/SideScreenContentModule_ProvidesSideScreenRelatedContentModelFactory;

    move-result-object p1

    .line 1451
    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;->providesSideScreenRelatedContentModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectSettingsActivity(Lcom/evie/screen/SettingsActivity;)Lcom/evie/screen/SettingsActivity;
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1469
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$3800(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    .line 1468
    invoke-static {p1, v0}, Lcom/evie/screen/SettingsActivity_MembersInjector;->injectMAnalyticsHandler(Lcom/evie/screen/SettingsActivity;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V

    .line 1470
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;->providesSideScreenRelatedContentModelProvider:Ljavax/inject/Provider;

    .line 1471
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;

    .line 1470
    invoke-static {p1, v0}, Lcom/evie/screen/SettingsActivity_MembersInjector;->injectMSideScreenRelatedContentModel(Lcom/evie/screen/SettingsActivity;Lcom/evie/models/sidescreen/SideScreenRelatedContentModel;)V

    .line 1472
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1473
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4000(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    .line 1472
    invoke-static {p1, v0}, Lcom/evie/screen/SettingsActivity_MembersInjector;->injectMSideScreenSharedPreferencesModel(Lcom/evie/screen/SettingsActivity;Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/evie/screen/SettingsActivity;)V
    .locals 0

    .line 1464
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;->injectSettingsActivity(Lcom/evie/screen/SettingsActivity;)Lcom/evie/screen/SettingsActivity;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 1434
    check-cast p1, Lcom/evie/screen/SettingsActivity;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$SettingsActivitySubcomponentImpl;->inject(Lcom/evie/screen/SettingsActivity;)V

    return-void
.end method
