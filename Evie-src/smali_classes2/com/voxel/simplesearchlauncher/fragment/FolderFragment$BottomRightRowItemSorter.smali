.class Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$BottomRightRowItemSorter;
.super Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;
.source "FolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BottomRightRowItemSorter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 917
    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;)V
    .locals 0

    .line 917
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$BottomRightRowItemSorter;-><init>()V

    return-void
.end method


# virtual methods
.method distanceSquaredToTarget(FFFFIIFF)F
    .locals 0

    int-to-float p5, p5

    mul-float p5, p5, p7

    add-float/2addr p3, p5

    int-to-float p5, p6

    mul-float p5, p5, p8

    add-float/2addr p4, p5

    .line 930
    invoke-static {p1, p2, p3, p4}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;->access$1700(FFFF)F

    move-result p1

    return p1
.end method

.method sort(Ljava/util/List;II)Ljava/util/List;
    .locals 1
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

    .line 921
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 922
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_0

    .line 923
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method
