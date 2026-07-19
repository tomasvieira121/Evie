.class public Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;
.super Ljava/lang/Object;
.source "AppsInfoIconFilter.java"


# instance fields
.field private mAppsInfoDataHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

.field private mContext:Landroid/content/Context;

.field private mLocalAppsLoaded:Z

.field private final mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;->mLocalAppsLoaded:Z

    .line 26
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    .line 28
    new-instance p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;->mAppsInfoDataHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    .line 29
    new-instance p1, Lcom/voxel/simplesearchlauncher/model/-$$Lambda$AppsInfoIconFilter$HVMK_zGNtltcC-Do-FuhWKlClbU;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/model/-$$Lambda$AppsInfoIconFilter$HVMK_zGNtltcC-Do-FuhWKlClbU;-><init>(Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;)V

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper;->registerStartupCompletedListener(Lcom/voxel/simplesearchlauncher/model/managers/LoadingNotificationsHelper$StartupCompletedListener;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;)V
    .locals 1

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;->mLocalAppsLoaded:Z

    return-void
.end method


# virtual methods
.method public getForcedCustomIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getApp(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getCustomIcon()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 42
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2

    .line 44
    :cond_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;->mLocalAppsLoaded:Z

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;->mAppsInfoDataHelper:Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->getApp(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 48
    iget-object p2, p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    .line 49
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/model/AppsInfoIconFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->icon:Landroid/graphics/Bitmap;

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
