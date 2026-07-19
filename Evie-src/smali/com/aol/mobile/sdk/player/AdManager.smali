.class public Lcom/aol/mobile/sdk/player/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/AdManager$State;
    }
.end annotation


# instance fields
.field private final adBreakage:[Lcom/aol/mobile/sdk/player/model/AdsTimeline;

.field private final adCallback:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback<",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
            ">;"
        }
    .end annotation
.end field

.field private adProgress:Ljava/lang/Double;

.field private adProvider:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aol/mobile/sdk/player/advertisement/AdProvider<",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
            ">;"
        }
    .end annotation
.end field

.field private adsToPlayLeft:I

.field private currentAdInfo:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

.field private final handler:Landroid/os/Handler;

.field private final hardTimeout:J

.field private final midrolls:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final player:Lcom/aol/mobile/sdk/player/Player;

.field private sessionId:Ljava/lang/String;

.field private shouldPlay:Z

.field private final softTimeout:J

.field private state:Lcom/aol/mobile/sdk/player/AdManager$State;

.field private final userAgent:Ljava/lang/String;

.field private videoChangeIsProcessed:Z

.field private videoIndex:I

.field private videoProgress:D


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/aol/mobile/sdk/player/model/AdsTimeline;Lcom/aol/mobile/sdk/player/Player;JJ)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->handler:Landroid/os/Handler;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->midrolls:Ljava/util/LinkedList;

    .line 46
    sget-object v0, Lcom/aol/mobile/sdk/player/AdManager$State;->VIDEO_PLAY:Lcom/aol/mobile/sdk/player/AdManager$State;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->state:Lcom/aol/mobile/sdk/player/AdManager$State;

    const/high16 v0, -0x80000000

    .line 50
    iput v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->videoIndex:I

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->sessionId:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/aol/mobile/sdk/player/AdManager$1;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/player/AdManager$1;-><init>(Lcom/aol/mobile/sdk/player/AdManager;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->adCallback:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->videoChangeIsProcessed:Z

    .line 99
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/AdManager;->adBreakage:[Lcom/aol/mobile/sdk/player/model/AdsTimeline;

    .line 100
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/AdManager;->player:Lcom/aol/mobile/sdk/player/Player;

    .line 101
    iput-wide p4, p0, Lcom/aol/mobile/sdk/player/AdManager;->softTimeout:J

    .line 102
    iput-wide p6, p0, Lcom/aol/mobile/sdk/player/AdManager;->hardTimeout:J

    .line 103
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/AdManager;->userAgent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/aol/mobile/sdk/player/AdManager;)Lcom/aol/mobile/sdk/player/Player;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/AdManager;->player:Lcom/aol/mobile/sdk/player/Player;

    return-object p0
.end method

.method static synthetic access$100(Lcom/aol/mobile/sdk/player/AdManager;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/AdManager;->getAdType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAdType()Ljava/lang/String;
    .locals 2

    .line 272
    sget-object v0, Lcom/aol/mobile/sdk/player/AdManager$2;->$SwitchMap$com$aol$mobile$sdk$player$AdManager$State:[I

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/AdManager;->state:Lcom/aol/mobile/sdk/player/AdManager$State;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/AdManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    const-string v0, "midroll"

    return-object v0

    :pswitch_1
    const-string v0, "preroll"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getMidrollToPlay(Ljava/util/LinkedList;J)Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;",
            ">;J)",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 113
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    .line 115
    iget-wide v3, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;->timePosition:J

    invoke-static {v3, v4, p1, p2}, Lcom/aol/mobile/sdk/player/AdManager;->shouldBePlayedAt(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_2

    .line 116
    iget-wide v3, v1, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;->timePosition:J

    iget-wide v5, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;->timePosition:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    :goto_1
    move-object v1, v2

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private processAdEnded()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->adBreakage:[Lcom/aol/mobile/sdk/player/model/AdsTimeline;

    iget v1, p0, Lcom/aol/mobile/sdk/player/AdManager;->videoIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    sget-object v0, Lcom/aol/mobile/sdk/player/AdManager$2;->$SwitchMap$com$aol$mobile$sdk$player$AdManager$State:[I

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/AdManager;->state:Lcom/aol/mobile/sdk/player/AdManager$State;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/AdManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 252
    :pswitch_0
    iget v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->adsToPlayLeft:I

    if-lez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->currentAdInfo:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/player/AdManager;->requestAd(Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;)V

    goto :goto_0

    .line 255
    :cond_1
    sget-object v0, Lcom/aol/mobile/sdk/player/AdManager$State;->VIDEO_PLAY:Lcom/aol/mobile/sdk/player/AdManager$State;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->state:Lcom/aol/mobile/sdk/player/AdManager$State;

    .line 256
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->switchStateToContent()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processShouldPlayChange()V
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->shouldPlay:Z

    if-eqz v0, :cond_0

    .line 174
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->videoChangeIsProcessed:Z

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/AdManager;->processVideoChange()V

    :cond_0
    return-void
.end method

.method private processVideoChange()V
    .locals 4

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->videoChangeIsProcessed:Z

    .line 182
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/AdManager;->state:Lcom/aol/mobile/sdk/player/AdManager$State;

    sget-object v2, Lcom/aol/mobile/sdk/player/AdManager$State;->VIDEO_PLAY:Lcom/aol/mobile/sdk/player/AdManager$State;

    if-eq v1, v2, :cond_1

    .line 183
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/AdManager;->adProvider:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->cancel()V

    const/4 v1, 0x0

    .line 185
    iput-object v1, p0, Lcom/aol/mobile/sdk/player/AdManager;->adProvider:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    .line 187
    :cond_0
    sget-object v1, Lcom/aol/mobile/sdk/player/AdManager$State;->VIDEO_PLAY:Lcom/aol/mobile/sdk/player/AdManager$State;

    iput-object v1, p0, Lcom/aol/mobile/sdk/player/AdManager;->state:Lcom/aol/mobile/sdk/player/AdManager$State;

    .line 188
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/AdManager;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/Player;->stopAdPlayback()V

    .line 189
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/AdManager;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/Player;->switchStateToContent()V

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/AdManager;->adBreakage:[Lcom/aol/mobile/sdk/player/model/AdsTimeline;

    iget v2, p0, Lcom/aol/mobile/sdk/player/AdManager;->videoIndex:I

    aget-object v1, v1, v2

    if-nez v1, :cond_2

    return-void

    .line 194
    :cond_2
    iget-object v2, v1, Lcom/aol/mobile/sdk/player/model/AdsTimeline;->prerolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iput-object v2, p0, Lcom/aol/mobile/sdk/player/AdManager;->currentAdInfo:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    .line 195
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/AdManager;->midrolls:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 196
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/AdManager;->midrolls:Ljava/util/LinkedList;

    iget-object v3, v1, Lcom/aol/mobile/sdk/player/model/AdsTimeline;->midrolls:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 198
    iget-object v2, v1, Lcom/aol/mobile/sdk/player/model/AdsTimeline;->prerolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v0, v2

    iput v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->adsToPlayLeft:I

    .line 200
    iget v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->adsToPlayLeft:I

    if-lez v0, :cond_3

    .line 201
    sget-object v0, Lcom/aol/mobile/sdk/player/AdManager$State;->AD_PLAY_PREROLL:Lcom/aol/mobile/sdk/player/AdManager$State;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->state:Lcom/aol/mobile/sdk/player/AdManager$State;

    .line 202
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->switchStateToAd()V

    .line 203
    iget-object v0, v1, Lcom/aol/mobile/sdk/player/model/AdsTimeline;->prerolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/player/AdManager;->requestAd(Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;)V

    :cond_3
    return-void
.end method

.method private processVideoProgress(Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;)V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->state:Lcom/aol/mobile/sdk/player/AdManager$State;

    sget-object v1, Lcom/aol/mobile/sdk/player/AdManager$State;->VIDEO_PLAY:Lcom/aol/mobile/sdk/player/AdManager$State;

    if-eq v0, v1, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->adBreakage:[Lcom/aol/mobile/sdk/player/model/AdsTimeline;

    iget v1, p0, Lcom/aol/mobile/sdk/player/AdManager;->videoIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->midrolls:Ljava/util/LinkedList;

    iget-wide v1, p1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->current:J

    invoke-static {v0, v1, v2}, Lcom/aol/mobile/sdk/player/AdManager;->getMidrollToPlay(Ljava/util/LinkedList;J)Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 213
    iput v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->adsToPlayLeft:I

    .line 214
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/AdManager;->currentAdInfo:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    .line 216
    iget v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->adsToPlayLeft:I

    if-lez v0, :cond_2

    .line 217
    sget-object v0, Lcom/aol/mobile/sdk/player/AdManager$State;->AD_PLAY_MIDROLL:Lcom/aol/mobile/sdk/player/AdManager$State;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->state:Lcom/aol/mobile/sdk/player/AdManager$State;

    .line 218
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->switchStateToAd()V

    .line 219
    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/AdManager;->requestAd(Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;)V

    :cond_2
    return-void
.end method

.method private static shouldBePlayedAt(JJ)Z
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    cmp-long v0, p2, p0

    if-ltz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method getAdCallback()Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback<",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->adCallback:Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;

    return-object v0
.end method

.method getAdService(Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;)Lcom/aol/mobile/sdk/player/advertisement/AdServices;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;",
            ")",
            "Lcom/aol/mobile/sdk/player/advertisement/AdServices<",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;",
            "Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmSource;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v8, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/AdManager;->userAgent:Ljava/lang/String;

    iget-wide v3, p0, Lcom/aol/mobile/sdk/player/AdManager;->softTimeout:J

    iget-wide v5, p0, Lcom/aol/mobile/sdk/player/AdManager;->hardTimeout:J

    iget-object v7, p0, Lcom/aol/mobile/sdk/player/AdManager;->handler:Landroid/os/Handler;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdServices;-><init>(Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Handler;)V

    return-object v8
.end method

.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 8

    .line 129
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    .line 131
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    .line 132
    iget-object v2, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v2, v2, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    .line 133
    iget-boolean v3, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->shouldPlay:Z

    .line 136
    iget-object v4, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/AdManager;->sessionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 137
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/AdManager;->sessionId:Ljava/lang/String;

    .line 138
    iput v2, p0, Lcom/aol/mobile/sdk/player/AdManager;->videoIndex:I

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/AdManager;->videoChangeIsProcessed:Z

    .line 140
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/AdManager;->shouldPlay:Z

    .line 141
    iput-object v5, p0, Lcom/aol/mobile/sdk/player/AdManager;->adProgress:Ljava/lang/Double;

    .line 144
    :cond_1
    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/AdManager;->shouldPlay:Z

    if-eq p1, v3, :cond_2

    .line 145
    iput-boolean v3, p0, Lcom/aol/mobile/sdk/player/AdManager;->shouldPlay:Z

    .line 146
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/AdManager;->processShouldPlayChange()V

    return-void

    .line 150
    :cond_2
    iget-object p1, v1, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-eqz p1, :cond_3

    .line 151
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/AdManager;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->stopAdPlayback()V

    .line 152
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/AdManager;->processAdEnded()V

    return-void

    .line 156
    :cond_3
    iget-object p1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-eqz p1, :cond_4

    .line 157
    iget-boolean v2, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isSeeking:Z

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/aol/mobile/sdk/player/AdManager;->videoProgress:D

    iget-wide v6, p1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->progress:D

    cmpl-double p1, v2, v6

    if-eqz p1, :cond_4

    .line 158
    iget-object p1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v1, p1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->progress:D

    iput-wide v1, p0, Lcom/aol/mobile/sdk/player/AdManager;->videoProgress:D

    .line 159
    iget-object p1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/AdManager;->processVideoProgress(Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;)V

    return-void

    .line 163
    :cond_4
    iget-object p1, v1, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, v1, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->time:Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;

    iget-wide v0, p1, Lcom/aol/mobile/sdk/player/model/properties/TimeProperties;->progress:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 164
    :goto_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/AdManager;->adProgress:Ljava/lang/Double;

    invoke-static {v5, p1}, Lcom/aol/mobile/sdk/player/utils/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 165
    iput-object v5, p0, Lcom/aol/mobile/sdk/player/AdManager;->adProgress:Ljava/lang/Double;

    if-eqz v5, :cond_6

    .line 166
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_6

    .line 167
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/AdManager;->processAdEnded()V

    :cond_6
    return-void
.end method

.method processNoAd()V
    .locals 1

    .line 240
    iget v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->adsToPlayLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->adsToPlayLeft:I

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->adProvider:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    .line 242
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->stopAdPlayback()V

    .line 243
    invoke-direct {p0}, Lcom/aol/mobile/sdk/player/AdManager;->processAdEnded()V

    return-void
.end method

.method processVrmAd(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object v0

    .line 226
    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v1, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Content:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne v0, v1, :cond_0

    return-void

    .line 227
    :cond_0
    iget v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->adsToPlayLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->adsToPlayLeft:I

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->adProvider:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    .line 230
    sget-object v0, Lcom/aol/mobile/sdk/player/AdManager$2;->$SwitchMap$com$aol$mobile$sdk$player$AdManager$State:[I

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/AdManager;->state:Lcom/aol/mobile/sdk/player/AdManager$State;

    invoke-virtual {v1}, Lcom/aol/mobile/sdk/player/AdManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/Player;->setAd(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;)V

    .line 234
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/AdManager;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/Player;->playAd()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method requestAd(Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;)V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->player:Lcom/aol/mobile/sdk/player/Player;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/Player;->getProperties()Lcom/aol/mobile/sdk/player/model/properties/Properties;

    move-result-object v0

    .line 264
    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    new-instance v0, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/AdManager;->getAdService(Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;)Lcom/aol/mobile/sdk/player/advertisement/AdServices;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aol/mobile/sdk/player/AdManager;->getAdCallback()Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;-><init>(Lcom/aol/mobile/sdk/player/advertisement/AdServices;Lcom/aol/mobile/sdk/player/advertisement/AdProvider$AdCallback;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->adProvider:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    .line 266
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/AdManager;->player:Lcom/aol/mobile/sdk/player/Player;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/aol/mobile/sdk/player/Player;->requestVrm(Ljava/lang/String;)V

    .line 267
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/AdManager;->adProvider:Lcom/aol/mobile/sdk/player/advertisement/AdProvider;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/player/advertisement/AdProvider;->start()V

    return-void
.end method
