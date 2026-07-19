.class Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;
.super Ljava/lang/Object;
.source "OathPlayerObservable.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onPlayerStateChanged$0(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    iget-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$000(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lcom/aol/mobile/sdk/player/Player;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object p1

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v0, v0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->current:J

    .line 84
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v2, p1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->duration:J

    .line 85
    iget-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$100(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    new-instance v4, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Progress;-><init>(JJ)V

    invoke-virtual {p1, v4}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$000(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lcom/aol/mobile/sdk/player/Player;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-eqz v0, :cond_9

    .line 53
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->shouldPlay:Z

    if-eqz v0, :cond_6

    .line 55
    sget-object v0, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Ad:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne v0, v1, :cond_5

    .line 56
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean v0, v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isFinished:Z

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$100(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdFinished;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    invoke-direct {v1, p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdFinished;-><init>(Lcom/aol/mobile/sdk/player/model/properties/AdProperties;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 60
    :cond_1
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean v0, v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isAdClicked:Z

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$200(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$100(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdClick;

    invoke-direct {v1}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdClick;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$202(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;Z)Z

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$202(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;Z)Z

    .line 69
    :cond_3
    :goto_0
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-nez p1, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_1

    .line 70
    :cond_4
    iget-wide v0, p1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->current:J

    .line 71
    :goto_1
    iget-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$100(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    new-instance v2, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdProgress;

    invoke-direct {v2, v0, v1}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$AdProgress;-><init>(J)V

    invoke-virtual {p1, v2}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 77
    :cond_5
    iget-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$300(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-nez p1, :cond_9

    .line 78
    iget-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$100(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    new-instance v0, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Play;

    invoke-direct {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Play;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 79
    iget-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$400(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/oathplayer/-$$Lambda$OathPlayerObservable$1$-tAzo6VTK3PYBTjJRCKZybnh5jM;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/oathplayer/-$$Lambda$OathPlayerObservable$1$-tAzo6VTK3PYBTjJRCKZybnh5jM;-><init>(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;)V

    .line 80
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 79
    invoke-static {p1, v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$302(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    goto :goto_2

    .line 93
    :cond_6
    iget-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$300(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 94
    iget-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$500(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)V

    .line 96
    iget-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$000(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lcom/aol/mobile/sdk/player/Player;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object p1

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-eqz p1, :cond_8

    .line 97
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-eqz v0, :cond_8

    .line 98
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v0, v0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->current:J

    .line 99
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v2, p1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->duration:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_7

    const-wide/16 v0, -0x1

    cmp-long p1, v2, v0

    if-eqz p1, :cond_7

    .line 101
    iget-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$100(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    new-instance v0, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Finished;

    invoke-direct {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Finished;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_2

    .line 103
    :cond_7
    iget-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$100(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    new-instance v0, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Pause;

    invoke-direct {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Pause;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_2

    .line 106
    :cond_8
    iget-object p1, p0, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable$1;->this$0:Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;->access$100(Lcom/evie/sidescreen/oathplayer/OathPlayerObservable;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    new-instance v0, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Pause;

    invoke-direct {v0}, Lcom/evie/sidescreen/oathplayer/OathPlayerEvent$Pause;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_9
    :goto_2
    return-void
.end method
