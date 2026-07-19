.class Lcom/voxel/launcher3/CellLayout$ItemConfiguration;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemConfiguration"
.end annotation


# instance fields
.field dragViewSpanX:I

.field dragViewSpanY:I

.field dragViewX:I

.field dragViewY:I

.field intersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field isSolution:Z

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/voxel/launcher3/CellLayout$CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field private savedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/voxel/launcher3/CellLayout$CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field sortedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/voxel/launcher3/CellLayout;


# direct methods
.method private constructor <init>(Lcom/voxel/launcher3/CellLayout;)V
    .locals 0

    .line 2653
    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2654
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    .line 2655
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    .line 2656
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 2658
    iput-boolean p1, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/launcher3/CellLayout;Lcom/voxel/launcher3/CellLayout$1;)V
    .locals 0

    .line 2653
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/voxel/launcher3/CellLayout;)V

    return-void
.end method


# virtual methods
.method add(Landroid/view/View;Lcom/voxel/launcher3/CellLayout$CellAndSpan;)V
    .locals 2

    .line 2676
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2677
    iget-object p2, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    new-instance v0, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    iget-object v1, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->this$0:Lcom/voxel/launcher3/CellLayout;

    invoke-direct {v0, v1}, Lcom/voxel/launcher3/CellLayout$CellAndSpan;-><init>(Lcom/voxel/launcher3/CellLayout;)V

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2678
    iget-object p2, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method area()I
    .locals 2

    .line 2682
    iget v0, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewSpanX:I

    iget v1, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->dragViewSpanY:I

    mul-int v0, v0, v1

    return v0
.end method

.method restore()V
    .locals 4

    .line 2670
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2671
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    iget-object v3, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    invoke-virtual {v2, v1}, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->copy(Lcom/voxel/launcher3/CellLayout$CellAndSpan;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method save()V
    .locals 4

    .line 2663
    iget-object v0, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2664
    iget-object v2, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    iget-object v3, p0, Lcom/voxel/launcher3/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/CellLayout$CellAndSpan;

    invoke-virtual {v2, v1}, Lcom/voxel/launcher3/CellLayout$CellAndSpan;->copy(Lcom/voxel/launcher3/CellLayout$CellAndSpan;)V

    goto :goto_0

    :cond_0
    return-void
.end method
