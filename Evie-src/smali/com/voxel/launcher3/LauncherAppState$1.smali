.class Lcom/voxel/launcher3/LauncherAppState$1;
.super Landroid/database/ContentObserver;
.source "LauncherAppState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/LauncherAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/LauncherAppState;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/LauncherAppState;Landroid/os/Handler;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/voxel/launcher3/LauncherAppState$1;->this$0:Lcom/voxel/launcher3/LauncherAppState;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 150
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherAppState$1;->this$0:Lcom/voxel/launcher3/LauncherAppState;

    invoke-static {p1}, Lcom/voxel/launcher3/LauncherAppState;->access$000(Lcom/voxel/launcher3/LauncherAppState;)Lcom/voxel/launcher3/LauncherModel;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/LauncherModel;->resetLoadedState(ZZ)V

    .line 151
    iget-object p1, p0, Lcom/voxel/launcher3/LauncherAppState$1;->this$0:Lcom/voxel/launcher3/LauncherAppState;

    invoke-static {p1}, Lcom/voxel/launcher3/LauncherAppState;->access$000(Lcom/voxel/launcher3/LauncherAppState;)Lcom/voxel/launcher3/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherModel;->startLoaderFromBackground()V

    return-void
.end method
