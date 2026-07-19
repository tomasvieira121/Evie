.class public final Lcom/aol/mobile/sdk/player/Binder;
.super Ljava/lang/Object;
.source "Binder.java"


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PublicApi;
.end annotation


# instance fields
.field private feedbackHandler:Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;

.field isBind:Z

.field private isPaused:Z

.field observers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/aol/mobile/sdk/player/PlayerStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field private player:Lcom/aol/mobile/sdk/player/Player;

.field private playerView:Lcom/aol/mobile/sdk/player/view/PlayerViewport;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/Binder;->isBind:Z

    .line 24
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/aol/mobile/sdk/player/Binder;->observers:Ljava/util/LinkedList;

    .line 26
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/Binder;->isPaused:Z

    .line 31
    new-instance v0, Lcom/aol/mobile/sdk/player/view/DefaultFeedbackHandler;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/view/DefaultFeedbackHandler;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/Binder;->feedbackHandler:Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/aol/mobile/sdk/player/Binder;)Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/Binder;->feedbackHandler:Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;

    return-object p0
.end method

.method private bind()V
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder;->playerView:Lcom/aol/mobile/sdk/player/view/PlayerViewport;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/Binder;->player:Lcom/aol/mobile/sdk/player/Player;

    if-eqz v1, :cond_0

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/aol/mobile/sdk/player/Binder;->bindControllersToViews(Lcom/aol/mobile/sdk/player/view/PlayerViewport;Lcom/aol/mobile/sdk/player/Player;)V

    .line 68
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder;->observers:Ljava/util/LinkedList;

    new-instance v1, Lcom/aol/mobile/sdk/player/ContextObserver;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/Binder;->playerView:Lcom/aol/mobile/sdk/player/view/PlayerViewport;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/Binder;->player:Lcom/aol/mobile/sdk/player/Player;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/Player;->contentPlayback:Lcom/aol/mobile/sdk/player/Playback;

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/Binder;->player:Lcom/aol/mobile/sdk/player/Player;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/Player;->adPlayback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-direct {v1, v2, v3, v4}, Lcom/aol/mobile/sdk/player/ContextObserver;-><init>(Lcom/aol/mobile/sdk/player/view/PlayerViewport;Lcom/aol/mobile/sdk/player/Playback;Lcom/aol/mobile/sdk/player/Playback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder;->observers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/PlayerStateObserver;

    .line 71
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/Binder;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v2, v1}, Lcom/aol/mobile/sdk/player/Player;->addPlayerStateObserver(Lcom/aol/mobile/sdk/player/PlayerStateObserver;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/Binder;->isBind:Z

    return-void
.end method

.method private bindControllersToViews(Lcom/aol/mobile/sdk/player/view/PlayerViewport;Lcom/aol/mobile/sdk/player/Player;)V
    .locals 2

    .line 79
    invoke-interface {p1}, Lcom/aol/mobile/sdk/player/view/PlayerViewport;->getContentControls()Lcom/aol/mobile/sdk/controls/ContentControls;

    move-result-object v0

    new-instance v1, Lcom/aol/mobile/sdk/player/Binder$1;

    invoke-direct {v1, p0, p2}, Lcom/aol/mobile/sdk/player/Binder$1;-><init>(Lcom/aol/mobile/sdk/player/Binder;Lcom/aol/mobile/sdk/player/Player;)V

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/controls/ContentControls;->setListener(Lcom/aol/mobile/sdk/controls/ContentControls$Listener;)V

    .line 125
    invoke-interface {p1}, Lcom/aol/mobile/sdk/player/view/PlayerViewport;->getAdControls()Lcom/aol/mobile/sdk/controls/AdControls;

    move-result-object p1

    new-instance v0, Lcom/aol/mobile/sdk/player/Binder$2;

    invoke-direct {v0, p0, p2}, Lcom/aol/mobile/sdk/player/Binder$2;-><init>(Lcom/aol/mobile/sdk/player/Binder;Lcom/aol/mobile/sdk/player/Player;)V

    invoke-interface {p1, v0}, Lcom/aol/mobile/sdk/controls/AdControls;->setListener(Lcom/aol/mobile/sdk/controls/AdControls$Listener;)V

    return-void
.end method

.method private unbind()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder;->player:Lcom/aol/mobile/sdk/player/Player;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder;->observers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aol/mobile/sdk/player/PlayerStateObserver;

    .line 43
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/Binder;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v2, v1}, Lcom/aol/mobile/sdk/player/Player;->removePlayerStateObserver(Lcom/aol/mobile/sdk/player/PlayerStateObserver;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder;->playerView:Lcom/aol/mobile/sdk/player/view/PlayerViewport;

    if-eqz v0, :cond_1

    .line 48
    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/Binder;->unbindAllControllers(Lcom/aol/mobile/sdk/player/view/PlayerViewport;)V

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder;->observers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/Binder;->isBind:Z

    return-void
.end method

.method private unbindAllControllers(Lcom/aol/mobile/sdk/player/view/PlayerViewport;)V
    .locals 2

    .line 56
    new-instance v0, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;-><init>()V

    invoke-interface {p1, v0}, Lcom/aol/mobile/sdk/player/view/PlayerViewport;->render(Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;)V

    .line 57
    invoke-interface {p1}, Lcom/aol/mobile/sdk/player/view/PlayerViewport;->getAdVideoRenderer()Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    move-result-object v0

    new-instance v1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;

    invoke-direct {v1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;-><init>()V

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/renderer/VideoRenderer;->render(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;)V

    .line 58
    invoke-interface {p1}, Lcom/aol/mobile/sdk/player/view/PlayerViewport;->getContentVideoRenderer()Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    move-result-object v0

    new-instance v1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;

    invoke-direct {v1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;-><init>()V

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/renderer/VideoRenderer;->render(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;)V

    .line 60
    invoke-interface {p1}, Lcom/aol/mobile/sdk/player/view/PlayerViewport;->getContentControls()Lcom/aol/mobile/sdk/controls/ContentControls;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/controls/ContentControls;->setListener(Lcom/aol/mobile/sdk/controls/ContentControls$Listener;)V

    .line 61
    invoke-interface {p1}, Lcom/aol/mobile/sdk/player/view/PlayerViewport;->getAdControls()Lcom/aol/mobile/sdk/controls/AdControls;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/aol/mobile/sdk/controls/AdControls;->setListener(Lcom/aol/mobile/sdk/controls/AdControls$Listener;)V

    return-void
.end method


# virtual methods
.method public getPlayer()Lcom/aol/mobile/sdk/player/Player;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder;->player:Lcom/aol/mobile/sdk/player/Player;

    return-object v0
.end method

.method public getPlayerView()Lcom/aol/mobile/sdk/player/view/PlayerViewport;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder;->playerView:Lcom/aol/mobile/sdk/player/view/PlayerViewport;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder;->player:Lcom/aol/mobile/sdk/player/Player;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->completePlaybackSession()V

    :cond_0
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/player/Binder;->setPlayer(Lcom/aol/mobile/sdk/player/Player;)V

    .line 253
    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/player/Binder;->setPlayerView(Lcom/aol/mobile/sdk/player/view/PlayerViewport;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder;->player:Lcom/aol/mobile/sdk/player/Player;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->moveToBackground()V

    :cond_0
    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/Binder;->isPaused:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder;->player:Lcom/aol/mobile/sdk/player/Player;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->moveToForeground()V

    .line 234
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/Binder;->isBind:Z

    if-nez v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/Binder;->bind()V

    :cond_0
    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/Binder;->isPaused:Z

    return-void
.end method

.method public setCameraOrientationSensorEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setFeedbackHandler(Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/Binder;->feedbackHandler:Lcom/aol/mobile/sdk/player/view/ControlsFeedbackHandler;

    return-void
.end method

.method public setPlayer(Lcom/aol/mobile/sdk/player/Player;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder;->player:Lcom/aol/mobile/sdk/player/Player;

    if-ne p1, v0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/Binder;->unbind()V

    .line 176
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/Binder;->player:Lcom/aol/mobile/sdk/player/Player;

    .line 177
    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/Binder;->isPaused:Z

    if-nez p1, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/Binder;->bind()V

    :cond_1
    return-void
.end method

.method public setPlayerView(Lcom/aol/mobile/sdk/player/view/PlayerViewport;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Binder;->playerView:Lcom/aol/mobile/sdk/player/view/PlayerViewport;

    if-ne v0, p1, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/Binder;->unbind()V

    .line 206
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/Binder;->playerView:Lcom/aol/mobile/sdk/player/view/PlayerViewport;

    .line 207
    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/Binder;->isPaused:Z

    if-nez p1, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/Binder;->bind()V

    :cond_1
    return-void
.end method
