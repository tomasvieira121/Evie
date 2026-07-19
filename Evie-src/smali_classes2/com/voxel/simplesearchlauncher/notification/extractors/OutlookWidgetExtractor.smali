.class public Lcom/voxel/simplesearchlauncher/notification/extractors/OutlookWidgetExtractor;
.super Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;
.source "OutlookWidgetExtractor.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getConfigKey()Ljava/lang/String;
    .locals 1

    const-string v0, "extractor.outlook"

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "inbox_unread_counter"

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.microsoft.office.outlook"

    return-object v0
.end method

.method public getWidgetComponent()Landroid/content/ComponentName;
    .locals 3

    .line 19
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/OutlookWidgetExtractor;->getPackageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.acompli.acompli.InboxWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public requiresConfig()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
