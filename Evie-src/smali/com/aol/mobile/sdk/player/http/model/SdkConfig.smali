.class public final Lcom/aol/mobile/sdk/player/http/model/SdkConfig;
.super Ljava/lang/Object;
.source "SdkConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;,
        Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services;,
        Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking;
    }
.end annotation


# instance fields
.field public final services:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services;

.field public final telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

.field public final tracking:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking;

.field public final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services;Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking;Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;->userAgent:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;->services:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Services;

    .line 23
    iput-object p3, p0, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;->tracking:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking;

    .line 24
    iput-object p4, p0, Lcom/aol/mobile/sdk/player/http/model/SdkConfig;->telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

    return-void
.end method
