.class Lcom/voxel/launcher3/Launcher$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$1;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$1;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$1;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mWorkspace:Lcom/voxel/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/voxel/launcher3/Workspace;->buildPageHardwareLayers()V

    :cond_0
    return-void
.end method
