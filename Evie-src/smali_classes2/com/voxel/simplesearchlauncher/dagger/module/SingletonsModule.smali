.class public Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;
.super Ljava/lang/Object;
.source "SingletonsModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesAnalyticsHandler()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;
    .locals 1

    .line 26
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object v0

    return-object v0
.end method

.method public providesLocationHandler()Lcom/voxel/simplesearchlauncher/api/LocationHandler;
    .locals 1

    .line 32
    invoke-static {}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->getInstance()Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    move-result-object v0

    return-object v0
.end method

.method public providesSettingsStorage(Landroid/content/Context;Ldagger/Lazy;)Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/evie/config/LauncherConfigModel;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;"
        }
    .end annotation

    .line 44
    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->init(Landroid/content/Context;Ldagger/Lazy;)V

    .line 45
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p1

    return-object p1
.end method

.method public providesUserProfileManager()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;
    .locals 1

    .line 38
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    move-result-object v0

    return-object v0
.end method
