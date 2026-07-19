.class Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aol/mobile/sdk/chromecast/CastVideoVM$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->translate(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;)Lcom/aol/mobile/sdk/chromecast/CastVideoVM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator$1;->a:Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDurationReceived(J)V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator$1;->a:Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a(Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;)Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator$1;->a:Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a(Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;)Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onDurationReceived(J)V

    return-void
.end method

.method public onSeekPerformed()V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator$1;->a:Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a(Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;)Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator$1;->a:Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a(Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;)Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onSeekPerformed()V

    return-void
.end method

.method public onVideoEnded()V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator$1;->a:Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a(Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;)Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator$1;->a:Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a(Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;)Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onVideoEnded()V

    return-void
.end method

.method public onVideoPlaybackFlagUpdated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator$1;->a:Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a(Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;)Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator$1;->a:Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a(Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;)Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onVideoPlaybackFlagUpdated(Z)V

    return-void
.end method

.method public onVideoPositionUpdated(J)V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator$1;->a:Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a(Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;)Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator$1;->a:Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a(Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;)Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onVideoPositionUpdated(J)V

    return-void
.end method
