.class public Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;
.super Lio/reactivex/Observable;
.source "OathPlayerObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private adClickEventFired:Z

.field private final errorListener:Lcom/aol/mobile/sdk/player/listener/ErrorListener;

.field private mOathPlayerBuilder:Lcom/aol/mobile/sdk/player/PlayerBuilder;

.field private mPlayer:Lcom/aol/mobile/sdk/player/Player;

.field private final mPlayerStateObserver:Lcom/aol/mobile/sdk/player/PlayerStateObserver;

.field private mProgressDisposable:Lio/reactivex/disposables/Disposable;

.field private final mProgressObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "*>;"
        }
    .end annotation
.end field

.field private mSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;)V
    .locals 3

    .line 132
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 29
    new-instance v0, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$BuilderNotReady;

    invoke-direct {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$BuilderNotReady;-><init>()V

    invoke-static {v0}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    .line 39
    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mProgressObservable:Lio/reactivex/Observable;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->adClickEventFired:Z

    .line 44
    new-instance v0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;-><init>(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)V

    iput-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayerStateObserver:Lcom/aol/mobile/sdk/player/PlayerStateObserver;

    .line 113
    new-instance v0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$2;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$2;-><init>(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)V

    iput-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->errorListener:Lcom/aol/mobile/sdk/player/listener/ErrorListener;

    .line 133
    new-instance v0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$3;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$3;-><init>(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)V

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;->request(Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor$PlayerBuilderRequestCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lcom/aol/mobile/sdk/player/Player;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    return-object p0
.end method

.method static synthetic access$002(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;Lcom/aol/mobile/sdk/player/Player;)Lcom/aol/mobile/sdk/player/Player;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    return-object p1
.end method

.method static synthetic access$100(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->adClickEventFired:Z

    return p0
.end method

.method static synthetic access$202(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->adClickEventFired:Z

    return p1
.end method

.method static synthetic access$300(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mProgressDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mProgressDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/Observable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mProgressObservable:Lio/reactivex/Observable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->disposeProgressDisposable()V

    return-void
.end method

.method static synthetic access$602(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;Lcom/aol/mobile/sdk/player/PlayerBuilder;)Lcom/aol/mobile/sdk/player/PlayerBuilder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mOathPlayerBuilder:Lcom/aol/mobile/sdk/player/PlayerBuilder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lcom/aol/mobile/sdk/player/PlayerStateObserver;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayerStateObserver:Lcom/aol/mobile/sdk/player/PlayerStateObserver;

    return-object p0
.end method

.method static synthetic access$800(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lcom/aol/mobile/sdk/player/listener/ErrorListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->errorListener:Lcom/aol/mobile/sdk/player/listener/ErrorListener;

    return-object p0
.end method

.method private disposeProgressDisposable()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mProgressDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mProgressDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private getTimeProperties()Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object v0

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public createPlayer(Ljava/lang/String;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mOathPlayerBuilder:Lcom/aol/mobile/sdk/player/PlayerBuilder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 159
    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/PlayerBuilder;->setAutoplay(Z)Lcom/aol/mobile/sdk/player/PlayerBuilder;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$4;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$4;-><init>(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)V

    .line 160
    invoke-virtual {v0, p1, v1}, Lcom/aol/mobile/sdk/player/PlayerBuilder;->buildForVideo(Ljava/lang/String;Lcom/aol/mobile/sdk/player/Player$Callback;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 266
    invoke-direct {p0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->disposeProgressDisposable()V

    .line 267
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->pause()V

    .line 269
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    iget-object v1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayerStateObserver:Lcom/aol/mobile/sdk/player/PlayerStateObserver;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/Player;->removePlayerStateObserver(Lcom/aol/mobile/sdk/player/PlayerStateObserver;)V

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    :cond_0
    return-void
.end method

.method public getCurrentAdProperties()Lcom/aol/mobile/sdk/player/model/properties/AdProperties;
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Ad:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    iget-object v1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object v1

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object v0

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 221
    invoke-direct {p0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getTimeProperties()Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getTimeProperties()Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    move-result-object v0

    iget-wide v0, v0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->duration:J

    :goto_0
    return-wide v0
.end method

.method public getPlayer()Lcom/aol/mobile/sdk/player/Player;
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    new-instance v1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;

    const-string v2, "Player not initialized"

    invoke-direct {v1, v2}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .line 225
    invoke-direct {p0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getTimeProperties()Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->getTimeProperties()Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    move-result-object v0

    iget-wide v0, v0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->current:J

    :goto_0
    return-wide v0
.end method

.method public getViewportProperties()Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object v0

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pause()V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object v0

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    new-instance v1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;

    const-string v2, "Null Video Props"

    invoke-direct {v1, v2}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->play()V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .line 256
    invoke-virtual {p0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->dispose()V

    .line 258
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mOathPlayerBuilder:Lcom/aol/mobile/sdk/player/PlayerBuilder;

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    new-instance v1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$BuilderNotReady;

    invoke-direct {v1}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$BuilderNotReady;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    new-instance v1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$BuilderReady;

    invoke-direct {v1}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$BuilderReady;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public seek(JJ)V
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mPlayer:Lcom/aol/mobile/sdk/player/Player;

    if-eqz v0, :cond_0

    long-to-double v1, p1

    long-to-double v3, p3

    .line 205
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/aol/mobile/sdk/player/Player;->seekTo(D)V

    .line 206
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    new-instance v1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lcom/evie/sidescreen/oathplayer/OathPlayerEvent;",
            ">;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
