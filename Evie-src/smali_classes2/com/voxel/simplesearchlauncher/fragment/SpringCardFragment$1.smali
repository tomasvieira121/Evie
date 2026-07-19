.class Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$1;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "SpringCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->onFinishedEnterTransition()V

    .line 65
    invoke-virtual {p1, p0}, Lcom/facebook/rebound/Spring;->removeListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 67
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;->access$000(Lcom/voxel/simplesearchlauncher/fragment/SpringCardFragment;)Lcom/voxel/simplesearchlauncher/utils/Choreographer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/utils/Choreographer;->animationEnded()V

    return-void
.end method
