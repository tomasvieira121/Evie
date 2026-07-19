.class public final synthetic Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$Choreographer$wjG3US3ph7dLpMTAcowpdjkwVEk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/utils/Choreographer;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/utils/Choreographer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$Choreographer$wjG3US3ph7dLpMTAcowpdjkwVEk;->f$0:Lcom/voxel/simplesearchlauncher/utils/Choreographer;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$Choreographer$wjG3US3ph7dLpMTAcowpdjkwVEk;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$Choreographer$wjG3US3ph7dLpMTAcowpdjkwVEk;->f$0:Lcom/voxel/simplesearchlauncher/utils/Choreographer;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/utils/-$$Lambda$Choreographer$wjG3US3ph7dLpMTAcowpdjkwVEk;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->lambda$postAnimationStart$2(Lcom/voxel/simplesearchlauncher/utils/Choreographer;Ljava/lang/Runnable;)V

    return-void
.end method
