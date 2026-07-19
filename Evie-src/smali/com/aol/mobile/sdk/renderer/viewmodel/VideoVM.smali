.class public Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;
    }
.end annotation


# instance fields
.field public areSubtitlesEnabled:Z

.field public callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

.field public currentPosition:Ljava/lang/Long;

.field public isActive:Z

.field public isAd:Z

.field public isCasting:Z

.field public isLive:Z

.field public isMaintainAspectRatio:Z

.field public isMuted:Z

.field public isScalable:Z

.field public latitude:D

.field public longitude:D

.field public seekPosition:Ljava/lang/Long;

.field public selectedAudioTrack:Lcom/aol/mobile/sdk/renderer/AudioTrack;

.field public selectedTextTrack:Lcom/aol/mobile/sdk/renderer/TextTrack;

.field public shouldPlay:Z

.field public subtitleLang:Ljava/lang/String;

.field public subtitleUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->areSubtitlesEnabled:Z

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isScalable:Z

    iput-boolean v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isMaintainAspectRatio:Z

    return-void
.end method
