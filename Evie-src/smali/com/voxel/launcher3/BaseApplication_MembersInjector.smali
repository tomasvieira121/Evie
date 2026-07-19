.class public final Lcom/voxel/launcher3/BaseApplication_MembersInjector;
.super Ljava/lang/Object;
.source "BaseApplication_MembersInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static injectMActivityInjector(Lcom/voxel/launcher3/BaseApplication;Ldagger/android/DispatchingAndroidInjector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/BaseApplication;",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/voxel/launcher3/BaseApplication;->mActivityInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method

.method public static injectMAnalyticsHandler(Lcom/voxel/launcher3/BaseApplication;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/voxel/launcher3/BaseApplication;->mAnalyticsHandler:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    return-void
.end method

.method public static injectMHybridNetworkFetcherProvider(Lcom/voxel/launcher3/BaseApplication;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/BaseApplication;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;",
            ">;)V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/voxel/launcher3/BaseApplication;->mHybridNetworkFetcherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static injectMIconFilterProvider(Lcom/voxel/launcher3/BaseApplication;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/BaseApplication;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;",
            ">;)V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/voxel/launcher3/BaseApplication;->mIconFilterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static injectMIconPackManager(Lcom/voxel/launcher3/BaseApplication;Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/voxel/launcher3/BaseApplication;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    return-void
.end method

.method public static injectMJigsaw(Lcom/voxel/launcher3/BaseApplication;Lcom/evie/jigsaw/Jigsaw;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/voxel/launcher3/BaseApplication;->mJigsaw:Lcom/evie/jigsaw/Jigsaw;

    return-void
.end method

.method public static injectMMemoryRegistry(Lcom/voxel/launcher3/BaseApplication;Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/voxel/launcher3/BaseApplication;->mMemoryRegistry:Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;

    return-void
.end method

.method public static injectMServiceInjector(Lcom/voxel/launcher3/BaseApplication;Ldagger/android/DispatchingAndroidInjector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/BaseApplication;",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/voxel/launcher3/BaseApplication;->mServiceInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method

.method public static injectMSettingsStorage(Lcom/voxel/launcher3/BaseApplication;Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/voxel/launcher3/BaseApplication;->mSettingsStorage:Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    return-void
.end method

.method public static injectMSupportFragmentInjector(Lcom/voxel/launcher3/BaseApplication;Ldagger/android/DispatchingAndroidInjector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/launcher3/BaseApplication;",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/voxel/launcher3/BaseApplication;->mSupportFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method
