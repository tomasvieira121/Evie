.class public final Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;
.super Ljava/lang/Object;
.source "VideoProviderResponseParser.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/http/ResponseParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aol/mobile/sdk/player/http/ResponseParser<",
        "Lcom/aol/mobile/sdk/player/VideoProviderResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROBLEM_TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "restricted"

    const-string v1, "missing"

    const-string v2, "invalid"

    const-string v3, "missingRenderer"

    .line 32
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;->PROBLEM_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRenderer(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "id"

    .line 236
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    .line 237
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseFeatures(Lorg/json/JSONObject;)Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;
    .locals 3

    if-nez p1, :cond_0

    .line 52
    new-instance p1, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;-><init>(ZZ)V

    return-object p1

    .line 54
    :cond_0
    new-instance v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;

    const-string v1, "embedClickThroughUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "showClickThroughClose"

    .line 55
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;-><init>(ZZ)V

    return-object v0
.end method

.method private parseMediaFileHosts(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "mediaFileHosts"

    .line 127
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "mediaFileHosts"

    .line 129
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 132
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 133
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private parseMpids(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "mpid"

    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "vid"

    .line 115
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    return-object p1

    .line 116
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 118
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 119
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private parsePlaylistItems(Lorg/json/JSONArray;)[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/aol/mobile/sdk/player/model/EmptyDataException;
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    new-array v1, v0, [Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 149
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 150
    invoke-direct {p0, v3}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;->parseVoidVideoItem(Lorg/json/JSONObject;)Lcom/aol/mobile/sdk/player/VideoProviderResponse$VoidVideo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 153
    new-instance v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    invoke-direct {v3, v4}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;-><init>(Lcom/aol/mobile/sdk/player/VideoProviderResponse$VoidVideo;)V

    aput-object v3, v1, v2

    goto :goto_1

    .line 155
    :cond_0
    new-instance v4, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    invoke-direct {p0, v3}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;->parseVideoItem(Lorg/json/JSONObject;)Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;-><init>(Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;)V

    aput-object v4, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 143
    :cond_2
    new-instance p1, Lcom/aol/mobile/sdk/player/model/EmptyDataException;

    invoke-direct {p1}, Lcom/aol/mobile/sdk/player/model/EmptyDataException;-><init>()V

    throw p1

    return-void
.end method

.method private parseThumbnails(Lorg/json/JSONArray;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashMap<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 245
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 246
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "width"

    .line 248
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "height"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v3

    const-string v4, "url"

    .line 249
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private parseTrackingContext(Lorg/json/JSONObject;)Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "context"

    move-object/from16 v2, p1

    .line 60
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "trkUrl"

    .line 62
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "adUrl"

    .line 63
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "bcid"

    .line 64
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "bid"

    .line 65
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, "bid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object v9, v3

    :goto_0
    const-string v2, "app_id"

    .line 66
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "playerVersion"

    .line 67
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "sessionID"

    .line 68
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "referringURL"

    .line 69
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "pid"

    .line 70
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "uuid"

    .line 71
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "playerType"

    .line 72
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "platformSupport"

    .line 73
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "videoPlayType"

    .line 74
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "sitesection"

    .line 75
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "sitesection"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_1

    :cond_1
    move-object/from16 v18, v3

    :goto_1
    const-string v2, "apid"

    .line 76
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "apid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_2

    :cond_2
    move-object/from16 v17, v3

    .line 77
    :goto_2
    invoke-direct {v0, v1}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;->parseMediaFileHosts(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v22

    .line 78
    invoke-direct {v0, v1}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;->parseVideoIds(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v19

    .line 79
    invoke-direct {v0, v1}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;->parseVcids(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v20

    .line 80
    invoke-direct {v0, v1}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;->parseMpids(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v21

    .line 82
    new-instance v2, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;

    move-object v3, v2

    .line 84
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v3 .. v23}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private parseVcids(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "vcid"

    .line 101
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "vid"

    .line 102
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    return-object p1

    .line 103
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 105
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 106
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private parseVideoIds(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "vid"

    .line 89
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 92
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 93
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private parseVideoItem(Lorg/json/JSONObject;)Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "video"

    .line 175
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "thumbnails"

    .line 177
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;->parseThumbnails(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v2

    const-string v0, "pods"

    .line 179
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5, v3}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;-><init>(JLjava/lang/String;)V

    .line 181
    new-instance v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;-><init>(JLjava/lang/String;)V

    .line 182
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move-object v9, v1

    move-object v10, v3

    const/4 v1, 0x0

    .line 183
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 184
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v7, "time"

    .line 185
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "preroll"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 186
    new-instance v9, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    const-string v7, "url"

    .line 187
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v4, v5, v3}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;-><init>(JLjava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v7, "time"

    .line 188
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "postroll"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 189
    new-instance v10, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    const-string v7, "url"

    .line 190
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v4, v5, v3}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;-><init>(JLjava/lang/String;)V

    goto :goto_1

    .line 192
    :cond_1
    new-instance v7, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    const-string v8, "time"

    .line 193
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v8, "url"

    .line 194
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v12, v13, v3}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;-><init>(JLjava/lang/String;)V

    .line 192
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "id"

    .line 199
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "url"

    .line 201
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "title"

    .line 203
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "isScreenCastingEnabled"

    .line 205
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    const-string v0, "externalSubtitles"

    .line 209
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v0, "externalSubtitles"

    .line 210
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 212
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "url"

    .line 213
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "language"

    .line 214
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "url"

    .line 215
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_2

    :cond_3
    move-object v6, v1

    move-object v7, v6

    :goto_2
    const-string v0, "renderer"

    .line 220
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;->getRenderer(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "brandedContent"

    .line 223
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "brandedContent"

    .line 224
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 225
    new-instance v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;

    const-string v1, "clickUrl"

    .line 226
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v13, "advertisementText"

    .line 227
    invoke-virtual {p1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v0

    goto :goto_3

    :cond_4
    move-object v13, v1

    .line 230
    :goto_3
    new-instance p1, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    move-object v1, p1

    invoke-direct/range {v1 .. v13}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Ljava/util/List;ZLcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;)V

    return-object p1
.end method

.method private parseVoidVideoItem(Lorg/json/JSONObject;)Lcom/aol/mobile/sdk/player/VideoProviderResponse$VoidVideo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;->PROBLEM_TYPES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 164
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "reason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    new-instance v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$VoidVideo;

    invoke-direct {v0, v3, p1}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$VoidVideo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/VideoProviderResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "videos"

    .line 41
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;->parsePlaylistItems(Lorg/json/JSONArray;)[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;

    move-result-object p1

    const-string v1, "tracking"

    .line 42
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;->parseTrackingContext(Lorg/json/JSONObject;)Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;

    move-result-object v1

    const-string v2, "autoplay"

    .line 43
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "autoplay"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "features"

    .line 45
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;->parseFeatures(Lorg/json/JSONObject;)Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;

    move-result-object v0

    .line 47
    new-instance v3, Lcom/aol/mobile/sdk/player/VideoProviderResponse;

    invoke-direct {v3, v2, p1, v1, v0}, Lcom/aol/mobile/sdk/player/VideoProviderResponse;-><init>(Z[Lcom/aol/mobile/sdk/player/VideoProviderResponse$PlaylistItem;Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;)V

    return-object v3
.end method

.method public bridge synthetic parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/player/http/json/VideoProviderResponseParser;->parse(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/VideoProviderResponse;

    move-result-object p1

    return-object p1
.end method
