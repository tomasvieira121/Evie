.class final Lcom/voxel/launcher3/CellLayout$CellInfo;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CellInfo"
.end annotation


# instance fields
.field cell:Landroid/view/View;

.field cellX:I

.field cellY:I

.field container:J

.field screenId:J

.field spanX:I

.field spanY:I


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/voxel/launcher3/ItemInfo;)V
    .locals 2

    .line 3317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3310
    iput v0, p0, Lcom/voxel/launcher3/CellLayout$CellInfo;->cellX:I

    .line 3311
    iput v0, p0, Lcom/voxel/launcher3/CellLayout$CellInfo;->cellY:I

    .line 3318
    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 3319
    iget p1, p2, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iput p1, p0, Lcom/voxel/launcher3/CellLayout$CellInfo;->cellX:I

    .line 3320
    iget p1, p2, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iput p1, p0, Lcom/voxel/launcher3/CellLayout$CellInfo;->cellY:I

    .line 3321
    iget p1, p2, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iput p1, p0, Lcom/voxel/launcher3/CellLayout$CellInfo;->spanX:I

    .line 3322
    iget p1, p2, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    iput p1, p0, Lcom/voxel/launcher3/CellLayout$CellInfo;->spanY:I

    .line 3323
    iget-wide v0, p2, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    iput-wide v0, p0, Lcom/voxel/launcher3/CellLayout$CellInfo;->screenId:J

    .line 3324
    iget-wide p1, p2, Lcom/voxel/launcher3/ItemInfo;->container:J

    iput-wide p1, p0, Lcom/voxel/launcher3/CellLayout$CellInfo;->container:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 3329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cell[view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/CellLayout$CellInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
