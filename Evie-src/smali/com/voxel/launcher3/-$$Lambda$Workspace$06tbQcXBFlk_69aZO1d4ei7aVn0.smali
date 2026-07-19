.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$06tbQcXBFlk_69aZO1d4ei7aVn0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/launcher3/Workspace$ItemOperator;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Workspace;

.field private final synthetic f$1:Ljava/util/Set;

.field private final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Workspace;Ljava/util/Set;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$06tbQcXBFlk_69aZO1d4ei7aVn0;->f$0:Lcom/voxel/launcher3/Workspace;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$06tbQcXBFlk_69aZO1d4ei7aVn0;->f$1:Ljava/util/Set;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$06tbQcXBFlk_69aZO1d4ei7aVn0;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$06tbQcXBFlk_69aZO1d4ei7aVn0;->f$0:Lcom/voxel/launcher3/Workspace;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$06tbQcXBFlk_69aZO1d4ei7aVn0;->f$1:Ljava/util/Set;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$06tbQcXBFlk_69aZO1d4ei7aVn0;->f$2:Ljava/util/ArrayList;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/voxel/launcher3/Workspace;->lambda$restorePendingWidgets$24(Lcom/voxel/launcher3/Workspace;Ljava/util/Set;Ljava/util/ArrayList;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
