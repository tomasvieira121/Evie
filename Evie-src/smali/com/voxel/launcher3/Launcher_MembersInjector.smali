.class public final Lcom/voxel/launcher3/Launcher_MembersInjector;
.super Ljava/lang/Object;
.source "Launcher_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectLocalAppsManager(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->localAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    return-void
.end method

.method public static injectMAnalyticsHandler(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    return-void
.end method

.method public static injectMDeepShortcutManager(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->mDeepShortcutManager:Lcom/voxel/launcher3/shortcuts/DeepShortcutManager;

    return-void
.end method

.method public static injectMFrequentlyUsedModel(Lcom/voxel/launcher3/Launcher;Lcom/evie/models/frequentlyused/FrequentlyUsedModel;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->mFrequentlyUsedModel:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    return-void
.end method

.method public static injectMHideAppsModel(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->mHideAppsModel:Lcom/voxel/simplesearchlauncher/hideapps/HideAppsModel;

    return-void
.end method

.method public static injectMLauncherCustomContentPresenterFactory(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->mLauncherCustomContentPresenterFactory:Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;

    return-void
.end method

.method public static injectMLocationHandler(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/api/LocationHandler;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher;->mLocationHandler:Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    return-void
.end method
