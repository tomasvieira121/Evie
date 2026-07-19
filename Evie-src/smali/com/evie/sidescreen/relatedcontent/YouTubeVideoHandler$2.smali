.class Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;
.super Ljava/lang/Object;
.source "YouTubeVideoHandler.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->initYouTube()V
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

    .line 263
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onInitializationSuccess$0(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;Z)V
    .locals 2

    .line 275
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$300(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setPlaying(ZZ)V

    .line 276
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$300(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$100(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/player/YouTubePlayer;->getDurationMillis()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->setDuration(J)V

    return-void
.end method


# virtual methods
.method public onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 1

    .line 284
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$1100(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "init failure"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
    .locals 0

    .line 267
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$000(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->onVideoVisibilityChanged(Z)V

    .line 268
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {p1, p2}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$102(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;Lcom/google/android/youtube/player/YouTubePlayer;)Lcom/google/android/youtube/player/YouTubePlayer;

    .line 269
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$100(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object p1

    const/16 p2, 0x8

    invoke-interface {p1, p2}, Lcom/google/android/youtube/player/YouTubePlayer;->addFullscreenControlFlag(I)V

    .line 271
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$100(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object p1

    sget-object p2, Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;->CHROMELESS:Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;

    invoke-interface {p1, p2}, Lcom/google/android/youtube/player/YouTubePlayer;->setPlayerStyle(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;)V

    .line 272
    new-instance p1, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;

    iget-object p2, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$YouTubePlayerStateHandler;-><init>(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$1;)V

    .line 273
    iget-object p2, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {p2}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$100(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->setPlayerStateChangeListener(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;)V

    .line 274
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$100(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)Lcom/google/android/youtube/player/YouTubePlayer;

    move-result-object p1

    new-instance p2, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$YouTubeVideoHandler$2$Wnq7j1m2xv4z72B5nklAH4ebnz0;

    invoke-direct {p2, p0}, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$YouTubeVideoHandler$2$Wnq7j1m2xv4z72B5nklAH4ebnz0;-><init>(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;)V

    invoke-interface {p1, p2}, Lcom/google/android/youtube/player/YouTubePlayer;->setOnFullscreenListener(Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;)V

    .line 279
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler$2;->this$0:Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;->access$1000(Lcom/evie/sidescreen/relatedcontent/YouTubeVideoHandler;)V

    return-void
.end method
