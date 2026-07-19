.class public final synthetic Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$Choreographer$nQFhTMeZcvs5uXfxuN3pbjX21Gw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/utils/Choreographer;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/utils/Choreographer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$Choreographer$nQFhTMeZcvs5uXfxuN3pbjX21Gw;->f$0:Lcom/voxel/simplesearchlauncher/utils/Choreographer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$Choreographer$nQFhTMeZcvs5uXfxuN3pbjX21Gw;->f$0:Lcom/voxel/simplesearchlauncher/utils/Choreographer;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->lambda$getTimeoutRunnable$3(Lcom/voxel/simplesearchlauncher/utils/Choreographer;)V

    return-void
.end method
