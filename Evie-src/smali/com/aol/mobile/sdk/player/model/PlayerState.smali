.class public Lcom/aol/mobile/sdk/player/model/PlayerState;
.super Ljava/lang/Object;
.source "PlayerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;
    }
.end annotation


# instance fields
.field public final adCues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final adState:Lcom/aol/mobile/sdk/player/model/AdState;

.field public audioTrackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/renderer/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field public bufferedPercentage:I

.field public final cameraDirection:Lcom/aol/mobile/sdk/player/model/CameraDirection;

.field public errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

.field public hlsBitrate:J

.field public isCasting:Z

.field public isMuted:Z

.field public isOnForeground:Z

.field public isPlaybackStarted:Z

.field public isSessionCompleted:Z

.field public isVideoStreamPlaying:Z

.field public playerHeight:I

.field public final playerModel:Lcom/aol/mobile/sdk/player/model/PlayerModel;

.field public playerWidth:I

.field public seekPosition:Ljava/lang/Double;

.field public seekState:Lcom/aol/mobile/sdk/player/model/SeekState;

.field public final session:Lcom/aol/mobile/sdk/player/model/Session;

.field public shouldPlay:Z

.field public textTrackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/renderer/TextTrack;",
            ">;"
        }
    .end annotation
.end field

.field public timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

.field public uniqueVideoId:Ljava/lang/String;

.field public videoIndex:I

.field public viewState:Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;

.field public final vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/model/PlayerModel;Ljava/lang/String;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/aol/mobile/sdk/player/model/Session;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/model/Session;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/PlayerState;->session:Lcom/aol/mobile/sdk/player/model/Session;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adCues:Ljava/util/Set;

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/PlayerState;->isOnForeground:Z

    .line 133
    sget-object v0, Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;->Content:Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/PlayerState;->viewState:Lcom/aol/mobile/sdk/player/model/PlayerState$ViewState;

    .line 136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/PlayerState;->textTrackList:Ljava/util/List;

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/PlayerState;->audioTrackList:Ljava/util/List;

    .line 141
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/PlayerState;->playerModel:Lcom/aol/mobile/sdk/player/model/PlayerModel;

    .line 142
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/PlayerModel;->isAutoplayOn:Z

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/PlayerState;->shouldPlay:Z

    .line 143
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/model/PlayerState;->uniqueVideoId:Ljava/lang/String;

    .line 144
    new-instance p2, Lcom/aol/mobile/sdk/player/model/CameraDirection;

    invoke-direct {p2}, Lcom/aol/mobile/sdk/player/model/CameraDirection;-><init>()V

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/model/PlayerState;->cameraDirection:Lcom/aol/mobile/sdk/player/model/CameraDirection;

    .line 145
    new-instance p2, Lcom/aol/mobile/sdk/player/model/AdState;

    invoke-direct {p2}, Lcom/aol/mobile/sdk/player/model/AdState;-><init>()V

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/model/PlayerState;->adState:Lcom/aol/mobile/sdk/player/model/AdState;

    .line 146
    new-instance p2, Lcom/aol/mobile/sdk/player/model/VrmState;

    invoke-direct {p2}, Lcom/aol/mobile/sdk/player/model/VrmState;-><init>()V

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    .line 147
    sget-object p2, Lcom/aol/mobile/sdk/player/model/SeekState;->NONE:Lcom/aol/mobile/sdk/player/model/SeekState;

    iput-object p2, p0, Lcom/aol/mobile/sdk/player/model/PlayerState;->seekState:Lcom/aol/mobile/sdk/player/model/SeekState;

    .line 148
    iget-boolean p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerModel;->isAutoplayOn:Z

    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/model/PlayerState;->isPlaybackStarted:Z

    return-void
.end method
