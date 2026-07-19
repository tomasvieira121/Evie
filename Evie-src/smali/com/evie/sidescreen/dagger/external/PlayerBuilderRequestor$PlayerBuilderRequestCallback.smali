.class public interface abstract Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor$PlayerBuilderRequestCallback;
.super Ljava/lang/Object;
.source "PlayerBuilderRequestor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerBuilderRequestCallback"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/Exception;)V
.end method

.method public abstract onSuccess(Lcom/aol/mobile/sdk/player/PlayerBuilder;)V
.end method
