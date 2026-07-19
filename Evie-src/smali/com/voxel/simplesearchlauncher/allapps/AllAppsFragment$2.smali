.class Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$2;
.super Ljava/lang/Object;
.source "AllAppsFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 137
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const v0, 0x7f0a0039

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v2}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$100(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 145
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$100(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-interface {v1, v2, p1, v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$OnFragmentInteractionListener;->onAllAppsLongPress(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Landroid/view/View;Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method
