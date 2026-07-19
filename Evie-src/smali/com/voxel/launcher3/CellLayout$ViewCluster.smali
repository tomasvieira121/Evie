.class Lcom/voxel/launcher3/CellLayout$ViewCluster;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCluster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/CellLayout$ViewCluster$PositionComparator;
    }
.end annotation


# instance fields
.field bottomEdge:[I

.field bottomEdgeDirty:Z

.field boundingRect:Landroid/graphics/Rect;

.field boundingRectDirty:Z

.field comparator:Lcom/voxel/launcher3/CellLayout$ViewCluster$PositionComparator;

.field config:Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

.field leftEdge:[I

.field leftEdgeDirty:Z

.field rightEdge:[I

.field rightEdgeDirty:Z

.field final synthetic this$0:Lcom/voxel/launcher3/CellLayout;

.field topEdge:[I

.field topEdgeDirty:Z

.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/voxel/launcher3/CellLayout$ItemConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/voxel/launcher3/CellLayout$ItemConfiguration;",
            ")V"
        }
    .end annotation

    .line 1537
    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1528
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    .line 1530
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-static {p1}, Lcom/voxel/launcher3/CellLayout;->access$100(Lcom/voxel/launcher3/CellLayout;)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    .line 1531
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-static {p1}, Lcom/voxel/launcher3/CellLayout;->access$100(Lcom/voxel/launcher3/CellLayout;)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    .line 1532
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-static {p1}, Lcom/voxel/launcher3/CellLayout;->access$200(Lcom/voxel/launcher3/CellLayout;)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->topEdge:[I

    .line 1533
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-static {p1}, Lcom/voxel/launcher3/CellLayout;->access$200(Lcom/voxel/launcher3/CellLayout;)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    .line 1723
    new-instance p1, Lcom/voxel/launcher3/CellLayout$ViewCluster$PositionComparator;

    invoke-direct {p1, p0}, Lcom/voxel/launcher3/CellLayout$ViewCluster$PositionComparator;-><init>(Lcom/voxel/launcher3/CellLayout$ViewCluster;)V

    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->comparator:Lcom/voxel/launcher3/CellLayout$ViewCluster$PositionComparator;

    .line 1538
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    .line 1539
    iput-object p3, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->config:Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

    .line 1540
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->resetEdges()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 1661
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1662
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->resetEdges()V

    return-void
.end method

.method computeEdge(I[I)V
    .locals 7

    .line 1560
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    .line 1562
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->config:Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

    iget-object v2, v2, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    packed-switch p1, :pswitch_data_0

    goto :goto_5

    .line 1589
    :pswitch_0
    iget v3, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v4, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v3, v4

    .line 1590
    iget v4, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    :goto_1
    iget v5, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v6, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_6

    .line 1591
    aget v5, p2, v4

    if-le v3, v5, :cond_0

    .line 1592
    aput v3, p2, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1573
    :pswitch_1
    iget v3, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v4, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v3, v4

    .line 1574
    iget v4, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    :goto_2
    iget v5, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v6, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_6

    .line 1575
    aget v5, p2, v4

    if-le v3, v5, :cond_1

    .line 1576
    aput v3, p2, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1581
    :pswitch_2
    iget v3, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    .line 1582
    iget v4, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    :goto_3
    iget v5, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v6, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_6

    .line 1583
    aget v5, p2, v4

    if-lt v3, v5, :cond_2

    aget v5, p2, v4

    if-gez v5, :cond_3

    .line 1584
    :cond_2
    aput v3, p2, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1565
    :pswitch_3
    iget v3, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    .line 1566
    iget v4, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    :goto_4
    iget v5, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v6, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_6

    .line 1567
    aget v5, p2, v4

    if-lt v3, v5, :cond_4

    aget v5, p2, v4

    if-gez v5, :cond_5

    .line 1568
    :cond_4
    aput v3, p2, v4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBottomEdge()[I
    .locals 2

    .line 1717
    iget-boolean v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->bottomEdgeDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 1718
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1720
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    return-object v0
.end method

.method public getBoundingRect()Landroid/graphics/Rect;
    .locals 8

    .line 1666
    iget-boolean v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->boundingRectDirty:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1668
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1669
    iget-object v3, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->config:Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

    iget-object v3, v3, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v3, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v4, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v5, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v6, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    iget v6, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v2, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, v2

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    goto :goto_0

    .line 1674
    :cond_0
    iget-object v3, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v4, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v5, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v6, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v7, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v6, v7

    iget v7, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v2, v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    .line 1678
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getEdge(I)[I
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1691
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->getBottomEdge()[I

    move-result-object p1

    return-object p1

    .line 1686
    :pswitch_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->getRightEdge()[I

    move-result-object p1

    return-object p1

    .line 1688
    :pswitch_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->getTopEdge()[I

    move-result-object p1

    return-object p1

    .line 1684
    :pswitch_2
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->getLeftEdge()[I

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLeftEdge()[I
    .locals 2

    .line 1696
    iget-boolean v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->leftEdgeDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1697
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1699
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    return-object v0
.end method

.method public getRightEdge()[I
    .locals 2

    .line 1703
    iget-boolean v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->rightEdgeDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 1704
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1706
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    return-object v0
.end method

.method public getTopEdge()[I
    .locals 2

    .line 1710
    iget-boolean v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->topEdgeDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1711
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->topEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1713
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->topEdge:[I

    return-object v0
.end method

.method isViewTouchingEdge(Landroid/view/View;I)Z
    .locals 5

    .line 1601
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->config:Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    .line 1603
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->getEdge(I)[I

    move-result-object v0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_4

    .line 1628
    :pswitch_0
    iget p2, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    :goto_0
    iget v2, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v3, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_4

    .line 1629
    aget v2, v0, p2

    iget v3, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1614
    :pswitch_1
    iget p2, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    :goto_1
    iget v2, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v3, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_4

    .line 1615
    aget v2, v0, p2

    iget v3, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    if-ne v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1621
    :pswitch_2
    iget p2, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    :goto_2
    iget v2, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v3, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_4

    .line 1622
    aget v2, v0, p2

    iget v3, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v4, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v3, v4

    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 1607
    :pswitch_3
    iget p2, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    :goto_3
    iget v2, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    iget v3, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_4

    .line 1608
    aget v2, v0, p2

    iget v3, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    iget v4, p1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v3, v4

    if-ne v2, v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method resetEdges()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1544
    :goto_0
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-static {v2}, Lcom/voxel/launcher3/CellLayout;->access$200(Lcom/voxel/launcher3/CellLayout;)I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    .line 1545
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aput v3, v2, v1

    .line 1546
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1548
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-static {v1}, Lcom/voxel/launcher3/CellLayout;->access$100(Lcom/voxel/launcher3/CellLayout;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1549
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aput v3, v1, v0

    .line 1550
    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 1552
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->leftEdgeDirty:Z

    .line 1553
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->rightEdgeDirty:Z

    .line 1554
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->bottomEdgeDirty:Z

    .line 1555
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->topEdgeDirty:Z

    .line 1556
    iput-boolean v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->boundingRectDirty:Z

    return-void
.end method

.method shift(II)V
    .locals 3

    .line 1639
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1640
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->config:Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

    iget-object v2, v2, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    packed-switch p1, :pswitch_data_0

    .line 1653
    iget v2, v1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    add-int/2addr v2, p2

    iput v2, v1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    goto :goto_0

    .line 1646
    :pswitch_0
    iget v2, v1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    add-int/2addr v2, p2

    iput v2, v1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    goto :goto_0

    .line 1649
    :pswitch_1
    iget v2, v1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    sub-int/2addr v2, p2

    iput v2, v1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->y:I

    goto :goto_0

    .line 1643
    :pswitch_2
    iget v2, v1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    sub-int/2addr v2, p2

    iput v2, v1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->x:I

    goto :goto_0

    .line 1657
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/CellLayout$ViewCluster;->resetEdges()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sortConfigurationForEdgePush(I)V
    .locals 1

    .line 1746
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->comparator:Lcom/voxel/launcher3/CellLayout$ViewCluster$PositionComparator;

    iput p1, v0, Lcom/voxel/launcher3/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    .line 1747
    iget-object p1, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->config:Lcom/voxel/launcher3/CellLayout$ItemConfiguration;

    iget-object p1, p1, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ViewCluster;->comparator:Lcom/voxel/launcher3/CellLayout$ViewCluster$PositionComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
