.class public abstract Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;
.super Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;
.source "WidgetExtractor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WidgetExtractor"


# instance fields
.field protected mActivityName:Ljava/lang/String;

.field protected mFieldId:I

.field protected mHostView:Landroid/appwidget/AppWidgetHostView;

.field protected mWidgetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createWidget(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mWidgetId:I

    .line 105
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->restoreWidget()V

    return-void
.end method

.method public extractNotificationInfo()Lcom/voxel/simplesearchlauncher/notification/NotificationCount;
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mHostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->getFieldId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 77
    :cond_1
    new-instance v1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->getPackageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->getActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 79
    check-cast v0, Landroid/widget/TextView;

    .line 81
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->parseCount(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    sget-object v2, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mActivityName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mActivityName:Ljava/lang/String;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Ljava/lang/String;
    .locals 4

    .line 131
    iget v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mWidgetId:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 135
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    .line 136
    iget v3, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mWidgetId:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public getFieldId()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mFieldId:I

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->getPackageResourceId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mFieldId:I

    .line 100
    :cond_0
    iget v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mFieldId:I

    return v0
.end method

.method protected abstract getFieldName()Ljava/lang/String;
.end method

.method protected getPackageResourceId(Ljava/lang/String;)I
    .locals 3

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->getWidgetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    .line 170
    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public abstract getWidgetComponent()Landroid/content/ComponentName;
.end method

.method public getWidgetId()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mWidgetId:I

    return v0
.end method

.method public isConfigured()Z
    .locals 1

    .line 126
    iget v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mWidgetId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onWidgetRestored()V
    .locals 0

    return-void
.end method

.method protected parseCount(Ljava/lang/CharSequence;)I
    .locals 0

    .line 91
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public registerObserver()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->startListeningIfNeeded()V

    return-void
.end method

.method public requiresConfig()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public restoreWidget()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 111
    iget v1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;

    move-result-object v1

    .line 113
    invoke-virtual {v1, p0, v0}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->createViewForExtractor(Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mHostView:Landroid/appwidget/AppWidgetHostView;

    .line 114
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->onWidgetRestored()V

    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    .line 147
    iget p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mWidgetId:I

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mHostView:Landroid/appwidget/AppWidgetHostView;

    .line 149
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;

    move-result-object p1

    .line 150
    iget v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mWidgetId:I

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHost;->deleteAppWidgetId(I)V

    :cond_0
    const/4 p1, 0x0

    .line 152
    iput p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mWidgetId:I

    return-void

    .line 157
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 158
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mWidgetId:I

    .line 159
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->restoreWidget()V

    .line 160
    sget-object p1, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restored widget "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->mWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method
