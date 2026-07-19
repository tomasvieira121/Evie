.class public Lcom/aol/mobile/sdk/player/telemetry/data/SubtitlesEnabledData;
.super Ljava/lang/Object;
.source "SubtitlesEnabledData.java"


# instance fields
.field public final context:Ljava/lang/String;

.field public final isExternal:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/telemetry/data/SubtitlesEnabledData;->context:Ljava/lang/String;

    .line 17
    iput-boolean p2, p0, Lcom/aol/mobile/sdk/player/telemetry/data/SubtitlesEnabledData;->isExternal:Z

    return-void
.end method
