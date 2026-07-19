.class public Lcom/voxel/launcher3/LauncherAppWidgetInfo;
.super Lcom/voxel/launcher3/ItemInfo;
.source "LauncherAppWidgetInfo.java"


# instance fields
.field public appWidgetId:I

.field public hostView:Landroid/appwidget/AppWidgetHostView;

.field installProgress:I

.field private mHasNotifiedInitialWidgetSizeChanged:Z

.field minHeight:I

.field minWidth:I

.field public providerName:Landroid/content/ComponentName;

.field public restoreStatus:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/voxel/launcher3/ItemInfo;-><init>()V

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 67
    iput v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->minWidth:I

    .line 68
    iput v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->minHeight:I

    .line 78
    iput v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->installProgress:I

    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x4

    .line 89
    iput v1, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->itemType:I

    .line 90
    iput p1, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 91
    iput-object p2, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 95
    iput v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 96
    iput v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 98
    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    const/4 p1, 0x0

    .line 99
    iput p1, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    return-void
.end method


# virtual methods
.method public final hasRestoreFlag(I)Z
    .locals 1

    .line 144
    iget v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isWidgetIdValid()Z
    .locals 2

    .line 140
    iget v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method notifyWidgetSizeChanged(Lcom/voxel/launcher3/Launcher;)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v1, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->spanX:I

    iget v2, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v0, p1, v1, v2}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/voxel/launcher3/Launcher;II)V

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    return-void
.end method

.method onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 1

    .line 104
    invoke-super {p0, p1, p2}, Lcom/voxel/launcher3/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    const-string p1, "appWidgetId"

    .line 105
    iget v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "appWidgetProvider"

    .line 106
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "restored"

    .line 107
    iget v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method onBindAppWidget(Lcom/voxel/launcher3/Launcher;)V
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/voxel/launcher3/Launcher;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidget(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/voxel/launcher3/ItemInfo;->unbind()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    return-void
.end method
