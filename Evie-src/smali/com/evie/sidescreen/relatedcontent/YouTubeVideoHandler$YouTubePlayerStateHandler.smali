.class Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;
.super Ljava/lang/Object;
.source "YouTubeVideoHandler.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YouTubePlayerStateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;


# direct methods
.method private constructor <init>(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$1;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;-><init>(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)V

    return-void
.end method


# virtual methods
.method public onAdStarted()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$300(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setDuration(J)V

    return-void
.end method

.method public onError(Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;)V
    .locals 0

    return-void
.end method

.method public onLoaded(Ljava/lang/String;)V
    .locals 1

    .line 219
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$602(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;Z)Z

    .line 220
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$700(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)V

    return-void
.end method

.method public onLoading()V
    .locals 0

    return-void
.end method

.method public onVideoEnded()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$000(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->onVideoEnded()V

    .line 239
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$000(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->getIsPlaylistAutoplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$800(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)V

    :cond_0
    return-void
.end method

.method public onVideoStarted()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$300(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(ZZ)V

    .line 231
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$300(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v1}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$100(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/player/YouTubePlayer;->getDurationMillis()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setDuration(J)V

    .line 232
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$300(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v1}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$100(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/player/YouTubePlayer;->getCurrentTimeMillis()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPosition(J)V

    return-void
.end method
