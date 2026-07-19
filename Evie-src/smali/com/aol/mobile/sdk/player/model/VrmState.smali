.class public Lcom/aol/mobile/sdk/player/model/VrmState;
.super Ljava/lang/Object;
.source "VrmState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;,
        Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;
    }
.end annotation


# instance fields
.field public adId:Ljava/lang/String;

.field public adUrl:Ljava/lang/String;

.field public groupProcessingState:Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;

.field public isMaintainAspectRatio:Z

.field public isScalable:Z

.field public pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

.field public slot:Ljava/lang/String;

.field public source:Lcom/aol/mobile/sdk/player/model/VrmSource;

.field public targetUrl:Ljava/lang/String;

.field public taskError:Ljava/lang/Exception;

.field public taskState:Lcom/aol/mobile/sdk/player/model/VrmState$TaskState;

.field public taskTime:J

.field public txid:Ljava/lang/String;

.field public vrmUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/aol/mobile/sdk/player/model/VrmSource;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/model/VrmSource;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/VrmState;->source:Lcom/aol/mobile/sdk/player/model/VrmSource;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/VrmState;->isScalable:Z

    .line 56
    iput-boolean v0, p0, Lcom/aol/mobile/sdk/player/model/VrmState;->isMaintainAspectRatio:Z

    .line 60
    new-instance v0, Lcom/aol/mobile/sdk/player/model/Pixels;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/player/model/Pixels;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/VrmState;->pixels:Lcom/aol/mobile/sdk/player/model/Pixels;

    .line 65
    sget-object v0, Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;->NO_TIMEOUT_REACHED:Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/model/VrmState;->groupProcessingState:Lcom/aol/mobile/sdk/player/model/VrmState$GroupProcessingState;

    return-void
.end method
