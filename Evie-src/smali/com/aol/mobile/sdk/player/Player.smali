.class public Lcom/aol/mobile/sdk/player/Player;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/Player$Callback;,
        Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;
    }
.end annotation


# instance fields
.field private adManager:Lcom/aol/mobile/sdk/player/AdManager;

.field final adPlayback:Lcom/aol/mobile/sdk/player/Playback;

.field final contentPlayback:Lcom/aol/mobile/sdk/player/Playback;

.field private errorHandlingBehaviour:Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

.field private final observers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/aol/mobile/sdk/player/PlayerStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field final playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

.field private final properties:[Lcom/aol/mobile/sdk/player/model/properties/Properties;

.field private propertiesIndex:I

.field private final stateObservers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/aol/mobile/sdk/player/StateObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/model/PlayerModel;)V
    .locals 1

    .line 53
    new-instance v0, Lcom/aol/mobile/sdk/player/VvuidGenerator;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/VvuidGenerator;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/aol/mobile/sdk/player/Player;-><init>(Lcom/aol/mobile/sdk/player/model/PlayerModel;Lcom/aol/mobile/sdk/player/VvuidGenerator;)V

    return-void
.end method

.method public constructor <init>(Lcom/aol/mobile/sdk/player/model/PlayerModel;Lcom/aol/mobile/sdk/player/VvuidGenerator;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->stateObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [Lcom/aol/mobile/sdk/player/model/properties/Properties;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->properties:[Lcom/aol/mobile/sdk/player/model/properties/Properties;

    .line 41
    sget-object v0, Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;->NEXT_VIDEO_ON_CONTENT_ERROR:Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->errorHandlingBehaviour:Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/aol/mobile/sdk/player/Player;->propertiesIndex:I

    .line 62
    new-instance v1, Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-direct {v1, p1, p2}, Lcom/aol/mobile/sdk/player/PlayerLogic;-><init>(Lcom/aol/mobile/sdk/player/model/PlayerModel;Lcom/aol/mobile/sdk/player/VvuidGenerator;)V

    iput-object v1, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    .line 63
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/Player;->properties:[Lcom/aol/mobile/sdk/player/model/properties/Properties;

    new-instance p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;

    invoke-direct {p2}, Lcom/aol/mobile/sdk/player/model/properties/Properties;-><init>()V

    aput-object p2, p1, v0

    .line 64
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/Player;->properties:[Lcom/aol/mobile/sdk/player/model/properties/Properties;

    new-instance p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;

    invoke-direct {p2}, Lcom/aol/mobile/sdk/player/model/properties/Properties;-><init>()V

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 65
    new-instance p1, Lcom/aol/mobile/sdk/player/ContentPlayback;

    invoke-direct {p1, p0}, Lcom/aol/mobile/sdk/player/ContentPlayback;-><init>(Lcom/aol/mobile/sdk/player/Player;)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/Player;->contentPlayback:Lcom/aol/mobile/sdk/player/Playback;

    .line 66
    new-instance p1, Lcom/aol/mobile/sdk/player/AdvertisementPlayback;

    invoke-direct {p1, p0}, Lcom/aol/mobile/sdk/player/AdvertisementPlayback;-><init>(Lcom/aol/mobile/sdk/player/Player;)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/Player;->adPlayback:Lcom/aol/mobile/sdk/player/Playback;

    .line 68
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    .line 69
    new-instance p1, Lcom/aol/mobile/sdk/player/Player$1;

    invoke-direct {p1, p0}, Lcom/aol/mobile/sdk/player/Player$1;-><init>(Lcom/aol/mobile/sdk/player/Player;)V

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/Player;->addPlayerStateObserver(Lcom/aol/mobile/sdk/player/PlayerStateObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/aol/mobile/sdk/player/Player;)Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/Player;->errorHandlingBehaviour:Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    return-object p0
.end method


# virtual methods
.method public addErrorListener(Lcom/aol/mobile/sdk/player/listener/ErrorListener;)V
    .locals 0

    .line 225
    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/Player;->addPlayerStateObserver(Lcom/aol/mobile/sdk/player/PlayerStateObserver;)V

    return-void
.end method

.method public addPlayerStateObserver(Lcom/aol/mobile/sdk/player/PlayerStateObserver;)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/aol/mobile/sdk/player/PlayerStateObserver;->onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    .line 351
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method addStateObserver(Lcom/aol/mobile/sdk/player/StateObserver;)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->stateObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/aol/mobile/sdk/player/StateObserver;->onStateChanged(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    .line 374
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->stateObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public completePlaybackSession()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->completePlaybackSession()V

    .line 196
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public disableCast()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->setCast(Z)V

    .line 430
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public enableCast()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->setCast(Z)V

    .line 425
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method firePropertiesUpdateEvent()V
    .locals 4

    .line 399
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->updateProps()V

    .line 400
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/Player;->stateObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aol/mobile/sdk/player/StateObserver;

    .line 403
    iget-object v3, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    invoke-interface {v2, v3, v0}, Lcom/aol/mobile/sdk/player/StateObserver;->onStateChanged(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    goto :goto_0

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/Player;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aol/mobile/sdk/player/PlayerStateObserver;

    .line 406
    invoke-interface {v2, v0}, Lcom/aol/mobile/sdk/player/PlayerStateObserver;->onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    goto :goto_1

    .line 408
    :cond_1
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/Player;->adManager:Lcom/aol/mobile/sdk/player/AdManager;

    if-eqz v1, :cond_2

    .line 409
    invoke-virtual {v1, v0}, Lcom/aol/mobile/sdk/player/AdManager;->onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    :cond_2
    return-void
.end method

.method public getErrorHandlingBehaviour()Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->errorHandlingBehaviour:Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    return-object v0
.end method

.method public getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->properties:[Lcom/aol/mobile/sdk/player/model/properties/Properties;

    iget v1, p0, Lcom/aol/mobile/sdk/player/Player;->propertiesIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public moveCameraBy(DD)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/player/PlayerLogic;->moveCameraBy(DD)V

    .line 420
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method moveToBackground()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->setOnForeground(Z)V

    .line 435
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method moveToForeground()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->setOnForeground(Z)V

    .line 440
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method notifyAdClicked()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->notifyAdClicked()V

    .line 235
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method notifyAdPresented()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->notifyAdPresented()V

    .line 230
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->pause()V

    .line 156
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method pauseAd()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->pauseAd()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->play()V

    .line 144
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method playAd()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->playAd()V

    return-void
.end method

.method public playAtIndex(I)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->playAtIndex(I)V

    .line 136
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public playNext()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->playNext()V

    .line 120
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public playPrevious()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->playPrevious()V

    .line 128
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public removePlayerStateObserver(Lcom/aol/mobile/sdk/player/PlayerStateObserver;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeStateObserver(Lcom/aol/mobile/sdk/player/StateObserver;)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->stateObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public replay()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->replay()V

    .line 243
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method requestVrm(Ljava/lang/String;)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->requestVrm(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public seekTo(D)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1, p2}, Lcom/aol/mobile/sdk/player/PlayerLogic;->seekTo(D)V

    .line 172
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public selectAudioTrack(Lcom/aol/mobile/sdk/renderer/AudioTrack;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->selectAudioTrack(Lcom/aol/mobile/sdk/renderer/AudioTrack;)V

    .line 206
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public selectTextTrack(Lcom/aol/mobile/sdk/renderer/TextTrack;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->selectTextTrack(Lcom/aol/mobile/sdk/renderer/TextTrack;)V

    .line 216
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method setAd(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->setAd(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;)V

    .line 300
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method setAdManager(Lcom/aol/mobile/sdk/player/AdManager;)V
    .locals 1

    .line 379
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/Player;->adManager:Lcom/aol/mobile/sdk/player/AdManager;

    if-eqz p1, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aol/mobile/sdk/player/AdManager;->onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    :cond_0
    return-void
.end method

.method setAdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aol/mobile/sdk/player/PlayerLogic;->setAdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public setCameraDirection(DD)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/player/PlayerLogic;->setCameraDirection(DD)V

    .line 415
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public setErrorHandlingBehaviour(Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/Player;->errorHandlingBehaviour:Lcom/aol/mobile/sdk/player/Player$ErrorHandlingBehaviour;

    return-void
.end method

.method setGroupProcessingState(Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->setGroupProcessingState(Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;)V

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/PlayerLogic;->setMute(Z)V

    .line 339
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method setTask(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0, p1, p2}, Lcom/aol/mobile/sdk/player/PlayerLogic;->setTask(Lcom/aol/mobile/sdk/player/advertisement/utils/Task;Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;)V

    .line 315
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method public startSeek()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->startSeek()V

    .line 180
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method stopAdPlayback()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->adPlayback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0}, Lcom/aol/mobile/sdk/player/Playback;->stopPlayback()V

    return-void
.end method

.method stopContentPlayback()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->contentPlayback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0}, Lcom/aol/mobile/sdk/player/Playback;->stopPlayback()V

    return-void
.end method

.method public stopSeek()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->stopSeek()V

    .line 188
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method stopWithError(Lcom/aol/mobile/sdk/player/model/ErrorState;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->contentPlayback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/Playback;->stopWithError(Lcom/aol/mobile/sdk/player/model/ErrorState;)V

    return-void
.end method

.method switchStateToAd()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->switchStateToAd()V

    .line 295
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method switchStateToContent()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/PlayerLogic;->switchStateToContent()V

    .line 290
    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/Player;->firePropertiesUpdateEvent()V

    return-void
.end method

.method updateAdDuration(J)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->adPlayback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0, p1, p2}, Lcom/aol/mobile/sdk/player/Playback;->updateDuration(J)V

    return-void
.end method

.method public updateProps()V
    .locals 3

    .line 98
    iget v0, p0, Lcom/aol/mobile/sdk/player/Player;->propertiesIndex:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aol/mobile/sdk/player/Player;->propertiesIndex:I

    .line 99
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->playerLogic:Lcom/aol/mobile/sdk/player/PlayerLogic;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/PlayerLogic;->playerState:Lcom/aol/mobile/sdk/player/model/PlayerState;

    .line 100
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/Player;->properties:[Lcom/aol/mobile/sdk/player/model/properties/Properties;

    iget v2, p0, Lcom/aol/mobile/sdk/player/Player;->propertiesIndex:I

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Lcom/aol/mobile/sdk/player/model/properties/Transformer;->updateProps(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/player/model/PlayerState;)V

    .line 102
    iget-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->isSessionCompleted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/aol/mobile/sdk/player/model/PlayerState;->isSessionCompleted:Z

    :cond_0
    return-void
.end method

.method public updateVideoDimensions(II)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->contentPlayback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0, p1, p2}, Lcom/aol/mobile/sdk/player/Playback;->updateViewportSize(II)V

    return-void
.end method

.method updateVideoDuration(J)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->contentPlayback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0, p1, p2}, Lcom/aol/mobile/sdk/player/Playback;->updateDuration(J)V

    return-void
.end method

.method updateVideoPlayback(Z)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->contentPlayback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/player/Playback;->updateReadyToPlayState(Z)V

    return-void
.end method

.method updateVideoPosition(J)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/Player;->contentPlayback:Lcom/aol/mobile/sdk/player/Playback;

    invoke-interface {v0, p1, p2}, Lcom/aol/mobile/sdk/player/Playback;->updatePosition(J)V

    return-void
.end method
