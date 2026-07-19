.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$PagedView$mjF_EIm6H22Ec7782DA7B_FmzrY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/PagedView;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/PagedView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$PagedView$mjF_EIm6H22Ec7782DA7B_FmzrY;->f$0:Lcom/voxel/launcher3/PagedView;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$PagedView$mjF_EIm6H22Ec7782DA7B_FmzrY;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$PagedView$mjF_EIm6H22Ec7782DA7B_FmzrY;->f$0:Lcom/voxel/launcher3/PagedView;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$PagedView$mjF_EIm6H22Ec7782DA7B_FmzrY;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/PagedView;->lambda$endReordering$3(Lcom/voxel/launcher3/PagedView;Ljava/lang/Runnable;)V

    return-void
.end method
