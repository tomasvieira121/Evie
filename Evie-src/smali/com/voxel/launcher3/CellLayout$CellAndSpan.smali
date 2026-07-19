.class Lcom/voxel/launcher3/CellLayout$CellAndSpan;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellAndSpan"
.end annotation


# instance fields
.field spanX:I

.field spanY:I

.field final synthetic this$0:Lcom/voxel/launcher3/CellLayout;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/CellLayout;)V
    .locals 0

    .line 2690
    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/voxel/launcher3/CellLayout;IIII)V
    .locals 0

    .line 2700
    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2701
    iput p2, p0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    .line 2702
    iput p3, p0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    .line 2703
    iput p4, p0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    .line 2704
    iput p5, p0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    return-void
.end method


# virtual methods
.method public copy(Lcom/voxel/launcher3/CellLayout$CellAndSpan;)V
    .locals 1

    .line 2694
    iget v0, p0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iput v0, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    .line 2695
    iget v0, p0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iput v0, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    .line 2696
    iget v0, p0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    iput v0, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    .line 2697
    iget v0, p0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    iput v0, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
