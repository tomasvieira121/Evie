.class public Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;
.super Lcom/voxel/launcher3/PendingAddItemInfo;
.source "PendingAddWidgetInfo.java"


# instance fields
.field public bindOptions:Landroid/os/Bundle;

.field public boundWidget:Landroid/appwidget/AppWidgetHostView;

.field public icon:I

.field public info:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

.field public previewImage:I


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;Landroid/os/Parcelable;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/voxel/launcher3/PendingAddItemInfo;-><init>()V

    const/4 p3, 0x0

    .line 38
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 41
    iget-boolean p3, p2, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x5

    .line 42
    iput p3, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->itemType:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    .line 44
    iput p3, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->itemType:I

    .line 46
    :goto_0
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->info:Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;

    .line 47
    invoke-static {p1}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    .line 48
    iget-object p1, p2, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 49
    iget p1, p2, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->previewImage:I

    iput p1, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->previewImage:I

    .line 50
    iget p1, p2, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->icon:I

    iput p1, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->icon:I

    .line 52
    iget p1, p2, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iput p1, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->spanX:I

    .line 53
    iget p1, p2, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iput p1, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->spanY:I

    .line 54
    iget p1, p2, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput p1, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 55
    iget p1, p2, Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput p1, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->minSpanY:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "PendingAddWidgetInfo package=%s, name=%s"

    const/4 v1, 0x2

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 65
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 64
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
