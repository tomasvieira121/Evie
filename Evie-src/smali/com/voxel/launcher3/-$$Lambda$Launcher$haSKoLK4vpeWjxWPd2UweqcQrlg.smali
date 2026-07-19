.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$haSKoLK4vpeWjxWPd2UweqcQrlg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$haSKoLK4vpeWjxWPd2UweqcQrlg;->f$0:Lcom/voxel/launcher3/Launcher;

    iput-boolean p2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$haSKoLK4vpeWjxWPd2UweqcQrlg;->f$1:Z

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$haSKoLK4vpeWjxWPd2UweqcQrlg;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$haSKoLK4vpeWjxWPd2UweqcQrlg;->f$0:Lcom/voxel/launcher3/Launcher;

    iget-boolean v1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$haSKoLK4vpeWjxWPd2UweqcQrlg;->f$1:Z

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$haSKoLK4vpeWjxWPd2UweqcQrlg;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/Launcher;->lambda$exitSpringLoadedDragModeDelayed$32(Lcom/voxel/launcher3/Launcher;ZLjava/lang/Runnable;)V

    return-void
.end method
