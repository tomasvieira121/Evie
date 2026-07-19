.class public final Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;
.super Ljava/lang/Object;
.source "VideoProviderResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/VideoProviderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Video"
.end annotation


# instance fields
.field public final brandedContent:Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;

.field public final id:Ljava/lang/String;

.field public final isScreenCastingEnabled:Z

.field public final midrolls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final postrolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

.field public final prerolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

.field public final renderer:Ljava/lang/String;

.field public final subtitleLang:Ljava/lang/String;

.field public final subtitleUrl:Ljava/lang/String;

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
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Ljava/util/List;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    .line 167
    invoke-direct/range {v0 .. v12}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Ljava/util/List;ZLcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Ljava/util/List;ZLcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;",
            ">;Z",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;",
            ")V"
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->thumbnails:Ljava/util/HashMap;

    .line 182
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->thumbnails:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 183
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->id:Ljava/lang/String;

    .line 184
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->url:Ljava/lang/String;

    .line 185
    iput-object p4, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->title:Ljava/lang/String;

    .line 186
    iput-object p5, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->subtitleLang:Ljava/lang/String;

    .line 187
    iput-object p6, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->subtitleUrl:Ljava/lang/String;

    .line 188
    iput-object p7, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->renderer:Ljava/lang/String;

    .line 189
    iput-object p8, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->prerolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    .line 190
    iput-object p9, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->postrolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    .line 191
    iput-object p10, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->midrolls:Ljava/util/List;

    .line 192
    iput-boolean p11, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->isScreenCastingEnabled:Z

    .line 193
    iput-object p12, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->brandedContent:Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->thumbnails:Ljava/util/HashMap;

    .line 142
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->thumbnails:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 143
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->id:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->url:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->title:Ljava/lang/String;

    .line 146
    iput-object p5, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->subtitleLang:Ljava/lang/String;

    .line 147
    iput-object p6, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->subtitleUrl:Ljava/lang/String;

    .line 148
    iput-object p7, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->renderer:Ljava/lang/String;

    .line 149
    new-instance p1, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    const-string p2, ""

    const-wide/16 p3, 0x0

    invoke-direct {p1, p3, p4, p2}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;-><init>(JLjava/lang/String;)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->prerolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    .line 150
    new-instance p1, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    const-string p2, ""

    invoke-direct {p1, p3, p4, p2}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;-><init>(JLjava/lang/String;)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->postrolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->midrolls:Ljava/util/List;

    .line 152
    iput-boolean p8, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->isScreenCastingEnabled:Z

    const/4 p1, 0x0

    .line 153
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->brandedContent:Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;

    return-void
.end method


# virtual methods
.method public ScreenCastingEnabled(Z)Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;
    .locals 14

    .line 266
    new-instance v13, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->thumbnails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->subtitleLang:Ljava/lang/String;

    iget-object v6, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->subtitleUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->renderer:Ljava/lang/String;

    iget-object v8, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->prerolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iget-object v9, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->postrolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iget-object v10, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->midrolls:Ljava/util/List;

    iget-object v12, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->brandedContent:Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;

    move-object v0, v13

    move v11, p1

    invoke-direct/range {v0 .. v12}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Ljava/util/List;ZLcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;)V

    return-object v13
.end method

.method public withSubtitleLang(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;
    .locals 14

    .line 232
    new-instance v13, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->thumbnails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->title:Ljava/lang/String;

    iget-object v6, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->subtitleUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->renderer:Ljava/lang/String;

    iget-object v8, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->prerolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iget-object v9, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->postrolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iget-object v10, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->midrolls:Ljava/util/List;

    iget-boolean v11, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->isScreenCastingEnabled:Z

    iget-object v12, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->brandedContent:Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;

    move-object v0, v13

    move-object v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Ljava/util/List;ZLcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;)V

    return-object v13
.end method

.method public withSubtitleUrl(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;
    .locals 14

    .line 215
    new-instance v13, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->thumbnails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->subtitleLang:Ljava/lang/String;

    iget-object v7, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->renderer:Ljava/lang/String;

    iget-object v8, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->prerolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iget-object v9, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->postrolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iget-object v10, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->midrolls:Ljava/util/List;

    iget-boolean v11, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->isScreenCastingEnabled:Z

    iget-object v12, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->brandedContent:Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;

    move-object v0, v13

    move-object v6, p1

    invoke-direct/range {v0 .. v12}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Ljava/util/List;ZLcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;)V

    return-object v13
.end method

.method public withThumbnails(Ljava/util/Map;)Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;
    .locals 14
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
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;"
        }
    .end annotation

    .line 283
    new-instance v13, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->subtitleLang:Ljava/lang/String;

    iget-object v6, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->subtitleUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->renderer:Ljava/lang/String;

    iget-object v8, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->prerolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iget-object v9, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->postrolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iget-object v10, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->midrolls:Ljava/util/List;

    iget-boolean v11, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->isScreenCastingEnabled:Z

    iget-object v12, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->brandedContent:Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;

    move-object v0, v13

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Ljava/util/List;ZLcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;)V

    return-object v13
.end method

.method public withTitle(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;
    .locals 14

    .line 249
    new-instance v13, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->thumbnails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->subtitleLang:Ljava/lang/String;

    iget-object v6, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->subtitleUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->renderer:Ljava/lang/String;

    iget-object v8, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->prerolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iget-object v9, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->postrolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iget-object v10, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->midrolls:Ljava/util/List;

    iget-boolean v11, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->isScreenCastingEnabled:Z

    iget-object v12, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->brandedContent:Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;

    move-object v0, v13

    move-object v4, p1

    invoke-direct/range {v0 .. v12}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Ljava/util/List;ZLcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;)V

    return-object v13
.end method

.method public withUrl(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;
    .locals 14

    .line 198
    new-instance v13, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->thumbnails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->subtitleLang:Ljava/lang/String;

    iget-object v6, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->subtitleUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->renderer:Ljava/lang/String;

    iget-object v8, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->prerolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iget-object v9, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->postrolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    iget-object v10, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->midrolls:Ljava/util/List;

    iget-boolean v11, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->isScreenCastingEnabled:Z

    iget-object v12, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;->brandedContent:Lcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;

    move-object v0, v13

    move-object v3, p1

    invoke-direct/range {v0 .. v12}, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Video;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Ljava/util/List;ZLcom/aol/mobile/sdk/player/VideoProviderResponse$BrandedContent;)V

    return-object v13
.end method
