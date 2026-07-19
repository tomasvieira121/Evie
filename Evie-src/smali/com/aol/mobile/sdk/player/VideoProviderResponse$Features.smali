.class public final Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;
.super Ljava/lang/Object;
.source "VideoProviderResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/VideoProviderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Features"
.end annotation


# instance fields
.field public final embedClickthroughUrl:Z

.field public final showClickThroughClose:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;->embedClickthroughUrl:Z

    .line 387
    iput-boolean p2, p0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$Features;->showClickThroughClose:Z

    return-void
.end method
