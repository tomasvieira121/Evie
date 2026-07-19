.class Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$1;
.super Ljava/lang/Object;
.source "YouTubeVideoHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$1;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$1;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$000(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$1;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$100(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$1;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$200(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$1;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$100(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->getCurrentTimeMillis()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$1;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$100(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->getCurrentTimeMillis()I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$1;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v1}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$300(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPosition(J)V

    .line 56
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$1;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$202(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;Z)Z

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$1;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$500(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$1;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v1}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$400(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    :goto_1
    return-void
.end method
