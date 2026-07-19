.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$PagedView$eSPfy_qzT-tyNBE1-QBNoVwSkj8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/PagedView;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/PagedView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$PagedView$eSPfy_qzT-tyNBE1-QBNoVwSkj8;->f$0:Lcom/voxel/launcher3/PagedView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$PagedView$eSPfy_qzT-tyNBE1-QBNoVwSkj8;->f$0:Lcom/voxel/launcher3/PagedView;

    invoke-static {v0}, Lcom/voxel/launcher3/PagedView;->lambda$onEndReordering$1(Lcom/voxel/launcher3/PagedView;)V

    return-void
.end method
