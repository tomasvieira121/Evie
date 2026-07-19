.class public final Lcom/aol/mobile/sdk/player/VideoProviderResponse;
.super Ljava/lang/Object;
.source "VideoProviderResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;,
        Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;,
        Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;,
        Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;,
        Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;,
        Lcom/aol/mobile/sdk/player/VideoProviderResponse$VoidVideo;,
        Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;,
        Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItemMatcher;
    }
.end annotation


# instance fields
.field public final features:Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;

.field public final isAutoplay:Z

.field public final playlistItems:[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

.field public final trackingContext:Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;


# direct methods
.method public constructor <init>(Z[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;)V
    .locals 2

    .line 30
    new-instance v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;-><init>(ZZ)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/aol/mobile/sdk/player/VideoProviderResponse;-><init>(Z[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;)V

    return-void
.end method

.method public constructor <init>(Z[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->playlistItems:[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    .line 36
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->trackingContext:Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;

    .line 37
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->isAutoplay:Z

    .line 38
    iput-object p4, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->features:Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;

    return-void
.end method

.method public static sortAndRemoveVoidVideos([Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProviderResponse;)Lcom/aol/mobile/sdk/player/VideoProviderResponse;
    .locals 10

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 44
    iget-object v5, p1, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->playlistItems:[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 45
    iget-object v9, v8, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;->video:Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    if-eqz v9, :cond_0

    iget-object v9, v8, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;->video:Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    iget-object v9, v9, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->id:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 46
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_2
    new-instance p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse;

    iget-boolean v1, p1, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->isAutoplay:Z

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->trackingContext:Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;

    invoke-direct {p0, v1, v0, p1}, Lcom/aol/mobile/sdk/player/VideoProviderResponse;-><init>(Z[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;)V

    return-object p0
.end method


# virtual methods
.method public filter(Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItemMatcher;)Lcom/aol/mobile/sdk/player/VideoProviderResponse;
    .locals 6

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->playlistItems:[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 69
    invoke-interface {p1, v4}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItemMatcher;->match(Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->withPlaylistItems([Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;)Lcom/aol/mobile/sdk/player/VideoProviderResponse;

    move-result-object p1

    return-object p1
.end method

.method public withAutoplay(Z)Lcom/aol/mobile/sdk/player/VideoProviderResponse;
    .locals 3

    .line 61
    new-instance v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->playlistItems:[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->trackingContext:Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;

    invoke-direct {v0, p1, v1, v2}, Lcom/aol/mobile/sdk/player/VideoProviderResponse;-><init>(Z[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;)V

    return-object v0
.end method

.method public withPlaylistItems([Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;)Lcom/aol/mobile/sdk/player/VideoProviderResponse;
    .locals 3

    .line 56
    new-instance v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse;

    iget-boolean v1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->isAutoplay:Z

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse;->trackingContext:Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;

    invoke-direct {v0, v1, p1, v2}, Lcom/aol/mobile/sdk/player/VideoProviderResponse;-><init>(Z[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;)V

    return-object v0
.end method
