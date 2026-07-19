.class public Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;
.super Ljava/lang/Object;
.source "SdkConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/http/model/SdkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Telemetry"
.end annotation


# instance fields
.field public final context:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;->context:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/aol/mobile/sdk/player/http/model/SdkConfig$Telemetry;->url:Ljava/lang/String;

    return-void
.end method
