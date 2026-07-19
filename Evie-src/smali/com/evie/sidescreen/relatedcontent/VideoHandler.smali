.class public interface abstract Lcom/evie/sidescreen/relatedcontent/VideoHandler;
.super Ljava/lang/Object;
.source "VideoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;
    }
.end annotation


# virtual methods
.method public abstract enterFullscreen()V
.end method

.method public abstract exitFullscreen()V
.end method

.method public abstract getContainerView()Landroid/view/View;
.end method

.method public abstract initializeParams()V
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract onActivityDestroy()V
.end method

.method public abstract onActivityPause()V
.end method

.method public abstract onActivityResume()V
.end method

.method public abstract onAdInterrupted()V
.end method

.method public abstract onVideoPause()V
.end method

.method public abstract onVideoPlay()V
.end method

.method public abstract onVideoScrub(J)V
.end method

.method public abstract samePlayerTransition()V
.end method

.method public abstract setUp()V
.end method

.method public abstract tearDown()V
.end method
