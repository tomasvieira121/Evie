.class public Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;
.super Ljava/lang/Object;
.source "AppsInfoLabelOverrideFilter.java"


# instance fields
.field private final mAppsInfoDataHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

.field private mLocalAppsLoaded:Z

.field private final mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;->mLocalAppsLoaded:Z

    .line 20
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    .line 21
    new-instance p2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-direct {p2, p1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;->mAppsInfoDataHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    .line 22
    new-instance p1, Lcom/voxel/simplesearchlauncher/model/-$$Lambda$AppsInfoLabelOverrideFilter$a0a9eZaN35pN2coCu-BX2zEer2k;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/model/-$$Lambda$AppsInfoLabelOverrideFilter$a0a9eZaN35pN2coCu-BX2zEer2k;-><init>(Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;)V

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;->registerStartupCompletedListener(Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper$StartupCompletedListener;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;)V
    .locals 1

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;->mLocalAppsLoaded:Z

    return-void
.end method


# virtual methods
.method public getLabelOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getApp(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getLabelOverride()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 30
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;->mLocalAppsLoaded:Z

    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoLabelOverrideFilter;->mAppsInfoDataHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->getApp(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 35
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->labelOverride:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
