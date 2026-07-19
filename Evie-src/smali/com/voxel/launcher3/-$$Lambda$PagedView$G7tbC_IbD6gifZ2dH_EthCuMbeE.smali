.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$PagedView$G7tbC_IbD6gifZ2dH_EthCuMbeE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/PagedView;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/PagedView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$PagedView$G7tbC_IbD6gifZ2dH_EthCuMbeE;->f$0:Lcom/voxel/launcher3/PagedView;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$PagedView$G7tbC_IbD6gifZ2dH_EthCuMbeE;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$PagedView$G7tbC_IbD6gifZ2dH_EthCuMbeE;->f$0:Lcom/voxel/launcher3/PagedView;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$PagedView$G7tbC_IbD6gifZ2dH_EthCuMbeE;->f$1:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/PagedView;->lambda$createPostDeleteAnimationRunnable$4(Lcom/voxel/launcher3/PagedView;Landroid/view/View;)V

    return-void
.end method
