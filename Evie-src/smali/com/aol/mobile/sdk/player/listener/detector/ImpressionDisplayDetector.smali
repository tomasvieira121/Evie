.class public final Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector;
.super Ljava/lang/Object;
.source "ImpressionDisplayDetector.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector$Callback;
    }
.end annotation


# instance fields
.field private isDisplaySent:Z

.field private mCallback:Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector$Callback;

.field time:J


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector$Callback;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector;->mCallback:Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector$Callback;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector;->time:J

    .line 25
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector;->mCallback:Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector$Callback;

    invoke-interface {p1}, Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector$Callback;->onImpressionDetected()V

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 7

    .line 30
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->voidVideo:Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/VoidVideoProperties;->uniqueVideoId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->playlistItem:Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/PlaylistItemProperties;->video:Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;

    iget-object v0, v0, Lcom/aol/mobile/sdk/player/model/properties/VideoProperties;->uniqueVideoId:Ljava/lang/String;

    :goto_0
    move-object v6, v0

    .line 31
    iget-boolean v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector;->isDisplaySent:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v0, v0, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->width:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v0, v0, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    if-nez v0, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector;->time:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector;->time:J

    .line 35
    iget-object v1, p0, Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector;->mCallback:Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector$Callback;

    iget-object v0, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v2, v0, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->width:I

    iget-object p1, p1, Lcom/aol/mobile/sdk/player/model/properties/Properties;->viewport:Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;

    iget v3, p1, Lcom/aol/mobile/sdk/player/model/properties/ViewportProperties;->height:I

    iget-wide v4, p0, Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector;->time:J

    invoke-interface/range {v1 .. v6}, Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector$Callback;->onDisplayDetected(IIJLjava/lang/String;)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/aol/mobile/sdk/player/listener/detector/ImpressionDisplayDetector;->isDisplaySent:Z

    return-void

    :cond_2
    :goto_1
    return-void
.end method
