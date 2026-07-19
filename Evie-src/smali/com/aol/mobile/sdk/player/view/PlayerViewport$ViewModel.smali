.class public final Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;
.super Ljava/lang/Object;
.source "PlayerViewport.java"


# annotations
.annotation runtime Lcom/aol/mobile/sdk/annotations/PrivateApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/player/view/PlayerViewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewModel"
.end annotation


# instance fields
.field public contentRendererId:Ljava/lang/String;

.field public isAdControlsVisible:Z

.field public isAdVisible:Z

.field public isCasting:Z

.field public isContentControlsVisible:Z

.field public isContentVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.onemobilesdk.videorenderer.flat@2.11"

    .line 41
    iput-object v0, p0, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;->contentRendererId:Ljava/lang/String;

    return-void
.end method
