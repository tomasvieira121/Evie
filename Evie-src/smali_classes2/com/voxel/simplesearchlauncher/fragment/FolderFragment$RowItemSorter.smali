.class abstract Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;
.super Ljava/lang/Object;
.source "FolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/fragment/FolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "RowItemSorter"
.end annotation


# static fields
.field private static final SORTERS:[Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    .line 874
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;

    new-instance v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TopLeftRowItemSorter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TopLeftRowItemSorter;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TopRightRowItemSorter;

    invoke-direct {v1, v2}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$TopRightRowItemSorter;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$BottomLeftRowItemSorter;

    invoke-direct {v1, v2}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$BottomLeftRowItemSorter;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$BottomRightRowItemSorter;

    invoke-direct {v1, v2}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$BottomRightRowItemSorter;-><init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;->SORTERS:[Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$1;)V
    .locals 0

    .line 873
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;-><init>()V

    return-void
.end method

.method static findBestRowItemSorter(FFFFIIFF)Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;
    .locals 15

    .line 877
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;->SORTERS:[Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 879
    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;->SORTERS:[Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v13, v1, v3

    .line 880
    new-instance v14, Landroid/util/Pair;

    move-object v4, v13

    move v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v4 .. v12}, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;->distanceSquaredToTarget(FFFFIIFF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v14, v13, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 885
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_1

    .line 891
    :cond_2
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 896
    :cond_3
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/voxel/simplesearchlauncher/fragment/FolderFragment$RowItemSorter;

    return-object v0
.end method


# virtual methods
.method abstract distanceSquaredToTarget(FFFFIIFF)F
.end method

.method abstract sort(Ljava/util/List;II)Ljava/util/List;
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
.end method
