.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$2-w8RpcETTCCIKNOAcH97Lx436k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;

.field private final synthetic f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

.field private final synthetic f$2:Ljava/util/HashSet;

.field private final synthetic f$3:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$2-w8RpcETTCCIKNOAcH97Lx436k;->f$0:Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$2-w8RpcETTCCIKNOAcH97Lx436k;->f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$2-w8RpcETTCCIKNOAcH97Lx436k;->f$2:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$2-w8RpcETTCCIKNOAcH97Lx436k;->f$3:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$2-w8RpcETTCCIKNOAcH97Lx436k;->f$0:Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$2-w8RpcETTCCIKNOAcH97Lx436k;->f$1:Lcom/voxel/launcher3/LauncherModel$Callbacks;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$2-w8RpcETTCCIKNOAcH97Lx436k;->f$2:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$PackageUpdatedTask$2-w8RpcETTCCIKNOAcH97Lx436k;->f$3:Ljava/util/HashSet;

    invoke-static {v0, v1, v2, v3}, Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;->lambda$run$3(Lcom/voxel/launcher3/LauncherModel$PackageUpdatedTask;Lcom/voxel/launcher3/LauncherModel$Callbacks;Ljava/util/HashSet;Ljava/util/HashSet;)V

    return-void
.end method
