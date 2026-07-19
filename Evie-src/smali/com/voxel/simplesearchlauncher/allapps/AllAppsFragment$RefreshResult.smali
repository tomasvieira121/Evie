.class Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;
.super Ljava/lang/Object;
.source "AllAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshResult"
.end annotation


# instance fields
.field mMapIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSearchItemDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/model/itemdata/SearchItemData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;->this$0:Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$1;)V
    .locals 0

    .line 441
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$RefreshResult;-><init>(Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment;)V

    return-void
.end method
