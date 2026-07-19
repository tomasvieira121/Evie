.class public Lcom/voxel/launcher3/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public canReorder:Z

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public controlsOwnPadding:Z

.field dropped:Z

.field public isFullscreen:Z

.field public isLockedToGrid:Z

.field public tmpCellX:I

.field public tmpCellY:I

.field public useTmpCoords:Z

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    const/4 v0, -0x1

    .line 3237
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x1

    .line 3188
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    const/4 v1, 0x0

    .line 3193
    iput-boolean v1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    .line 3199
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 3205
    iput-boolean v1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->controlsOwnPadding:Z

    .line 3238
    iput p1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 3239
    iput p2, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 3240
    iput p3, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 3241
    iput p4, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3217
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 3188
    iput-boolean p1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    const/4 p2, 0x0

    .line 3193
    iput-boolean p2, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    .line 3199
    iput-boolean p1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 3205
    iput-boolean p2, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->controlsOwnPadding:Z

    .line 3218
    iput p1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 3219
    iput p1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3223
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 3188
    iput-boolean p1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    const/4 v0, 0x0

    .line 3193
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    .line 3199
    iput-boolean p1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 3205
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->controlsOwnPadding:Z

    .line 3224
    iput p1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 3225
    iput p1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method


# virtual methods
.method public setup(IIIIZI)V
    .locals 4

    .line 3246
    iget-boolean v0, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v0, :cond_3

    .line 3247
    iget v0, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 3248
    iget v1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 3249
    iget-boolean v2, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 3250
    :goto_0
    iget-boolean v3, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    :goto_1
    if-eqz p5, :cond_2

    sub-int/2addr p6, v2

    .line 3253
    iget p5, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    sub-int v2, p6, p5

    :cond_2
    mul-int p5, v0, p1

    add-int/lit8 v0, v0, -0x1

    mul-int v0, v0, p3

    add-int/2addr p5, v0

    .line 3256
    iget p6, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p5, p6

    iget p6, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p5, p6

    iput p5, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->width:I

    mul-int p5, v1, p2

    add-int/lit8 v1, v1, -0x1

    mul-int v1, v1, p4

    add-int/2addr p5, v1

    .line 3258
    iget p6, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr p5, p6

    iget p6, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p5, p6

    iput p5, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->height:I

    add-int/2addr p1, p3

    mul-int v2, v2, p1

    .line 3260
    iget p1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->x:I

    add-int/2addr p2, p4

    mul-int v3, v3, p2

    .line 3261
    iget p1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->y:I

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
