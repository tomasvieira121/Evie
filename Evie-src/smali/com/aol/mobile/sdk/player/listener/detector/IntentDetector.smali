.class public final Lcom/aol/mobile/sdk/player/listener/detector/IntentDetector;
.super Ljava/lang/Object;
.source "IntentDetector.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/listener/detector/IntentDetector$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/aol/mobile/sdk/player/listener/detector/IntentDetector$Callback;

.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/listener/detector/IntentDetector$Callback;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/IntentDetector;->mCallback:Lcom/aol/mobile/sdk/player/listener/detector/IntentDetector$Callback;

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 4

    .line 27
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    iget-boolean v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->shouldPlay:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/IntentDetector;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/IntentDetector;->sessionId:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/IntentDetector;->mCallback:Lcom/aol/mobile/sdk/player/listener/detector/IntentDetector$Callback;

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v1, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    const/4 v2, 0x0

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/aol/mobile/sdk/player/listener/detector/IntentDetector$Callback;->onIntentDetected(ILjava/lang/String;Ljava/lang/String;F)V

    :cond_1
    return-void
.end method
