.class Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$7;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "AllAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->onCreate(Landroid/os/Bundle;)V
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

    .line 250
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$7;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$7;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->access$500(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsGridAdapter;->getSpanSize(I)I

    move-result p1

    return p1
.end method
