.class public abstract Lcom/aol/mobile/sdk/player/listener/PlaylistListener;
.super Ljava/lang/Object;
.source "PlaylistListener.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PublicApi;
.end annotation


# instance fields
.field private videoIndex:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onNextInPlaylist(Lcom/aol/mobile/sdk/player/model/PlaylistItem;)V
.end method

.method public final onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 3

    .line 28
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlist:Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;

    iget v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistProperties;->currentIndex:I

    .line 30
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/PlaylistListener;->videoIndex:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 31
    iget-object v1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    .line 32
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->voidVideo:Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;

    if-eqz v1, :cond_0

    .line 33
    new-instance p1, Lcom/aol/mobile/sdk/player/model/PlaylistItem;

    iget-object v1, v1, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->model:Lcom/aol/mobile/sdk/player/model/VideoModel;

    invoke-direct {p1, v1}, Lcom/aol/mobile/sdk/player/model/PlaylistItem;-><init>(Lcom/aol/mobile/sdk/player/model/VideoModel;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/aol/mobile/sdk/player/model/PlaylistItem;

    new-instance v2, Lcom/aol/mobile/sdk/player/model/VoidVideoModel;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;->reason:Ljava/lang/String;

    invoke-direct {v2, p1}, Lcom/aol/mobile/sdk/player/model/VoidVideoModel;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/aol/mobile/sdk/player/model/PlaylistItem;-><init>(Lcom/aol/mobile/sdk/player/model/VoidVideoModel;)V

    move-object p1, v1

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/PlaylistListener;->videoIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_1

    .line 36
    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/listener/PlaylistListener;->onNextInPlaylist(Lcom/aol/mobile/sdk/player/model/PlaylistItem;)V

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/PlaylistListener;->videoIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, v0, :cond_2

    .line 40
    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/listener/PlaylistListener;->onPreviousInPlaylist(Lcom/aol/mobile/sdk/player/model/PlaylistItem;)V

    .line 44
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/PlaylistListener;->videoIndex:Ljava/lang/Integer;

    return-void
.end method

.method public abstract onPreviousInPlaylist(Lcom/aol/mobile/sdk/player/model/PlaylistItem;)V
.end method
