.class public abstract Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;
.super Ljava/lang/Object;
.source "Extractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor$OnExtractorUpdateListener;
    }
.end annotation


# static fields
.field private static sRegisteredExtractors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mListener:Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor$OnExtractorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->mContext:Landroid/content/Context;

    .line 70
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized getRegisteredExtractors(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->sRegisteredExtractors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 34
    sget-object p0, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->sRegisteredExtractors:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 36
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->sRegisteredExtractors:Ljava/util/List;

    .line 37
    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->sRegisteredExtractors:Ljava/util/List;

    new-instance v2, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->sRegisteredExtractors:Ljava/util/List;

    new-instance v2, Lcom/voxel/simplesearchlauncher/notification/extractors/OutlookWidgetExtractor;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/OutlookWidgetExtractor;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->sRegisteredExtractors:Ljava/util/List;

    new-instance v2, Lcom/voxel/simplesearchlauncher/notification/extractors/WhatsappExtractor;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/WhatsappExtractor;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->sRegisteredExtractors:Ljava/util/List;

    new-instance v2, Lcom/voxel/simplesearchlauncher/notification/extractors/YahooMailExtractor;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/YahooMailExtractor;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->sRegisteredExtractors:Ljava/util/List;

    new-instance v2, Lcom/voxel/simplesearchlauncher/notification/extractors/EasilyDoWidgetExtractor;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/EasilyDoWidgetExtractor;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object p0, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->sRegisteredExtractors:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getValidExtractors(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 51
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getRegisteredExtractors(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    .line 52
    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getPackageId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 54
    :try_start_0
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 55
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract extractNotificationInfo()Lcom/voxel/simplesearchlauncher/notification/NotificationCount;
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfig()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfigKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getPackageId()Ljava/lang/String;
.end method

.method public getPermissions()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasPermission()Z
    .locals 7

    .line 105
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 109
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 110
    iget-object v6, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isConfigured()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyListener()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->mListener:Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor$OnExtractorUpdateListener;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor$OnExtractorUpdateListener;->onExtractorUpdated(Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public registerObserver()V
    .locals 0

    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor$OnExtractorUpdateListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->mListener:Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor$OnExtractorUpdateListener;

    return-void
.end method

.method public unregisterObserver()V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->hasPermission()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->extractNotificationInfo()Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 130
    :cond_1
    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;->EXTRACTOR:Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->source:Lcom/voxel/simplesearchlauncher/notification/NotificationCount$Source;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v1

    .line 137
    invoke-virtual {v1, v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->setCount(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Extractor"

    const-string v2, "Could not extract data"

    .line 132
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
