.class public Lcom/voxel/launcher3/CellParams;
.super Ljava/lang/Object;
.source "CellParams.java"


# instance fields
.field public backgroundAlpha:F

.field public backgroundBlur:Z

.field cellContentHeightPx:I

.field cellContentWidthPx:I

.field cellHeightPx:I

.field cellWidthPx:I

.field public enabled:Z

.field iconDrawablePaddingPx:I

.field public iconScale:F

.field iconSizePx:I

.field iconTextSizePx:I

.field public inheritWorkspace:Z

.field public numColumns:F

.field public numRows:F

.field public showLabels:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellParams;->enabled:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    iput v0, p0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    .line 16
    iput v0, p0, Lcom/voxel/launcher3/CellParams;->backgroundAlpha:F

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellParams;->backgroundBlur:Z

    .line 18
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellParams;->inheritWorkspace:Z

    return-void
.end method


# virtual methods
.method public getCellContentHeightPx()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/voxel/launcher3/CellParams;->cellContentHeightPx:I

    return v0
.end method

.method public getCellContentWidthPx()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/voxel/launcher3/CellParams;->cellContentWidthPx:I

    return v0
.end method

.method public getCellHeightPx()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/voxel/launcher3/CellParams;->cellHeightPx:I

    return v0
.end method

.method public getCellWidthPx()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/voxel/launcher3/CellParams;->cellWidthPx:I

    return v0
.end method

.method public getIconDrawablePaddingPx()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/voxel/launcher3/CellParams;->iconDrawablePaddingPx:I

    return v0
.end method

.method public getIconSizePx()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    return v0
.end method

.method public getIconTextSizePx()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/voxel/launcher3/CellParams;->iconTextSizePx:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellParams(numRows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/CellParams;->numRows:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", numColumns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/CellParams;->numColumns:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/voxel/launcher3/CellParams;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showLabels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", iconScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/CellParams;->iconScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/CellParams;->backgroundAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundBlur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/voxel/launcher3/CellParams;->backgroundBlur:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", inheritWorkspace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/voxel/launcher3/CellParams;->inheritWorkspace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", iconSizePx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellParams;->getIconSizePx()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconTextSizePx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellParams;->getIconTextSizePx()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconDrawablePaddingPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellParams;->getIconDrawablePaddingPx()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellWidthPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellParams;->getCellWidthPx()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellHeightPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellParams;->getCellHeightPx()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellContentWidthPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellParams;->getCellContentWidthPx()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellContentHeightPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/voxel/launcher3/CellParams;->getCellContentHeightPx()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
