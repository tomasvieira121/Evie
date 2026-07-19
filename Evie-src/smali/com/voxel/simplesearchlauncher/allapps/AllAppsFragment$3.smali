.class Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$3;
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

    .line 152
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$3;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$200(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 160
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$3;->onChanged()V

    return-void
.end method
