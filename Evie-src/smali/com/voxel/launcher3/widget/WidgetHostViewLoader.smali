.class public Lcom/voxel/launcher3/widget/WidgetHostViewLoader;
.super Ljava/lang/Object;
.source "WidgetHostViewLoader.java"


# direct methods
.method public static getDefaultOptionsForWidget(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;
    .locals 4

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 19
    sget-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 20
    iget v1, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->spanX:I

    iget v3, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->spanY:I

    invoke-static {p0, v1, v3, v0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->getWidgetSizeRanges(Lcom/voxel/launcher3/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 21
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {p0, p1, v2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 25
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, p0

    float-to-int v1, v1

    .line 26
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p1

    int-to-float p1, v2

    div-float/2addr p1, p0

    float-to-int p0, p1

    .line 28
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string p1, "appWidgetMinWidth"

    .line 29
    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "appWidgetMinHeight"

    .line 31
    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p0

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "appWidgetMaxWidth"

    .line 33
    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "appWidgetMaxHeight"

    .line 35
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p0

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v2
.end method
