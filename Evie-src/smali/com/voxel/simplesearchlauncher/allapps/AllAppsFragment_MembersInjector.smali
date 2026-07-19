.class public final Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment_MembersInjector;
.super Ljava/lang/Object;
.source "AllAppsFragment_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectLocalAppsManager(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->localAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    return-void
.end method

.method public static injectMAnalyticsHandler(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    return-void
.end method

.method public static injectMIconPackManager(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    return-void
.end method

.method public static injectMLayoutSettingsManager(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    return-void
.end method
