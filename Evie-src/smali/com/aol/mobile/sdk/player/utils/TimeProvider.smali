.class public Lcom/aol/mobile/sdk/player/utils/TimeProvider;
.super Ljava/lang/Object;
.source "TimeProvider.java"


# instance fields
.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/utils/TimeProvider;->timestamp:J

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 4

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aol/mobile/sdk/player/utils/TimeProvider;->timestamp:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
