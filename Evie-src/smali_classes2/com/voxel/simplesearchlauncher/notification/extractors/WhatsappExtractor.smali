.class public Lcom/voxel/simplesearchlauncher/notification/extractors/WhatsappExtractor;
.super Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;
.source "WhatsappExtractor.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getConfigKey()Ljava/lang/String;
    .locals 1

    const-string v0, "extractor.whatsapp"

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "count"

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.whatsapp"

    return-object v0
.end method

.method public getWidgetComponent()Landroid/content/ComponentName;
    .locals 3

    .line 26
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/WhatsappExtractor;->getPackageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.whatsapp.appwidget.WidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onWidgetRestored()V
    .locals 6

    .line 36
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;->onWidgetRestored()V

    .line 37
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/WhatsappExtractor;->mHostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/16 v3, 0x50

    const/16 v4, 0x64

    const/16 v5, 0x50

    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    return-void
.end method
