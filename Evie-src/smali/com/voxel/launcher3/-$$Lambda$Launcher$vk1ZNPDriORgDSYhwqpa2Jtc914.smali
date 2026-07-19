.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$vk1ZNPDriORgDSYhwqpa2Jtc914;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$vk1ZNPDriORgDSYhwqpa2Jtc914;->f$0:Lcom/voxel/launcher3/Launcher;

    iput-wide p2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$vk1ZNPDriORgDSYhwqpa2Jtc914;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$vk1ZNPDriORgDSYhwqpa2Jtc914;->f$0:Lcom/voxel/launcher3/Launcher;

    iget-wide v1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$vk1ZNPDriORgDSYhwqpa2Jtc914;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->lambda$finishBindingItems$40(Lcom/voxel/launcher3/Launcher;J)V

    return-void
.end method
