.class Lcom/voxel/launcher3/FolderIcon$2;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Lcom/voxel/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/FolderIcon;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/FolderIcon;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/voxel/launcher3/FolderIcon$2;->this$0:Lcom/voxel/launcher3/FolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/voxel/launcher3/Alarm;)V
    .locals 1

    .line 450
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon$2;->this$0:Lcom/voxel/launcher3/FolderIcon;

    invoke-static {p1}, Lcom/voxel/launcher3/FolderIcon;->access$300(Lcom/voxel/launcher3/FolderIcon;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    instance-of p1, p1, Lcom/voxel/launcher3/AppInfo;

    if-eqz p1, :cond_0

    .line 452
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon$2;->this$0:Lcom/voxel/launcher3/FolderIcon;

    invoke-static {p1}, Lcom/voxel/launcher3/FolderIcon;->access$300(Lcom/voxel/launcher3/FolderIcon;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/AppInfo;

    invoke-virtual {p1}, Lcom/voxel/launcher3/AppInfo;->makeShortcut()Lcom/voxel/launcher3/ShortcutInfo;

    move-result-object p1

    const/4 v0, 0x1

    .line 453
    iput v0, p1, Lcom/voxel/launcher3/ShortcutInfo;->spanX:I

    .line 454
    iput v0, p1, Lcom/voxel/launcher3/ShortcutInfo;->spanY:I

    goto :goto_0

    .line 457
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon$2;->this$0:Lcom/voxel/launcher3/FolderIcon;

    invoke-static {p1}, Lcom/voxel/launcher3/FolderIcon;->access$300(Lcom/voxel/launcher3/FolderIcon;)Lcom/voxel/launcher3/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/ShortcutInfo;

    .line 459
    :goto_0
    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon$2;->this$0:Lcom/voxel/launcher3/FolderIcon;

    invoke-static {v0}, Lcom/voxel/launcher3/FolderIcon;->access$400(Lcom/voxel/launcher3/FolderIcon;)Lcom/voxel/launcher3/Folder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/launcher3/Folder;->beginExternalDrag(Lcom/voxel/launcher3/ShortcutInfo;)V

    .line 460
    iget-object p1, p0, Lcom/voxel/launcher3/FolderIcon$2;->this$0:Lcom/voxel/launcher3/FolderIcon;

    iget-object p1, p1, Lcom/voxel/launcher3/FolderIcon;->mLauncher:Lcom/voxel/launcher3/Launcher;

    iget-object v0, p0, Lcom/voxel/launcher3/FolderIcon$2;->this$0:Lcom/voxel/launcher3/FolderIcon;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/Launcher;->openFolder(Lcom/voxel/launcher3/FolderIcon;)V

    return-void
.end method
