.class final Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$1;
.super Ljava/lang/Object;
.source "VrmAdFetcher.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/http/network/DataFetcher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher;->getAdTask(Ljava/lang/String;Ljava/lang/String;Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$Listener;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field time:J

.field final synthetic val$listener:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$Listener;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$Listener;)V
    .locals 2

    .line 32
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$1;->val$listener:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$1;->time:J

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .locals 5

    .line 50
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$1;->val$listener:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$Listener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$1;->time:J

    sub-long/2addr v1, v3

    invoke-interface {v0, p1, v1, v2}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$Listener;->error(Ljava/lang/Exception;J)V

    return-void
.end method

.method public success([B)V
    .locals 5

    .line 38
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/aol/mobile/sdk/player/advertisement/VastParser;->parse(Ljava/lang/String;)Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$1;->val$listener:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$Listener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$1;->time:J

    sub-long/2addr v1, v3

    invoke-interface {v0, p1, v1, v2}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$Listener;->complete(Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAd;J)V

    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Lcom/aol/mobile/sdk/player/model/EmptyDataException;

    invoke-direct {p1}, Lcom/aol/mobile/sdk/player/model/EmptyDataException;-><init>()V

    throw p1
    :try_end_0
    .catch Lcom/aol/mobile/sdk/player/model/EmptyDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 44
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$1;->val$listener:Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$Listener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$1;->time:J

    sub-long/2addr v1, v3

    invoke-interface {v0, p1, v1, v2}, Lcom/aol/mobile/sdk/player/advertisement/vrm/VrmAdFetcher$Listener;->error(Ljava/lang/Exception;J)V

    :goto_0
    return-void
.end method
