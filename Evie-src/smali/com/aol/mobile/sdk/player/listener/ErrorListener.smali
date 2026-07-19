.class public abstract Lcom/aol/mobile/sdk/player/listener/ErrorListener;
.super Ljava/lang/Object;
.source "ErrorListener.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PublicApi;
.end annotation


# instance fields
.field private errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onError(Lcom/aol/mobile/sdk/player/model/ErrorState;)V
.end method

.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 2

    .line 25
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/ErrorListener;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/player/model/ErrorState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    invoke-virtual {p0, v0}, Lcom/aol/mobile/sdk/player/listener/ErrorListener;->onError(Lcom/aol/mobile/sdk/player/model/ErrorState;)V

    .line 29
    :cond_0
    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/ErrorListener;->errorState:Lcom/aol/mobile/sdk/player/model/ErrorState;

    return-void
.end method
