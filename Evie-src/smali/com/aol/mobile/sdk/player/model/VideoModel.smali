.class public final Lcom/aol/mobile/sdk/player/model/VideoModel;
.super Ljava/lang/Object;
.source "VideoModel.java"


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PublicApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;
    }
.end annotation


# instance fields
.field public final adTimings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final brandedContent:Lcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;

.field public final isScreenCastingEnabled:Z

.field public final renderer:Ljava/lang/String;

.field public subtitlesLang:Ljava/lang/String;

.field public final subtitlesUrl:Ljava/lang/String;

.field public final thumbnails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final title:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;Ljava/util/Map;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;",
            "Ljava/util/Map<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->thumbnails:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Url can not be null"

    .line 83
    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/player/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->url:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->subtitlesUrl:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->subtitlesLang:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->title:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->renderer:Ljava/lang/String;

    .line 89
    iput-boolean p6, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->isScreenCastingEnabled:Z

    .line 90
    iput-object p7, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->brandedContent:Lcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;

    .line 91
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->thumbnails:Ljava/util/HashMap;

    invoke-virtual {p1, p8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 92
    iput-object p9, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->adTimings:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    .line 77
    invoke-direct/range {v0 .. v9}, Lcom/aol/mobile/sdk/player/model/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v8, p6

    .line 71
    invoke-direct/range {v0 .. v9}, Lcom/aol/mobile/sdk/player/model/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/aol/mobile/sdk/player/model/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v4, "com.onemobilesdk.videorenderer.flat@2.11"

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    .line 65
    invoke-direct/range {v0 .. v6}, Lcom/aol/mobile/sdk/player/model/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public withRenderer(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/model/VideoModel;
    .locals 11

    .line 112
    new-instance v10, Lcom/aol/mobile/sdk/player/model/VideoModel;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->subtitlesLang:Ljava/lang/String;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->subtitlesUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->title:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->isScreenCastingEnabled:Z

    iget-object v7, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->brandedContent:Lcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;

    iget-object v8, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->thumbnails:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->adTimings:Ljava/util/List;

    move-object v0, v10

    move-object v5, p1

    invoke-direct/range {v0 .. v9}, Lcom/aol/mobile/sdk/player/model/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;Ljava/util/Map;Ljava/util/List;)V

    return-object v10
.end method

.method public withSubtitlesUrl(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/model/VideoModel;
    .locals 11

    .line 107
    new-instance v10, Lcom/aol/mobile/sdk/player/model/VideoModel;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->subtitlesLang:Ljava/lang/String;

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->renderer:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->isScreenCastingEnabled:Z

    iget-object v7, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->brandedContent:Lcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;

    iget-object v8, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->thumbnails:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->adTimings:Ljava/util/List;

    move-object v0, v10

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/aol/mobile/sdk/player/model/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;Ljava/util/Map;Ljava/util/List;)V

    return-object v10
.end method

.method public withThumbnails(Ljava/util/Map;)Lcom/aol/mobile/sdk/player/model/VideoModel;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aol/mobile/sdk/player/model/VideoModel;"
        }
    .end annotation

    .line 117
    new-instance v10, Lcom/aol/mobile/sdk/player/model/VideoModel;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->subtitlesLang:Ljava/lang/String;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->subtitlesUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->renderer:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->isScreenCastingEnabled:Z

    iget-object v7, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->brandedContent:Lcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;

    iget-object v9, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->adTimings:Ljava/util/List;

    move-object v0, v10

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/aol/mobile/sdk/player/model/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;Ljava/util/Map;Ljava/util/List;)V

    return-object v10
.end method

.method public withTitle(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/model/VideoModel;
    .locals 11

    .line 97
    new-instance v10, Lcom/aol/mobile/sdk/player/model/VideoModel;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->subtitlesLang:Ljava/lang/String;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->subtitlesUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->renderer:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->isScreenCastingEnabled:Z

    iget-object v7, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->brandedContent:Lcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;

    iget-object v8, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->thumbnails:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->adTimings:Ljava/util/List;

    move-object v0, v10

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/aol/mobile/sdk/player/model/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;Ljava/util/Map;Ljava/util/List;)V

    return-object v10
.end method

.method public withUrl(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/model/VideoModel;
    .locals 11

    .line 102
    new-instance v10, Lcom/aol/mobile/sdk/player/model/VideoModel;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->subtitlesLang:Ljava/lang/String;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->subtitlesUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->renderer:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->isScreenCastingEnabled:Z

    iget-object v7, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->brandedContent:Lcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;

    iget-object v8, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->thumbnails:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/aol/mobile/sdk/player/model/VideoModel;->adTimings:Ljava/util/List;

    move-object v0, v10

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/aol/mobile/sdk/player/model/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/aol/mobile/sdk/player/model/VideoModel$BrandedContent;Ljava/util/Map;Ljava/util/List;)V

    return-object v10
.end method
