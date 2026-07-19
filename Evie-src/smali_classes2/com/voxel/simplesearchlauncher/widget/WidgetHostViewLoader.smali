.class public Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;
.super Ljava/lang/Object;
.source "WidgetHostViewLoader.java"

# interfaces
.implements Lcom/voxel/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field private mBindWidgetRunnable:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field mInflateWidgetRunnable:Ljava/lang/Runnable;

.field final mInfo:Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

.field mLauncher:Lcom/voxel/launcher3/Launcher;

.field final mView:Landroid/view/View;

.field mWidgetLoadingId:I


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/Launcher;Landroid/view/View;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    .line 27
    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    .line 41
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mLauncher:Lcom/voxel/launcher3/Launcher;

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mView:Landroid/view/View;

    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mInfo:Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    return-void
.end method

.method public static getDefaultOptionsForWidget(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;
    .locals 4

    .line 151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 152
    sget-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 153
    iget v1, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->spanX:I

    iget v3, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->spanY:I

    invoke-static {p0, v1, v3, v0}, Lcom/voxel/launcher3/AppWidgetResizeFrame;->getWidgetSizeRanges(Lcom/voxel/launcher3/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 154
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {p0, p1, v2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 157
    invoke-virtual {p0}, Lcom/voxel/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 158
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, p0

    float-to-int v1, v1

    .line 159
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p1

    int-to-float p1, v2

    div-float/2addr p1, p0

    float-to-int p0, p1

    .line 161
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string p1, "appWidgetMinWidth"

    .line 162
    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "appWidgetMinHeight"

    .line 164
    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p0

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "appWidgetMaxWidth"

    .line 166
    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "appWidgetMaxHeight"

    .line 168
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p0

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v2
.end method

.method public static synthetic lambda$preloadWidget$0(Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;Landroid/os/Bundle;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getAppWidgetHost()Lcom/voxel/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    iput v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    .line 104
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    iget v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$preloadWidget$1(Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)V
    .locals 5

    .line 116
    iget v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getAppWidgetHost()Lcom/voxel/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget v3, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    invoke-virtual {v0, v2, v3, p1}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mInfo:Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iput-object p1, v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 124
    iput v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    const/4 v0, 0x4

    .line 126
    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getWorkspace()Lcom/voxel/launcher3/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mInfo:Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iget v1, v1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->spanX:I

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mInfo:Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iget v2, v2, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->spanY:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/voxel/launcher3/Workspace;->estimateItemSize(IIZ)[I

    move-result-object v0

    .line 130
    new-instance v1, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;

    aget v2, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-direct {v1, v2, v0}, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(II)V

    .line 132
    iput v3, v1, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    iput v3, v1, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    .line 133
    iput-boolean v4, v1, Lcom/voxel/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    .line 134
    invoke-virtual {p1, v1}, Landroid/appwidget/AppWidgetHostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 139
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mInfo:Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragController()Lcom/voxel/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/voxel/launcher3/dragndrop/DragController;->removeDragListener(Lcom/voxel/launcher3/dragndrop/DragController$DragListener;)V

    .line 62
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    iget v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getAppWidgetHost()Lcom/voxel/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    iget v2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    invoke-virtual {v0, v2}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 68
    iput v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mInfo:Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getDragLayer()Lcom/voxel/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mInfo:Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mLauncher:Lcom/voxel/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getAppWidgetHost()Lcom/voxel/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mInfo:Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iget-object v1, v1, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 78
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mInfo:Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    :cond_1
    return-void
.end method

.method public onDragStart(Lcom/voxel/launcher3/DropTarget$DragObject;Lcom/voxel/launcher3/dragndrop/DragOptions;)V
    .locals 0

    return-void
.end method

.method public preloadWidget()Z
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mInfo:Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->info:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    .line 88
    iget-boolean v1, v0, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mInfo:Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    invoke-static {v1, v3}, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v1

    .line 94
    iget-object v3, v0, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    .line 95
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mInfo:Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    return v2

    .line 99
    :cond_1
    new-instance v2, Lcom/voxel/simplesearchlauncher/widget/-$$Lambda$WidgetHostViewLoader$nlp2ZLKLqgZ9X2vdNOJuWsRCqlA;

    invoke-direct {v2, p0, v0, v1}, Lcom/voxel/simplesearchlauncher/widget/-$$Lambda$WidgetHostViewLoader$nlp2ZLKLqgZ9X2vdNOJuWsRCqlA;-><init>(Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    .line 112
    new-instance v1, Lcom/voxel/simplesearchlauncher/widget/-$$Lambda$WidgetHostViewLoader$3u0p7lLklpQSJBozmo9sA9okku0;

    invoke-direct {v1, p0, v0}, Lcom/voxel/simplesearchlauncher/widget/-$$Lambda$WidgetHostViewLoader$3u0p7lLklpQSJBozmo9sA9okku0;-><init>(Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)V

    iput-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    .line 145
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method
