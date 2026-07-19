.class public interface abstract Lcom/aol/mobile/sdk/player/view/PlayerViewport;
.super Ljava/lang/Object;
.source "PlayerViewport.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/utils/Disposable;


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PrivateApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;
    }
.end annotation


# virtual methods
.method public abstract getAdControls()Lcom/aol/mobile/sdk/controls/AdControls;
.end method

.method public abstract getAdVideoRenderer()Lcom/aol/mobile/sdk/renderer/VideoRenderer;
.end method

.method public abstract getContentControls()Lcom/aol/mobile/sdk/controls/ContentControls;
.end method

.method public abstract getContentVideoRenderer()Lcom/aol/mobile/sdk/renderer/VideoRenderer;
.end method

.method public abstract render(Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;)V
.end method
