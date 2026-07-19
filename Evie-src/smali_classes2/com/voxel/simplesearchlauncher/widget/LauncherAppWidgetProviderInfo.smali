.class public Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;
.super Landroid/appwidget/AppWidgetProviderInfo;
.source "LauncherAppWidgetProviderInfo.java"


# instance fields
.field public isCustomWidget:Z

.field public minSpanX:I

.field public minSpanY:I

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    .line 51
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->initSpans()V

    return-void
.end method

.method public static fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;
    .locals 1

    .line 41
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, p0, v0}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 43
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    new-instance p1, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    .line 45
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;Lcom/voxel/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 p2, 0x0

    .line 96
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProviderInfo;->loadIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 86
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_1

    .line 87
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1

    .line 91
    :cond_1
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initSpans()V
    .locals 5

    .line 67
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/voxel/launcher3/DeviceProfile;->getWorkspacePadding()Landroid/graphics/Rect;

    .line 75
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/voxel/launcher3/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v1

    .line 76
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/voxel/launcher3/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v0

    const/4 v2, 0x0

    .line 77
    aget v3, v1, v2

    iput v3, p0, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    const/4 v3, 0x1

    .line 78
    aget v4, v1, v3

    iput v4, p0, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    .line 80
    aget v4, v1, v2

    aget v2, v0, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    .line 81
    aget v1, v1, v3

    aget v0, v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    return-void
.end method
