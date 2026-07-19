.class public Lcom/voxel/simplesearchlauncher/importer/ImportData;
.super Ljava/lang/Object;
.source "ImportData.java"


# instance fields
.field public cols:I

.field public iconScale:F

.field public itemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mainScreenId:I

.field public rows:I

.field public screens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/voxel/simplesearchlauncher/importer/ImportData;->rows:I

    .line 17
    iput v0, p0, Lcom/voxel/simplesearchlauncher/importer/ImportData;->cols:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    iput v0, p0, Lcom/voxel/simplesearchlauncher/importer/ImportData;->iconScale:F

    return-void
.end method
