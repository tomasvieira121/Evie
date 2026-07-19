.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$6C7sOUd2Ywkq90CYy75kVjjWb2M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/launcher3/Workspace$ItemOperator;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Workspace$ItemOperator;

.field private final synthetic f$1:[Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Workspace$ItemOperator;[Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$6C7sOUd2Ywkq90CYy75kVjjWb2M;->f$0:Lcom/voxel/launcher3/Workspace$ItemOperator;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$6C7sOUd2Ywkq90CYy75kVjjWb2M;->f$1:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$6C7sOUd2Ywkq90CYy75kVjjWb2M;->f$0:Lcom/voxel/launcher3/Workspace$ItemOperator;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$6C7sOUd2Ywkq90CYy75kVjjWb2M;->f$1:[Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/voxel/launcher3/Workspace;->lambda$getFirstMatch$15(Lcom/voxel/launcher3/Workspace$ItemOperator;[Landroid/view/View;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
