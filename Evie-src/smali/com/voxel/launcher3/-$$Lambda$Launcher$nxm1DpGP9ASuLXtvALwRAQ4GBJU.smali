.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$nxm1DpGP9ASuLXtvALwRAQ4GBJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;

.field private final synthetic f$1:Ljava/util/HashSet;

.field private final synthetic f$2:Ljava/util/HashSet;

.field private final synthetic f$3:Lcom/voxel/launcher3/compat/UserHandleCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;Ljava/util/HashSet;Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$nxm1DpGP9ASuLXtvALwRAQ4GBJU;->f$0:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$nxm1DpGP9ASuLXtvALwRAQ4GBJU;->f$1:Ljava/util/HashSet;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$nxm1DpGP9ASuLXtvALwRAQ4GBJU;->f$2:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$nxm1DpGP9ASuLXtvALwRAQ4GBJU;->f$3:Lcom/voxel/launcher3/compat/UserHandleCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$nxm1DpGP9ASuLXtvALwRAQ4GBJU;->f$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$nxm1DpGP9ASuLXtvALwRAQ4GBJU;->f$1:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$nxm1DpGP9ASuLXtvALwRAQ4GBJU;->f$2:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$nxm1DpGP9ASuLXtvALwRAQ4GBJU;->f$3:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-static {v0, v1, v2, v3}, Lcom/voxel/launcher3/Launcher;->lambda$bindComponentsRemoved$45(Lcom/voxel/launcher3/Launcher;Ljava/util/HashSet;Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method
