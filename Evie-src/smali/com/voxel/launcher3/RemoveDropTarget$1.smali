.class Lcom/voxel/launcher3/RemoveDropTarget$1;
.super Landroid/os/AsyncTask;
.source "RemoveDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/RemoveDropTarget;->completeDrop(Lcom/voxel/launcher3/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/RemoveDropTarget;

.field final synthetic val$appWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

.field final synthetic val$launcherAppWidgetInfo:Lcom/voxel/launcher3/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/RemoveDropTarget;Lcom/voxel/launcher3/LauncherAppWidgetInfo;Lcom/voxel/launcher3/LauncherAppWidgetHost;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/voxel/launcher3/RemoveDropTarget$1;->this$0:Lcom/voxel/launcher3/RemoveDropTarget;

    iput-object p2, p0, Lcom/voxel/launcher3/RemoveDropTarget$1;->val$launcherAppWidgetInfo:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    iput-object p3, p0, Lcom/voxel/launcher3/RemoveDropTarget$1;->val$appWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 266
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/RemoveDropTarget$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "================= Widget deleted "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/voxel/launcher3/RemoveDropTarget$1;->val$launcherAppWidgetInfo:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    iget-object p1, p0, Lcom/voxel/launcher3/RemoveDropTarget$1;->val$appWidgetHost:Lcom/voxel/launcher3/LauncherAppWidgetHost;

    iget-object v0, p0, Lcom/voxel/launcher3/RemoveDropTarget$1;->val$launcherAppWidgetInfo:Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    const/4 p1, 0x0

    return-object p1
.end method
