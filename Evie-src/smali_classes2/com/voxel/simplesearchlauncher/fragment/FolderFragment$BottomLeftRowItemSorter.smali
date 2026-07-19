.class Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$BottomLeftRowItemSorter;
.super Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;
.source "FolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BottomLeftRowItemSorter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 957
    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;)V
    .locals 0

    .line 957
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$BottomLeftRowItemSorter;-><init>()V

    return-void
.end method


# virtual methods
.method distanceSquaredToTarget(FFFFIIFF)F
    .locals 0

    int-to-float p5, p6

    mul-float p5, p5, p8

    add-float/2addr p4, p5

    .line 976
    invoke-static {p1, p2, p3, p4}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$1700(FFFF)F

    move-result p1

    return p1
.end method

.method sort(Ljava/util/List;II)Ljava/util/List;
    .locals 4
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

    .line 961
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_2

    add-int/lit8 v1, p3, -0x1

    :goto_1
    if-ltz v1, :cond_1

    mul-int v2, p2, p3

    add-int/2addr v2, v1

    .line 966
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 967
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
