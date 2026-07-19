.class public final Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;
.super Ljava/lang/Object;
.source "SlotOppDetector.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/StateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector$Callback;
    }
.end annotation


# instance fields
.field private adType:Ljava/lang/String;

.field private callback:Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector$Callback;

.field private isSent:Z

.field private prevState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

.field private sessionId:Ljava/lang/String;

.field private slot:Ljava/lang/String;

.field private txid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector$Callback;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->isSent:Z

    .line 29
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector$Callback;

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/aol/mobile/sdk/player/model/PlayerState;Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 9

    .line 34
    iget-object v0, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 38
    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->session:Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/SessionProperties;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->sessionId:Ljava/lang/String;

    .line 39
    iput-boolean v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->isSent:Z

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->prevState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v3, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Content:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne v1, v3, :cond_2

    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v3, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Ad:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne v1, v3, :cond_2

    .line 42
    iput-boolean v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->isSent:Z

    .line 44
    :cond_2
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/VrmState;->slot:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/VrmState;->txid:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->type:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->isSent:Z

    if-nez v1, :cond_3

    .line 45
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/VrmState;->slot:Ljava/lang/String;

    iput-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->slot:Ljava/lang/String;

    .line 46
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/PlayerState;->vrmState:Lcom/aol/mobile/sdk/player/model/VrmState;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/VrmState;->txid:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->txid:Ljava/lang/String;

    .line 47
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->type:Ljava/lang/String;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->adType:Ljava/lang/String;

    .line 50
    :cond_3
    iget-boolean p1, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->isPlaying:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v3, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Content:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne p1, v3, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 51
    :goto_0
    iget-object v3, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->ad:Lcom/aol/mobile/sdk/player/model/properties/AdProperties;

    iget-boolean v3, v3, Lcom/aol/mobile/sdk/player/model/properties/AdProperties;->isPlaying:Z

    if-eqz v3, :cond_5

    iget-object v3, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    sget-object v4, Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;->Ad:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    if-ne v3, v4, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-nez p1, :cond_6

    if-eqz v2, :cond_8

    .line 52
    :cond_6
    iget-boolean p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->isSent:Z

    if-nez p1, :cond_8

    .line 53
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->slot:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->txid:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->adType:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 54
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v3, p1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    .line 55
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v5, p1, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->width:I

    .line 56
    iget-object v4, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    .line 57
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->callback:Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector$Callback;

    iget-object v6, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->txid:Ljava/lang/String;

    iget-object v7, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->slot:Ljava/lang/String;

    iget-object v8, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->adType:Ljava/lang/String;

    invoke-interface/range {v2 .. v8}, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector$Callback;->onSlotOppDetected(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->slot:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->txid:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->adType:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->isSent:Z

    .line 64
    :cond_8
    iget-object p1, p2, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/SlotOppDetector;->prevState:Lcom/aol/mobile/sdk/player/model/properties/Properties$ViewState;

    return-void
.end method
