.class public final Lcom/aol/mobile/sdk/player/model/AdState;
.super Ljava/lang/Object;
.source "AdState.java"


# instance fields
.field public adNum:I

.field public adType:Ljava/lang/String;

.field public errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

.field public height:I

.field public isAdClicked:Z

.field public isMaintainAspectRatio:Z

.field public isScalable:Z

.field public isStreamPlaying:Z

.field public shouldPlay:Z

.field public targetUrl:Ljava/lang/String;

.field public timePosition:Lcom/aol/mobile/sdk/player/model/TimePosition;

.field public uniqueAdId:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/AdState;->isScalable:Z

    .line 34
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/AdState;->isMaintainAspectRatio:Z

    return-void
.end method
