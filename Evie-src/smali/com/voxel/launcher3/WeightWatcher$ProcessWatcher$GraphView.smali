.class public Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;
.super Landroid/view/View;
.source "WeightWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GraphView"
.end annotation


# instance fields
.field headPaint:Landroid/graphics/Paint;

.field pssPaint:Landroid/graphics/Paint;

.field final synthetic this$1:Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;

.field ussPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;-><init>(Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;

    .line 231
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 233
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->pssPaint:Landroid/graphics/Paint;

    .line 234
    iget-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->pssPaint:Landroid/graphics/Paint;

    const p2, -0x663400

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->ussPaint:Landroid/graphics/Paint;

    .line 236
    iget-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->ussPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x670000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->headPaint:Landroid/graphics/Paint;

    .line 238
    iget-object p1, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->headPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 250
    iget-object v2, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;

    invoke-static {v2}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->access$100(Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;)Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;

    invoke-static {v2}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->access$100(Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;)Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->pss:[J

    array-length v2, v2

    int-to-float v0, v0

    int-to-float v3, v2

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 254
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    int-to-float v1, v1

    .line 255
    iget-object v4, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;

    invoke-static {v4}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->access$100(Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;)Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->max:J

    long-to-float v4, v4

    div-float v10, v1, v4

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v2, :cond_1

    int-to-float v4, v11

    mul-float v12, v4, v0

    .line 261
    iget-object v4, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;

    invoke-static {v4}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->access$100(Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;)Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->pss:[J

    aget-wide v5, v4, v11

    long-to-float v4, v5

    mul-float v4, v4, v10

    sub-float v6, v1, v4

    add-float v13, v12, v3

    iget-object v9, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->pssPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v12

    move v7, v13

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 262
    iget-object v4, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;

    invoke-static {v4}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->access$100(Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;)Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->uss:[J

    aget-wide v5, v4, v11

    long-to-float v4, v5

    mul-float v4, v4, v10

    sub-float v6, v1, v4

    iget-object v9, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->ussPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->this$1:Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;

    invoke-static {v2}, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;->access$100(Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher;)Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;

    move-result-object v2

    iget v2, v2, Lcom/voxel/launcher3/MemoryTracker$ProcessMemInfo;->head:I

    int-to-float v2, v2

    mul-float v5, v2, v0

    const/4 v6, 0x0

    add-float v7, v5, v3

    .line 265
    iget-object v9, p0, Lcom/voxel/launcher3/WeightWatcher$ProcessWatcher$GraphView;->headPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
