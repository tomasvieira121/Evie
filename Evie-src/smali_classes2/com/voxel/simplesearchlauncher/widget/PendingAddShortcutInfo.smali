.class public Lcom/voxel/simplesearchlauncher/widget/PendingAddShortcutInfo;
.super Lcom/voxel/launcher3/PendingAddItemInfo;
.source "PendingAddShortcutInfo.java"


# instance fields
.field activityInfo:Landroid/content/pm/ActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ActivityInfo;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/voxel/launcher3/PendingAddItemInfo;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddShortcutInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 35
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddShortcutInfo;->componentName:Landroid/content/ComponentName;

    const/4 p1, 0x1

    .line 36
    iput p1, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddShortcutInfo;->itemType:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "PendingAddShortcutInfo package=%s, name=%s"

    const/4 v1, 0x2

    .line 41
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddShortcutInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/widget/PendingAddShortcutInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
