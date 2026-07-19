.class public Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "InterceptingWidgetHostView.java"


# instance fields
.field mExtractor:Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHostView;->mExtractor:Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;

    return-void
.end method


# virtual methods
.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 0

    .line 25
    :try_start_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 26
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHostView;->mExtractor:Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;

    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/InterceptingWidgetHostView;->mExtractor:Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->notifyListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
