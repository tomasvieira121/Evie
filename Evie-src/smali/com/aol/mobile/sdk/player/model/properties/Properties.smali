.class public final Lcom/aol/mobile/sdk/player/model/properties/Properties;
.super Ljava/lang/Object;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;
    }
.end annotation


# instance fields
.field public final ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

.field public final camera:Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;

.field public errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

.field public isAutoplay:Z

.field public isCasting:Z

.field public isMuted:Z

.field public isOnForeground:Z

.field public isPlaybackStarted:Z

.field public isSessionCompleted:Z

.field public final playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

.field public final playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

.field public final session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

.field public shouldPlay:Z

.field public viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

.field public final viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->isOnForeground:Z

    .line 81
    sget-object v0, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Content:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    .line 85
    new-instance v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    .line 86
    new-instance v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    .line 87
    new-instance v0, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    .line 88
    new-instance v0, Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->camera:Lcom/aol/mobile/sdk/player/model/properties/CameraProperties;

    .line 89
    new-instance v0, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    .line 90
    new-instance v0, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    return-void
.end method
