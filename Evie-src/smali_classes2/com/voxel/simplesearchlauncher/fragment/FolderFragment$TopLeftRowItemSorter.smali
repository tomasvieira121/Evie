.class Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TopLeftRowItemSorter;
.super Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;
.source "FolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TopLeftRowItemSorter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 905
    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;)V
    .locals 0

    .line 905
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TopLeftRowItemSorter;-><init>()V

    return-void
.end method


# virtual methods
.method distanceSquaredToTarget(FFFFIIFF)F
    .locals 0

    .line 913
    invoke-static {p1, p2, p3, p4}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$1700(FFFF)F

    move-result p1

    return p1
.end method

.method sort(Ljava/util/List;II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TransitionItem;",
            ">;"
        }
    .end annotation

    .line 908
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p2
.end method
