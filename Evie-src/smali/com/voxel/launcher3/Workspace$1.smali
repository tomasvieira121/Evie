.class Lcom/voxel/launcher3/Workspace$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Workspace;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace$1;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/voxel/launcher3/Workspace$1;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v0}, Lcom/voxel/launcher3/Workspace;->access$000(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/Launcher;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherModel;->bindRemainingSynchronousPages()V

    return-void
.end method
