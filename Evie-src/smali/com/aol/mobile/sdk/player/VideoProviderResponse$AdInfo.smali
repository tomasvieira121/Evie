.class public final Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;
.super Ljava/lang/Object;
.source "VideoProviderResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/VideoProviderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdInfo"
.end annotation


# instance fields
.field public final timePosition:J

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-wide p1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;->timePosition:J

    .line 306
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$AdInfo;->url:Ljava/lang/String;

    return-void
.end method
