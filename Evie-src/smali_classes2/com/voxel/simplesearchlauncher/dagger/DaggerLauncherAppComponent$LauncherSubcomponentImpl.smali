.class final Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerLauncherAppComponent.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_Launcher$LauncherSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LauncherSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 1638
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$1;)V
    .locals 0

    .line 1636
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentImpl;-><init>(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;Lcom/voxel/launcher3/Launcher;)V

    return-void
.end method

.method private getLauncherCustomContentPresenterFactory()Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;
    .locals 4

    .line 1641
    new-instance v0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1642
    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$3500(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1643
    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$5100(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1644
    invoke-static {v3}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$3800(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method private injectLauncher(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/Launcher;
    .locals 1

    .line 1653
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1654
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4500(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    .line 1653
    invoke-static {p1, v0}, Lcom/voxel/launcher3/Launcher_MembersInjector;->injectLocalAppsManager(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    .line 1655
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1656
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$4200(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    .line 1655
    invoke-static {p1, v0}, Lcom/voxel/launcher3/Launcher_MembersInjector;->injectMDeepShortcutManager(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;)V

    .line 1657
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1658
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$5200(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    .line 1657
    invoke-static {p1, v0}, Lcom/voxel/launcher3/Launcher_MembersInjector;->injectMFrequentlyUsedModel(Lcom/voxel/launcher3/Launcher;Lcom/evie/models/frequentlyused/FrequentlyUsedModel;)V

    .line 1659
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1660
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$5300(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;

    .line 1659
    invoke-static {p1, v0}, Lcom/voxel/launcher3/Launcher_MembersInjector;->injectMHideAppsModel(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;)V

    .line 1661
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1662
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$3900(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    .line 1661
    invoke-static {p1, v0}, Lcom/voxel/launcher3/Launcher_MembersInjector;->injectMLocationHandler(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)V

    .line 1663
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentImpl;->this$0:Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;

    .line 1664
    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;->access$3800(Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    .line 1663
    invoke-static {p1, v0}, Lcom/voxel/launcher3/Launcher_MembersInjector;->injectMAnalyticsHandler(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V

    .line 1666
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentImpl;->getLauncherCustomContentPresenterFactory()Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;

    move-result-object v0

    .line 1665
    invoke-static {p1, v0}, Lcom/voxel/launcher3/Launcher_MembersInjector;->injectMLauncherCustomContentPresenterFactory(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 1649
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentImpl;->injectLauncher(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/Launcher;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .line 1636
    check-cast p1, Lcom/voxel/launcher3/Launcher;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/DaggerLauncherAppComponent$LauncherSubcomponentImpl;->inject(Lcom/voxel/launcher3/Launcher;)V

    return-void
.end method
