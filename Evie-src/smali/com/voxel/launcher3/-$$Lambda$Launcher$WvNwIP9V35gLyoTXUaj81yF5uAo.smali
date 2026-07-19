.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$WvNwIP9V35gLyoTXUaj81yF5uAo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$WvNwIP9V35gLyoTXUaj81yF5uAo;->f$0:Lcom/voxel/launcher3/Launcher;

    iput-boolean p2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$WvNwIP9V35gLyoTXUaj81yF5uAo;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$WvNwIP9V35gLyoTXUaj81yF5uAo;->f$0:Lcom/voxel/launcher3/Launcher;

    iget-boolean v1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$WvNwIP9V35gLyoTXUaj81yF5uAo;->f$1:Z

    invoke-static {v0, v1}, Lcom/voxel/launcher3/Launcher;->lambda$finishBindingItems$39(Lcom/voxel/launcher3/Launcher;Z)V

    return-void
.end method
