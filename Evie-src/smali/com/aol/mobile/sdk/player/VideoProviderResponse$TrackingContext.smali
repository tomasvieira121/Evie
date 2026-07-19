.class public final Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;
.super Ljava/lang/Object;
.source "VideoProviderResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/VideoProviderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackingContext"
.end annotation


# instance fields
.field public final adUrl:Ljava/lang/String;

.field public final apid:Ljava/lang/String;

.field public final appId:Ljava/lang/String;

.field public final asJson:Ljava/lang/String;

.field public final bcid:Ljava/lang/String;

.field public final mediaFileHosts:[Ljava/lang/String;

.field public final mpids:[Ljava/lang/String;

.field public final pid:Ljava/lang/String;

.field public final platformSupport:Ljava/lang/String;

.field public final playerType:Ljava/lang/String;

.field public final playerVersion:Ljava/lang/String;

.field public final playlistId:Ljava/lang/String;

.field public final referringUrl:Ljava/lang/String;

.field public final sessionId:Ljava/lang/String;

.field public final siteSection:Ljava/lang/String;

.field public final trkUrl:Ljava/lang/String;

.field public final uuid:Ljava/lang/String;

.field public final vcids:[Ljava/lang/String;

.field public final videoIds:[Ljava/lang/String;

.field public final videoPlayType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 358
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->trkUrl:Ljava/lang/String;

    move-object v1, p2

    .line 359
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->adUrl:Ljava/lang/String;

    move-object v1, p3

    .line 360
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->playerVersion:Ljava/lang/String;

    move-object v1, p4

    .line 361
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->sessionId:Ljava/lang/String;

    move-object v1, p5

    .line 362
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->bcid:Ljava/lang/String;

    move-object v1, p6

    .line 363
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->playlistId:Ljava/lang/String;

    move-object v1, p7

    .line 364
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->appId:Ljava/lang/String;

    move-object v1, p8

    .line 365
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->pid:Ljava/lang/String;

    move-object v1, p9

    .line 366
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->uuid:Ljava/lang/String;

    move-object v1, p10

    .line 367
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->referringUrl:Ljava/lang/String;

    move-object v1, p11

    .line 368
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->playerType:Ljava/lang/String;

    move-object v1, p12

    .line 369
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->platformSupport:Ljava/lang/String;

    move-object v1, p13

    .line 370
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->videoPlayType:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 371
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->apid:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 372
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->siteSection:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 373
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->videoIds:[Ljava/lang/String;

    move-object/from16 v1, p17

    .line 374
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->vcids:[Ljava/lang/String;

    move-object/from16 v1, p18

    .line 375
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->mpids:[Ljava/lang/String;

    move-object/from16 v1, p19

    .line 376
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->mediaFileHosts:[Ljava/lang/String;

    move-object/from16 v1, p20

    .line 377
    iput-object v1, v0, Lcom/aol/mobile/sdk/player/VideoProviderResponse$TrackingContext;->asJson:Ljava/lang/String;

    return-void
.end method
