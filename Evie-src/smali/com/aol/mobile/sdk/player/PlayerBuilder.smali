.class public final Lcom/aol/mobile/sdk/player/PlayerBuilder;
.super Ljava/lang/Object;
.source "PlayerBuilder.java"


# instance fields
.field private extra:Lorg/json/JSONObject;

.field private isAutoplayOn:Z

.field private final oneSDK:Lcom/aol/mobile/sdk/player/OneSDK;

.field private siteSection:Ljava/lang/String;

.field private vvuidGenerator:Lcom/aol/mobile/sdk/player/VvuidGenerator;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/OneSDK;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/aol/mobile/sdk/player/VvuidGenerator;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/VvuidGenerator;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->vvuidGenerator:Lcom/aol/mobile/sdk/player/VvuidGenerator;

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->isAutoplayOn:Z

    .line 38
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->oneSDK:Lcom/aol/mobile/sdk/player/OneSDK;

    return-void
.end method


# virtual methods
.method public buildForPlaylist(Ljava/lang/String;Lcom/aol/mobile/sdk/player/Player$Callback;)V
    .locals 7

    .line 164
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->oneSDK:Lcom/aol/mobile/sdk/player/OneSDK;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/OneSDK;->getVideoProvider()Lcom/aol/mobile/sdk/player/VideoProvider;

    move-result-object v1

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->extra:Lorg/json/JSONObject;

    iget-boolean v4, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->isAutoplayOn:Z

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->siteSection:Ljava/lang/String;

    new-instance v6, Lcom/aol/mobile/sdk/player/PlayerBuilder$2;

    invoke-direct {v6, p0, p2}, Lcom/aol/mobile/sdk/player/PlayerBuilder$2;-><init>(Lcom/aol/mobile/sdk/player/PlayerBuilder;Lcom/aol/mobile/sdk/player/Player$Callback;)V

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/aol/mobile/sdk/player/VideoProvider;->requestPlaylistModel(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V

    return-void
.end method

.method public buildForVideo(Ljava/lang/String;Lcom/aol/mobile/sdk/player/Player$Callback;)V
    .locals 7

    .line 130
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->oneSDK:Lcom/aol/mobile/sdk/player/OneSDK;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/OneSDK;->getVideoProvider()Lcom/aol/mobile/sdk/player/VideoProvider;

    move-result-object v1

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->extra:Lorg/json/JSONObject;

    iget-boolean v4, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->isAutoplayOn:Z

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->siteSection:Ljava/lang/String;

    new-instance v6, Lcom/aol/mobile/sdk/player/PlayerBuilder$1;

    invoke-direct {v6, p0, p2}, Lcom/aol/mobile/sdk/player/PlayerBuilder$1;-><init>(Lcom/aol/mobile/sdk/player/PlayerBuilder;Lcom/aol/mobile/sdk/player/Player$Callback;)V

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/aol/mobile/sdk/player/VideoProvider;->requestVideoModel(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V

    return-void
.end method

.method public buildForVideoList([Ljava/lang/String;Lcom/aol/mobile/sdk/player/Player$Callback;)V
    .locals 7

    .line 198
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->oneSDK:Lcom/aol/mobile/sdk/player/OneSDK;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/OneSDK;->getVideoProvider()Lcom/aol/mobile/sdk/player/VideoProvider;

    move-result-object v1

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->extra:Lorg/json/JSONObject;

    iget-boolean v4, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->isAutoplayOn:Z

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->siteSection:Ljava/lang/String;

    new-instance v6, Lcom/aol/mobile/sdk/player/PlayerBuilder$3;

    invoke-direct {v6, p0, p2}, Lcom/aol/mobile/sdk/player/PlayerBuilder$3;-><init>(Lcom/aol/mobile/sdk/player/PlayerBuilder;Lcom/aol/mobile/sdk/player/Player$Callback;)V

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/aol/mobile/sdk/player/VideoProvider;->requestPlaylistModel([Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V

    return-void
.end method

.method public buildFrom(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)Lcom/aol/mobile/sdk/player/Player;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aol/mobile/sdk/player/EmptyPlaylistException;,
            Lcom/aol/mobile/sdk/player/InvalidRendererException;
        }
    .end annotation

    .line 103
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->playlistItems:[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 105
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->playlistItems:[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 106
    iget-object v4, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;->video:Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->oneSDK:Lcom/aol/mobile/sdk/player/OneSDK;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/OneSDK;->renderersRegistry:Lcom/aol/mobile/sdk/renderer/RenderersRegistry;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;->video:Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->renderer:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/aol/mobile/sdk/renderer/RenderersRegistry;->hasRenderer(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    new-instance p1, Lcom/aol/mobile/sdk/player/InvalidRendererException;

    invoke-direct {p1}, Lcom/aol/mobile/sdk/player/InvalidRendererException;-><init>()V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {p1}, Lcom/aol/mobile/sdk/player/utils/VideoProviderUtils;->getVideoModelsList(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)Ljava/util/List;

    move-result-object v0

    .line 111
    iget-boolean v1, p1, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->isAutoplay:Z

    iget-object v2, p1, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->features:Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;

    invoke-virtual {p0, v0, v1, v2}, Lcom/aol/mobile/sdk/player/PlayerBuilder;->constructModel(Ljava/util/List;ZLcom/aol/mobile/sdk/player/VideoProviderResponse$Features;)Lcom/aol/mobile/sdk/player/model/PlayerModel;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/aol/mobile/sdk/player/Player;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->vvuidGenerator:Lcom/aol/mobile/sdk/player/VvuidGenerator;

    invoke-direct {v1, v0, v2}, Lcom/aol/mobile/sdk/player/Player;-><init>(Lcom/aol/mobile/sdk/player/model/PlayerModel;Lcom/aol/mobile/sdk/player/VvuidGenerator;)V

    .line 114
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->oneSDK:Lcom/aol/mobile/sdk/player/OneSDK;

    invoke-virtual {v0, p1, v1}, Lcom/aol/mobile/sdk/player/OneSDK;->constructPlayer(Lcom/aol/mobile/sdk/player/VideoProviderResponse;Lcom/aol/mobile/sdk/player/Player;)Lcom/aol/mobile/sdk/player/Player;

    move-result-object p1

    return-object p1

    .line 103
    :cond_3
    new-instance p1, Lcom/aol/mobile/sdk/player/EmptyPlaylistException;

    invoke-direct {p1}, Lcom/aol/mobile/sdk/player/EmptyPlaylistException;-><init>()V

    throw p1

    return-void
.end method

.method constructModel(Ljava/util/List;ZLcom/aol/mobile/sdk/player/VideoProviderResponse$Features;)Lcom/aol/mobile/sdk/player/model/PlayerModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/model/PlaylistItem;",
            ">;Z",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;",
            ")",
            "Lcom/aol/mobile/sdk/player/model/PlayerModel;"
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/aol/mobile/sdk/player/model/PlayerModel;

    iget-boolean v1, p3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;->embedClickthroughUrl:Z

    iget-boolean p3, p3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;->showClickThroughClose:Z

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/aol/mobile/sdk/player/model/PlayerModel;-><init>(Ljava/util/List;ZZZ)V

    return-object v0
.end method

.method public requestForPlaylist(Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V
    .locals 7

    .line 188
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->oneSDK:Lcom/aol/mobile/sdk/player/OneSDK;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/OneSDK;->getVideoProvider()Lcom/aol/mobile/sdk/player/VideoProvider;

    move-result-object v1

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->extra:Lorg/json/JSONObject;

    iget-boolean v4, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->isAutoplayOn:Z

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->siteSection:Ljava/lang/String;

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/aol/mobile/sdk/player/VideoProvider;->requestPlaylistModel(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V

    return-void
.end method

.method public requestForVideo(Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V
    .locals 7

    .line 154
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->oneSDK:Lcom/aol/mobile/sdk/player/OneSDK;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/OneSDK;->getVideoProvider()Lcom/aol/mobile/sdk/player/VideoProvider;

    move-result-object v1

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->extra:Lorg/json/JSONObject;

    iget-boolean v4, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->isAutoplayOn:Z

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->siteSection:Ljava/lang/String;

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/aol/mobile/sdk/player/VideoProvider;->requestVideoModel(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V

    return-void
.end method

.method public requestForVideoList([Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V
    .locals 7

    .line 222
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->oneSDK:Lcom/aol/mobile/sdk/player/OneSDK;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/player/OneSDK;->getVideoProvider()Lcom/aol/mobile/sdk/player/VideoProvider;

    move-result-object v1

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->extra:Lorg/json/JSONObject;

    iget-boolean v4, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->isAutoplayOn:Z

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->siteSection:Ljava/lang/String;

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/aol/mobile/sdk/player/VideoProvider;->requestPlaylistModel([Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Lcom/aol/mobile/sdk/player/VideoProvider$Callback;)V

    return-void
.end method

.method public setAutoplay(Z)Lcom/aol/mobile/sdk/player/PlayerBuilder;
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->isAutoplayOn:Z

    return-object p0
.end method

.method public setExtra(Lorg/json/JSONObject;)Lcom/aol/mobile/sdk/player/PlayerBuilder;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->extra:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setVvuidGenerator(Lcom/aol/mobile/sdk/player/VvuidGenerator;)Lcom/aol/mobile/sdk/player/PlayerBuilder;
    .locals 0

    if-nez p1, :cond_0

    .line 50
    new-instance p1, Lcom/aol/mobile/sdk/player/VvuidGenerator;

    invoke-direct {p1}, Lcom/aol/mobile/sdk/player/VvuidGenerator;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->vvuidGenerator:Lcom/aol/mobile/sdk/player/VvuidGenerator;

    return-object p0
.end method

.method public withSiteSection(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/PlayerBuilder;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/PlayerBuilder;->siteSection:Ljava/lang/String;

    return-object p0
.end method
