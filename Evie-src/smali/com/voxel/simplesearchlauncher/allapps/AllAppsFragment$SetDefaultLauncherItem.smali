.class Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$SetDefaultLauncherItem;
.super Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;
.source "AllAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDefaultLauncherItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V
    .locals 0

    .line 827
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$SetDefaultLauncherItem;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$1;)V
    .locals 0

    .line 827
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$SetDefaultLauncherItem;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    return-void
.end method


# virtual methods
.method public getItemId()Ljava/lang/String;
    .locals 1

    const-string v0, "__setDefaultLauncherItem__"

    return-object v0
.end method

.method public handleAction(Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData$ActionType;Landroid/app/Activity;)V
    .locals 0

    .line 845
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$SetDefaultLauncherItem;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2, p2}, Lcom/voxel/simplesearchlauncher/activity/ResetLauncherActivity;->resetHome(Landroid/app/Activity;ZZ)V

    return-void
.end method
