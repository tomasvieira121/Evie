.class public interface abstract Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;
.super Ljava/lang/Object;
.source "VideoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/relatedcontent/VideoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoHelperInterface"
.end annotation


# virtual methods
.method public abstract getAspectRatioLowerLimit()F
.end method

.method public abstract getDefaultAspectRatio()F
.end method

.method public abstract getIsFullScreen()Z
.end method

.method public abstract getIsPlaylistAutoplayEnabled()Z
.end method

.method public abstract getMediaAspectRatio()F
.end method

.method public abstract getMinimumImpressionDuration()I
.end method

.method public abstract getScreenWidthPixels()I
.end method

.method public abstract getStartDuration()J
.end method

.method public abstract getStartPosition()J
.end method

.method public abstract getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
.end method

.method public abstract getVideoObjectList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schema/VideoObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isActivityStarted()Z
.end method

.method public abstract manuallyExitFullScreen()V
.end method

.method public abstract onVideoEnded()V
.end method

.method public abstract onVideoVisibilityChanged(Z)V
.end method

.method public abstract setIsFullScreen(Z)V
.end method

.method public abstract setPersistentImmersiveMode()V
.end method

.method public abstract setStartPosition(J)V
.end method

.method public abstract setToolBarVisibility(Z)V
.end method

.method public abstract trackAdTap(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract trackAnalyticsModel()Lcom/evie/sidescreen/analytics/AnalyticsModel;
.end method
