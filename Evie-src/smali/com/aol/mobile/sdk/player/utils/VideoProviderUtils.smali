.class public Lcom/aol/mobile/sdk/player/utils/VideoProviderUtils;
.super Ljava/lang/Object;
.source "VideoProviderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdsTimelines(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)[Lcom/aol/mobile/sdk/player/model/AdsTimeline;
    .locals 10

    .line 64
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->playlistItems:[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 67
    iget-object v4, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;->video:Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    if-eqz v4, :cond_2

    .line 68
    iget-object v3, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;->video:Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    .line 69
    iget-object v4, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->midrolls:Ljava/util/List;

    if-nez v4, :cond_0

    .line 70
    new-instance v4, Lcom/aol/mobile/sdk/player/model/AdsTimeline;

    iget-object v5, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->id:Ljava/lang/String;

    iget-object v6, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->prerolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->postrolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/aol/mobile/sdk/player/model/AdsTimeline;-><init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Ljava/util/List;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 73
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v5, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->midrolls:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    .line 75
    iget-wide v6, v6, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;->timePosition:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    :cond_1
    new-instance v4, Lcom/aol/mobile/sdk/player/model/AdsTimeline;

    iget-object v5, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->id:Ljava/lang/String;

    iget-object v6, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->prerolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iget-object v7, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->postrolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->midrolls:Ljava/util/List;

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/aol/mobile/sdk/player/model/AdsTimeline;-><init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Ljava/util/List;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 79
    :cond_2
    new-instance v3, Lcom/aol/mobile/sdk/player/model/AdsTimeline;

    const-string v4, ""

    new-instance v5, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    const-string v6, ""

    const-wide/16 v7, 0x0

    invoke-direct {v5, v7, v8, v6}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;-><init>(JLjava/lang/String;)V

    new-instance v6, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    const-string v9, ""

    invoke-direct {v6, v7, v8, v9}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;-><init>(JLjava/lang/String;)V

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/aol/mobile/sdk/player/model/AdsTimeline;-><init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Ljava/util/List;)V

    .line 79
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/aol/mobile/sdk/player/model/AdsTimeline;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/aol/mobile/sdk/player/model/AdsTimeline;

    return-object p0
.end method

.method public static getVideoIds(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)[Ljava/lang/String;
    .locals 5

    .line 49
    iget-object p0, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->playlistItems:[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 52
    iget-object v4, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;->video:Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    if-eqz v4, :cond_0

    .line 53
    iget-object v3, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;->video:Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    iget-object v3, v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->id:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 55
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getVideoModelsList(Lcom/aol/mobile/sdk/player/VideoProviderResponse;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/model/PlaylistItem;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->playlistItems:[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 26
    iget-object v2, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->playlistItems:[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    aget-object v2, v2, v1

    .line 27
    iget-object v3, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;->video:Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    if-eqz v3, :cond_2

    .line 28
    iget-object v2, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;->video:Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    .line 29
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget-object v3, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->midrolls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    .line 31
    iget-wide v4, v4, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;->timePosition:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    :cond_0
    iget-object v3, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->brandedContent:Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    new-instance v3, Lcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;

    iget-object v4, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->brandedContent:Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;

    iget-object v4, v4, Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;->clickUrl:Ljava/lang/String;

    iget-object v5, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->brandedContent:Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;

    iget-object v5, v5, Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;->advertisementText:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v10, v3

    .line 35
    new-instance v13, Lcom/aol/mobile/sdk/player/model/VideoModel;

    iget-object v4, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->url:Ljava/lang/String;

    iget-object v5, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->subtitleLang:Ljava/lang/String;

    iget-object v6, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->subtitleUrl:Ljava/lang/String;

    iget-object v7, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->title:Ljava/lang/String;

    iget-object v8, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->renderer:Ljava/lang/String;

    iget-boolean v9, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->isScreenCastingEnabled:Z

    iget-object v11, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->thumbnails:Ljava/util/HashMap;

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/aol/mobile/sdk/player/model/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;Ljava/util/Map;Ljava/util/List;)V

    .line 38
    new-instance v2, Lcom/aol/mobile/sdk/player/model/PlaylistItem;

    invoke-direct {v2, v13}, Lcom/aol/mobile/sdk/player/model/PlaylistItem;-><init>(Lcom/aol/mobile/sdk/player/model/VideoModel;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 40
    :cond_2
    new-instance v3, Lcom/aol/mobile/sdk/player/model/PlaylistItem;

    new-instance v4, Lcom/aol/mobile/sdk/player/model/VoidVideoModel;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;->voidVideo:Lcom/aol/mobile/sdk/player/VideoProviderResponse$VoidVideo;

    iget-object v2, v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$VoidVideo;->reason:Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/aol/mobile/sdk/player/model/VoidVideoModel;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/aol/mobile/sdk/player/model/PlaylistItem;-><init>(Lcom/aol/mobile/sdk/player/model/VoidVideoModel;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
