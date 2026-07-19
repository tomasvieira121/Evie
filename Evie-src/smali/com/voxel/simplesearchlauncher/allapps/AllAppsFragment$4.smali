.class Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$4;
.super Landroid/database/DataSetObserver;
.source "AllAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$4;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$300(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 172
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$4;->onChanged()V

    return-void
.end method
