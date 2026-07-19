.class Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/voxel/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderAlarmListener"
.end annotation


# instance fields
.field child:Landroid/view/View;

.field dragView:Lcom/voxel/launcher3/dragndrop/DragView;

.field dragViewCenter:[F

.field minSpanX:I

.field minSpanY:I

.field spanX:I

.field spanY:I

.field final synthetic this$0:Lcom/voxel/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/Workspace;[FIIIILcom/voxel/launcher3/dragndrop/DragView;Landroid/view/View;)V
    .locals 0

    .line 3665
    iput-object p1, p0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3666
    iput-object p2, p0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->dragViewCenter:[F

    .line 3667
    iput p3, p0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    .line 3668
    iput p4, p0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    .line 3669
    iput p5, p0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    .line 3670
    iput p6, p0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    .line 3671
    iput-object p8, p0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    .line 3672
    iput-object p7, p0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/voxel/launcher3/Alarm;)V
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 3676
    new-array v1, v1, [I

    .line 3677
    iget-object v9, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v9}, Lcom/voxel/launcher3/Workspace;->access$1400(Lcom/voxel/launcher3/Workspace;)[F

    move-result-object v2

    const/4 v13, 0x0

    aget v2, v2, v13

    float-to-int v3, v2

    iget-object v2, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    .line 3678
    invoke-static {v2}, Lcom/voxel/launcher3/Workspace;->access$1400(Lcom/voxel/launcher3/Workspace;)[F

    move-result-object v2

    const/4 v14, 0x1

    aget v2, v2, v14

    float-to-int v4, v2

    iget v5, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    iget v6, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    iget-object v2, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v2}, Lcom/voxel/launcher3/Workspace;->access$1500(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/CellLayout;

    move-result-object v7

    iget-object v2, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    .line 3679
    invoke-static {v2}, Lcom/voxel/launcher3/Workspace;->access$1300(Lcom/voxel/launcher3/Workspace;)[I

    move-result-object v8

    move-object v2, v9

    .line 3677
    invoke-static/range {v2 .. v8}, Lcom/voxel/launcher3/Workspace;->access$1600(Lcom/voxel/launcher3/Workspace;IIIILcom/voxel/launcher3/CellLayout;[I)[I

    move-result-object v2

    invoke-static {v9, v2}, Lcom/voxel/launcher3/Workspace;->access$1302(Lcom/voxel/launcher3/Workspace;[I)[I

    .line 3680
    iget-object v2, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v2}, Lcom/voxel/launcher3/Workspace;->access$1300(Lcom/voxel/launcher3/Workspace;)[I

    move-result-object v3

    aget v3, v3, v13

    invoke-static {v2, v3}, Lcom/voxel/launcher3/Workspace;->access$1702(Lcom/voxel/launcher3/Workspace;I)I

    .line 3681
    iget-object v2, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v2}, Lcom/voxel/launcher3/Workspace;->access$1300(Lcom/voxel/launcher3/Workspace;)[I

    move-result-object v3

    aget v3, v3, v14

    invoke-static {v2, v3}, Lcom/voxel/launcher3/Workspace;->access$1802(Lcom/voxel/launcher3/Workspace;I)I

    .line 3683
    iget-object v15, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v15}, Lcom/voxel/launcher3/Workspace;->access$1500(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/CellLayout;

    move-result-object v2

    iget-object v3, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v3}, Lcom/voxel/launcher3/Workspace;->access$1400(Lcom/voxel/launcher3/Workspace;)[F

    move-result-object v3

    aget v3, v3, v13

    float-to-int v3, v3

    iget-object v4, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    .line 3684
    invoke-static {v4}, Lcom/voxel/launcher3/Workspace;->access$1400(Lcom/voxel/launcher3/Workspace;)[F

    move-result-object v4

    aget v4, v4, v14

    float-to-int v4, v4

    iget v5, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    iget v6, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    iget v7, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    iget v8, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    iget-object v9, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    iget-object v10, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    .line 3685
    invoke-static {v10}, Lcom/voxel/launcher3/Workspace;->access$1300(Lcom/voxel/launcher3/Workspace;)[I

    move-result-object v10

    const/4 v12, 0x1

    move-object v11, v1

    .line 3683
    invoke-virtual/range {v2 .. v12}, Lcom/voxel/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    invoke-static {v15, v2}, Lcom/voxel/launcher3/Workspace;->access$1302(Lcom/voxel/launcher3/Workspace;[I)[I

    .line 3687
    iget-object v2, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v2}, Lcom/voxel/launcher3/Workspace;->access$1300(Lcom/voxel/launcher3/Workspace;)[I

    move-result-object v2

    aget v2, v2, v13

    if-ltz v2, :cond_1

    iget-object v2, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v2}, Lcom/voxel/launcher3/Workspace;->access$1300(Lcom/voxel/launcher3/Workspace;)[I

    move-result-object v2

    aget v2, v2, v14

    if-gez v2, :cond_0

    goto :goto_0

    .line 3690
    :cond_0
    iget-object v2, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/voxel/launcher3/Workspace;->setDragMode(I)V

    goto :goto_1

    .line 3688
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v2}, Lcom/voxel/launcher3/Workspace;->access$1500(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/launcher3/CellLayout;->revertTempState()V

    .line 3693
    :goto_1
    aget v2, v1, v13

    iget v3, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    if-ne v2, v3, :cond_3

    aget v2, v1, v14

    iget v3, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/16 v24, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v24, 0x1

    .line 3694
    :goto_3
    iget-object v2, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v2}, Lcom/voxel/launcher3/Workspace;->access$1500(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/CellLayout;

    move-result-object v15

    iget-object v2, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    iget-object v3, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v3}, Lcom/voxel/launcher3/Workspace;->access$1900(Lcom/voxel/launcher3/Workspace;)Lcom/voxel/launcher3/graphics/DragPreviewProvider;

    move-result-object v3

    iget-object v3, v3, Lcom/voxel/launcher3/graphics/DragPreviewProvider;->generatedDragOutline:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    .line 3695
    invoke-static {v4}, Lcom/voxel/launcher3/Workspace;->access$1400(Lcom/voxel/launcher3/Workspace;)[F

    move-result-object v4

    aget v4, v4, v13

    float-to-int v4, v4

    iget-object v5, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v5}, Lcom/voxel/launcher3/Workspace;->access$1400(Lcom/voxel/launcher3/Workspace;)[F

    move-result-object v5

    aget v5, v5, v14

    float-to-int v5, v5

    iget-object v6, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    .line 3696
    invoke-static {v6}, Lcom/voxel/launcher3/Workspace;->access$1300(Lcom/voxel/launcher3/Workspace;)[I

    move-result-object v6

    aget v20, v6, v13

    iget-object v6, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v6}, Lcom/voxel/launcher3/Workspace;->access$1300(Lcom/voxel/launcher3/Workspace;)[I

    move-result-object v6

    aget v21, v6, v14

    aget v22, v1, v13

    aget v23, v1, v14

    iget-object v1, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    .line 3697
    invoke-virtual {v1}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v25

    iget-object v1, v0, Lcom/voxel/launcher3/Workspace$ReorderAlarmListener;->dragView:Lcom/voxel/launcher3/dragndrop/DragView;

    invoke-virtual {v1}, Lcom/voxel/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v26

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    .line 3694
    invoke-virtual/range {v15 .. v26}, Lcom/voxel/launcher3/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    return-void
.end method
