.class public final Lcom/aol/mobile/sdk/player/model/AdsTimeline;
.super Ljava/lang/Object;
.source "AdsTimeline.java"


# instance fields
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

.field public final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;",
            "Ljava/util/List<",
            "Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/AdsTimeline;->videoId:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/model/AdsTimeline;->prerolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    .line 45
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/model/AdsTimeline;->postrolls:Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;

    .line 46
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/model/AdsTimeline;->midrolls:Ljava/util/List;

    return-void
.end method
