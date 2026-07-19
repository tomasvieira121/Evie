.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$l08ph6ovjeC7hR8sE3lU61d11pg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/launcher3/Workspace$ItemOperator;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Workspace;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Workspace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$l08ph6ovjeC7hR8sE3lU61d11pg;->f$0:Lcom/voxel/launcher3/Workspace;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$l08ph6ovjeC7hR8sE3lU61d11pg;->f$0:Lcom/voxel/launcher3/Workspace;

    invoke-static {v0, p1, p2, p3}, Lcom/voxel/launcher3/Workspace;->lambda$clearDropTargets$16(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
