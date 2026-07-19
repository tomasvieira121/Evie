.class public final Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;
.super Ljava/lang/Object;
.source "VideoProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;
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

.field public final audioTrackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/renderer/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field public bufferedPercentage:I

.field public canBePaused:Z

.field public canBePlayed:Z

.field public canBeReplayed:Z

.field public canBeSeek:Z

.field public hlsBitrate:J

.field public isBuffering:Z

.field public isFinished:Z

.field public isLive:Z

.field public isLoading:Z

.field public isPaused:Z

.field public isPlaying:Z

.field public isScreenCastingEnabled:Z

.field public isSeeking:Z

.field public isStatic:Z

.field public isVideoStreamPlaying:Z

.field public model:Lcom/aol/mobile/sdk/player/model/VideoModel;

.field public renderer:Ljava/lang/String;

.field public selectedAudioTrack:Lcom/aol/mobile/sdk/renderer/AudioTrack;

.field public selectedTextTrack:Lcom/aol/mobile/sdk/renderer/TextTrack;

.field public final subtitles:Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;

.field public final textTrackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/renderer/TextTrack;",
            ">;"
        }
    .end annotation
.end field

.field public thumbnailUrl:Ljava/lang/String;

.field public time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

.field public title:Ljava/lang/String;

.field public type:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

.field public uniqueVideoId:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->subtitles:Lcom/aol/mobile/sdk/player/model/properties/SubtitlesProperties;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->textTrackList:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->audioTrackList:Ljava/util/List;

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->url:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/aol/mobile/sdk/player/model/VideoModel;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aol/mobile/sdk/player/model/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->model:Lcom/aol/mobile/sdk/player/model/VideoModel;

    .line 47
    sget-object v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;->UNKNOWN:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->type:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties$Type;

    const-string v0, "com.onemobilesdk.videorenderer.flat@2.11"

    .line 106
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->renderer:Ljava/lang/String;

    const-string v0, ""

    .line 108
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->adCues:Ljava/util/Set;

    return-void
.end method
