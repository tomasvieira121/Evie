.class Lcom/voxel/launcher3/CellLayout$ViewCluster$PositionComparator;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/CellLayout$ViewCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/voxel/launcher3/CellLayout$ViewCluster;

.field whichEdge:I


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/CellLayout$ViewCluster;)V
    .locals 0

    .line 1725
    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/voxel/launcher3/CellLayout$ViewCluster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1726
    iput p1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 1

    .line 1729
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/voxel/launcher3/CellLayout$ViewCluster;

    iget-object v0, v0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->config:Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    .line 1730
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/voxel/launcher3/CellLayout$ViewCluster;

    iget-object v0, v0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->config:Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    .line 1731
    iget v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    packed-switch v0, :pswitch_data_0

    .line 1740
    iget p1, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget p2, p2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    sub-int/2addr p1, p2

    return p1

    .line 1735
    :pswitch_0
    iget p1, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget p2, p2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    sub-int/2addr p1, p2

    return p1

    .line 1737
    :pswitch_1
    iget v0, p2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget p2, p2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v0, p2

    iget p2, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget p1, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr p2, p1

    sub-int/2addr v0, p2

    return v0

    .line 1733
    :pswitch_2
    iget v0, p2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget p2, p2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v0, p2

    iget p2, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget p1, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr p2, p1

    sub-int/2addr v0, p2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1725
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/CellLayout$ViewCluster$PositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
