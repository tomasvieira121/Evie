.class public abstract Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;
.super Ljava/lang/Object;
.source "VideoPlaybackListener.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PublicApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;
    }
.end annotation


# instance fields
.field private errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

.field private hasStarted:Z

.field private isLoading:Ljava/lang/Boolean;

.field private isVideoPlaying:Ljava/lang/Boolean;

.field private quartile:Ljava/lang/Integer;

.field private videoIndex:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkLoadingEvents(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 3

    .line 107
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez p1, :cond_0

    return-void

    .line 109
    :cond_0
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isLoading:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isBuffering:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 110
    :goto_1
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->model:Lcom/aol/mobile/sdk/player/model/VideoModel;

    .line 112
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->isVideoPlaying:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->isLoading:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_5

    :cond_3
    if-eqz v0, :cond_4

    .line 114
    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->onVideoLoadingStarted(Lcom/aol/mobile/sdk/player/model/VideoModel;)V

    goto :goto_2

    .line 116
    :cond_4
    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->onVideoLoadingEnded(Lcom/aol/mobile/sdk/player/model/VideoModel;)V

    .line 120
    :cond_5
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->isLoading:Ljava/lang/Boolean;

    return-void
.end method

.method private checkPlaybackEvents(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 8

    .line 43
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->model:Lcom/aol/mobile/sdk/player/model/VideoModel;

    .line 47
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    .line 48
    iget-boolean v3, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isPlaying:Z

    .line 49
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget p1, p1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    .line 50
    iget-object v4, p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->videoIndex:Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 51
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 54
    :goto_1
    iget-object v7, p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->isVideoPlaying:Ljava/lang/Boolean;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eq v7, v3, :cond_8

    :cond_3
    if-eqz v3, :cond_5

    .line 56
    iget-boolean v4, p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->hasStarted:Z

    if-eqz v4, :cond_4

    .line 57
    invoke-virtual {p0, v1}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->onVideoPlay(Lcom/aol/mobile/sdk/player/model/VideoModel;)V

    goto :goto_3

    .line 59
    :cond_4
    iput-boolean v6, p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->hasStarted:Z

    .line 60
    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->model:Lcom/aol/mobile/sdk/player/model/VideoModel;

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->onVideoStarted(Lcom/aol/mobile/sdk/player/model/VideoModel;)V

    goto :goto_3

    :cond_5
    if-nez v4, :cond_7

    .line 63
    iget-boolean v0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isFinished:Z

    if-eqz v0, :cond_6

    goto :goto_2

    .line 67
    :cond_6
    invoke-virtual {p0, v1}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->onVideoPause(Lcom/aol/mobile/sdk/player/model/VideoModel;)V

    goto :goto_3

    .line 64
    :cond_7
    :goto_2
    iput-boolean v5, p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->hasStarted:Z

    .line 65
    invoke-virtual {p0, v1}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->onVideoEnded(Lcom/aol/mobile/sdk/player/model/VideoModel;)V

    .line 72
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-nez v0, :cond_9

    if-nez v2, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-eq v0, v2, :cond_b

    if-eqz v2, :cond_b

    .line 73
    :cond_a
    invoke-virtual {p0, v1, v2}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->onPlaybackError(Lcom/aol/mobile/sdk/player/model/VideoModel;Lcom/aol/mobile/sdk/player/model/ErrorState;)V

    .line 76
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->videoIndex:Ljava/lang/Integer;

    .line 77
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->isVideoPlaying:Ljava/lang/Boolean;

    .line 78
    iput-object v2, p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    return-void
.end method

.method private checkQuartileEvents(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 3

    .line 82
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isStatic:Z

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-eqz v0, :cond_3

    .line 89
    iget v1, v0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->quartile:I

    .line 90
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->quartile:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 91
    :cond_1
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->model:Lcom/aol/mobile/sdk/player/model/VideoModel;

    .line 92
    iget v0, v0, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->quartile:I

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->valueOf(I)Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    move-result-object v0

    .line 94
    sget-object v2, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;->UNKNOWN:Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;

    if-eq v0, v2, :cond_2

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->onVideoQuartilePlayed(Lcom/aol/mobile/sdk/player/model/VideoModel;Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;)V

    .line 99
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->quartile:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->quartile:Ljava/lang/Integer;

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract onPlaybackError(Lcom/aol/mobile/sdk/player/model/VideoModel;Lcom/aol/mobile/sdk/player/model/ErrorState;)V
.end method

.method public final onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->checkLoadingEvents(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->checkPlaybackEvents(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener;->checkQuartileEvents(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V

    return-void
.end method

.method public abstract onVideoEnded(Lcom/aol/mobile/sdk/player/model/VideoModel;)V
.end method

.method public abstract onVideoLoadingEnded(Lcom/aol/mobile/sdk/player/model/VideoModel;)V
.end method

.method public abstract onVideoLoadingStarted(Lcom/aol/mobile/sdk/player/model/VideoModel;)V
.end method

.method public abstract onVideoPause(Lcom/aol/mobile/sdk/player/model/VideoModel;)V
.end method

.method public abstract onVideoPlay(Lcom/aol/mobile/sdk/player/model/VideoModel;)V
.end method

.method public abstract onVideoQuartilePlayed(Lcom/aol/mobile/sdk/player/model/VideoModel;Lcom/aol/mobile/sdk/player/listener/VideoPlaybackListener$Quartile;)V
.end method

.method public abstract onVideoStarted(Lcom/aol/mobile/sdk/player/model/VideoModel;)V
.end method
