.class public final Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;
.super Ljava/lang/Object;
.source "SdkConfig.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JavaScript"
.end annotation


# instance fields
.field public final source:Ljava/lang/String;

.field public final telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;->source:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Tracking$JavaScript;->telemetry:Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;

    return-void
.end method
