.class public abstract Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;
.super Ljava/lang/Object;
.source "AppWidgetManagerCompat.java"


# static fields
.field private static sInstance:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;
    .locals 2

    .line 44
    sget-object v0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->sInstance:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    if-nez v1, :cond_1

    .line 46
    sget-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->sInstance:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatV16;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompatV16;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->sInstance:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    .line 52
    :cond_1
    :goto_0
    sget-object p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->sInstance:Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z
.end method

.method public abstract findProvider(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;
.end method

.method public abstract getAllProviders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllProvidersMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/voxel/launcher3/util/ComponentKey;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    return-object p1
.end method

.method public abstract getBadgeBitmap(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method

.method public getLauncherAppWidgetInfo(I)Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;
    .locals 1

    .line 69
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public abstract getUser(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)Lcom/voxel/launcher3/compat/UserHandleCompat;
.end method

.method public abstract loadIcon(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;Lcom/voxel/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract loadLabel(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)Ljava/lang/String;
.end method

.method public abstract loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V
.end method
