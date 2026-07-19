.class public final Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "InterceptingWidgetHost.java"


# static fields
.field private static sInstance:Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;


# instance fields
.field private mIsListening:Z

.field private mWidgetExtractors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->mWidgetExtractors:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized deleteInstanceHost()V
    .locals 2

    const-class v0, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->sInstance:Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;

    if-eqz v1, :cond_0

    .line 37
    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->sInstance:Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->deleteHost()V

    const/4 v1, 0x0

    .line 38
    sput-object v1, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->sInstance:Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;
    .locals 3

    const-class v0, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->sInstance:Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;

    const/16 v2, 0x7dd

    invoke-direct {v1, p0, v2}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->sInstance:Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;

    .line 32
    :cond_0
    sget-object p0, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->sInstance:Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public createViewForExtractor(Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->mWidgetExtractors:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->getWidgetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->getWidgetId()I

    move-result p1

    invoke-super {p0, v0, p1, p2}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p1

    return-object p1
.end method

.method public deleteAppWidgetId(I)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->mWidgetExtractors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    return-void
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 0

    .line 62
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->mWidgetExtractors:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;

    .line 63
    new-instance p3, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHostView;

    invoke-direct {p3, p1, p2}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHostView;-><init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;)V

    return-object p3
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 81
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->mWidgetExtractors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;

    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->restoreWidget()V

    .line 85
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->notifyListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized startListeningIfNeeded()V
    .locals 1

    monitor-enter p0

    .line 49
    :try_start_0
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->mIsListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 50
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_1
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->sInstance:Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->startListening()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->mIsListening:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    :try_start_2
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
