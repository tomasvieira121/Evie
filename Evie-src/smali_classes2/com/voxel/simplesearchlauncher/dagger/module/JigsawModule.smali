.class public Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;
.super Ljava/lang/Object;
.source "JigsawModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule$LauncherImageResolver;,
        Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule$LauncherActionPreferenceStore;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getApiUrl(Landroid/app/Application;)Ljava/lang/String;
    .locals 2

    .line 109
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "com.voxel.simplesearchlauncher.dagger.module.JigsawModule.PREF_ENABLE_CONTENT_STAGING"

    .line 112
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "https://api-staging.evie.com/"

    return-object p1

    :cond_0
    const-string p1, "https://api2.evie.com"

    return-object p1
.end method


# virtual methods
.method providesActionPreferenceStore(Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;)Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;
    .locals 1

    .line 47
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule$LauncherActionPreferenceStore;

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule$LauncherActionPreferenceStore;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;)V

    return-object v0
.end method

.method providesContactManager(Landroid/content/Context;)Lcom/evie/search/local/ContactManager;
    .locals 0

    .line 53
    invoke-static {p1}, Lcom/evie/search/local/ContactManager;->getInstance(Landroid/content/Context;)Lcom/evie/search/local/ContactManager;

    move-result-object p1

    return-object p1
.end method

.method providesImageResolver(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)Lcom/evie/jigsaw/services/images/ImageResolver;
    .locals 1

    .line 59
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule$LauncherImageResolver;

    invoke-direct {v0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule$LauncherImageResolver;-><init>(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V

    return-object v0
.end method

.method public providesJigsaw(Landroid/app/Application;Lcom/evie/jigsaw/services/images/ImageResolver;Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;Lcom/evie/search/local/ContactManager;Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;)Lcom/evie/jigsaw/Jigsaw;
    .locals 2

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v1, Lcom/voxel/simplesearchlauncher/jigsaw/layouts/ContactLayoutService;

    invoke-direct {v1, p4}, Lcom/voxel/simplesearchlauncher/jigsaw/layouts/ContactLayoutService;-><init>(Lcom/evie/search/local/ContactManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static {}, Lcom/evie/jigsaw/JigsawSettings;->builder()Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;

    move-result-object p4

    .line 86
    invoke-virtual {p4, p1}, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->application(Landroid/app/Application;)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;

    move-result-object p4

    .line 87
    invoke-virtual {p4, p2}, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->imageResolver(Lcom/evie/jigsaw/services/images/ImageResolver;)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;

    move-result-object p2

    .line 88
    invoke-virtual {p2, p3}, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->actionPreferenceStore(Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;

    move-result-object p2

    .line 89
    invoke-virtual {p2, p5}, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->analyticsService(Lcom/evie/common/services/analytics/AnalyticsService;)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;

    move-result-object p2

    const-string p3, "is.shortcut"

    .line 90
    invoke-virtual {p2, p3}, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->pack4ge(Ljava/lang/String;)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;

    move-result-object p2

    const p3, 0x146a900

    .line 91
    invoke-virtual {p2, p3}, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->version(I)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;

    move-result-object p2

    .line 92
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;->getApiUrl(Landroid/app/Application;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->apiUrl(Ljava/lang/String;)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;

    move-result-object p1

    .line 93
    invoke-virtual {p1, v0}, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->layoutServices(Ljava/util/List;)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;

    move-result-object p1

    const/4 p2, 0x0

    .line 94
    invoke-virtual {p1, p2}, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->streamingEnabled(Z)Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;

    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/jigsaw/CustomJigsawSettings;->apply(Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;)V

    .line 97
    new-instance p2, Lcom/evie/jigsaw/Jigsaw;

    invoke-virtual {p1}, Lcom/evie/jigsaw/JigsawSettings$JigsawSettingsBuilder;->build()Lcom/evie/jigsaw/JigsawSettings;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/evie/jigsaw/Jigsaw;-><init>(Lcom/evie/jigsaw/JigsawSettings;)V

    .line 98
    invoke-virtual {p2}, Lcom/evie/jigsaw/Jigsaw;->events()Lcom/evie/common/services/events/EventService;

    move-result-object p1

    new-instance p3, Lcom/voxel/simplesearchlauncher/jigsaw/JigsawEventReceiver;

    invoke-direct {p3}, Lcom/voxel/simplesearchlauncher/jigsaw/JigsawEventReceiver;-><init>()V

    invoke-virtual {p1, p3}, Lcom/evie/common/services/events/EventService;->register(Landroid/content/BroadcastReceiver;)V

    return-object p2
.end method

.method public providesJigsawAnalyticsService(Landroid/app/Application;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;)Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;
    .locals 1

    .line 68
    new-instance v0, Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;

    invoke-direct {v0, p1, p2, p3}, Lcom/voxel/simplesearchlauncher/jigsaw/JigsawAnalyticsService;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;)V

    return-object v0
.end method
