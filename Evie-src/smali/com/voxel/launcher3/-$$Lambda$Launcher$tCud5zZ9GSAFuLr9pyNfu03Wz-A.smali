.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$tCud5zZ9GSAFuLr9pyNfu03Wz-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$tCud5zZ9GSAFuLr9pyNfu03Wz-A;->f$0:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$tCud5zZ9GSAFuLr9pyNfu03Wz-A;->f$1:Ljava/util/ArrayList;

    iput p3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$tCud5zZ9GSAFuLr9pyNfu03Wz-A;->f$2:I

    iput p4, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$tCud5zZ9GSAFuLr9pyNfu03Wz-A;->f$3:I

    iput-boolean p5, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$tCud5zZ9GSAFuLr9pyNfu03Wz-A;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$tCud5zZ9GSAFuLr9pyNfu03Wz-A;->f$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$tCud5zZ9GSAFuLr9pyNfu03Wz-A;->f$1:Ljava/util/ArrayList;

    iget v2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$tCud5zZ9GSAFuLr9pyNfu03Wz-A;->f$2:I

    iget v3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$tCud5zZ9GSAFuLr9pyNfu03Wz-A;->f$3:I

    iget-boolean v4, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$tCud5zZ9GSAFuLr9pyNfu03Wz-A;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/voxel/launcher3/Launcher;->lambda$bindItems$34(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;IIZ)V

    return-void
.end method
