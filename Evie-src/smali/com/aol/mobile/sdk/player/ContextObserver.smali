.class Lcom/aol/mobile/sdk/player/ContextObserver;
.super Ljava/lang/Object;
.source "ContextObserver.java"

# interfaces
.implements Lcom/aol/mobile/sdk/player/PlayerStateObserver;


# instance fields
.field private final adCallbacks:Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;

.field private final adControls:Lcom/aol/mobile/sdk/controls/AdControls;

.field private final adControlsVm:[Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;

.field private final adVideoRenderer:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

.field private final adVideoVm:[Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;

.field private final contentCallbacks:Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;

.field private final contentControls:Lcom/aol/mobile/sdk/controls/ContentControls;

.field private final contentControlsVm:[Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;

.field private final contentVideoVm:[Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;

.field private final contextVm:[Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;

.field private index:I

.field private final playerView:Lcom/aol/mobile/sdk/player/view/PlayerViewport;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/player/view/PlayerViewport;Lcom/aol/mobile/sdk/player/Playback;Lcom/aol/mobile/sdk/player/Playback;)V
    .locals 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 29
    new-array v1, v0, [Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;

    new-instance v2, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;

    invoke-direct {v2}, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;

    invoke-direct {v2}, Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;-><init>()V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->contextVm:[Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;

    .line 31
    new-array v1, v0, [Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;

    new-instance v2, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;

    invoke-direct {v2}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;

    invoke-direct {v2}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;-><init>()V

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->adVideoVm:[Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;

    .line 33
    new-array v1, v0, [Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;

    new-instance v2, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;

    invoke-direct {v2}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;

    invoke-direct {v2}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;-><init>()V

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->contentVideoVm:[Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;

    .line 35
    new-array v1, v0, [Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;

    new-instance v2, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;

    invoke-direct {v2}, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;

    invoke-direct {v2}, Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;-><init>()V

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->adControlsVm:[Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;

    .line 38
    new-array v0, v0, [Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;

    new-instance v1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;

    invoke-direct {v1}, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;

    invoke-direct {v1}, Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;-><init>()V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->contentControlsVm:[Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;

    .line 50
    iput-object p1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->playerView:Lcom/aol/mobile/sdk/player/view/PlayerViewport;

    .line 51
    invoke-interface {p1}, Lcom/aol/mobile/sdk/player/view/PlayerViewport;->getAdControls()Lcom/aol/mobile/sdk/controls/AdControls;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->adControls:Lcom/aol/mobile/sdk/controls/AdControls;

    .line 52
    invoke-interface {p1}, Lcom/aol/mobile/sdk/player/view/PlayerViewport;->getContentControls()Lcom/aol/mobile/sdk/controls/ContentControls;

    move-result-object v0

    iput-object v0, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->contentControls:Lcom/aol/mobile/sdk/controls/ContentControls;

    .line 53
    invoke-interface {p1}, Lcom/aol/mobile/sdk/player/view/PlayerViewport;->getAdVideoRenderer()Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->adVideoRenderer:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    .line 54
    new-instance p1, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;

    invoke-direct {p1, p3}, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;-><init>(Lcom/aol/mobile/sdk/player/Playback;)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->adCallbacks:Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;

    .line 55
    new-instance p1, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;

    invoke-direct {p1, p2}, Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;-><init>(Lcom/aol/mobile/sdk/player/Playback;)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->contentCallbacks:Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Lcom/aol/mobile/sdk/player/model/properties/Properties;)V
    .locals 3

    .line 60
    iget v0, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->index:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->index:I

    .line 62
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->contextVm:[Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;

    iget v1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->index:I

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/aol/mobile/sdk/player/view/model/UiPropertiesTranslator;->translatePropsTo(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;)V

    .line 63
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->playerView:Lcom/aol/mobile/sdk/player/view/PlayerViewport;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->contextVm:[Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;

    iget v2, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->index:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/player/view/PlayerViewport;->render(Lcom/aol/mobile/sdk/player/view/PlayerViewport$ViewModel;)V

    .line 65
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->adControlsVm:[Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;

    iget v1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->index:I

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/aol/mobile/sdk/player/view/model/UiPropertiesTranslator;->translatePropsTo(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;)V

    .line 66
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->adControls:Lcom/aol/mobile/sdk/controls/AdControls;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->adControlsVm:[Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;

    iget v2, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->index:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/controls/AdControls;->render(Lcom/aol/mobile/sdk/controls/AdControls$ViewModel;)V

    .line 68
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->contentControlsVm:[Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;

    iget v1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->index:I

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/aol/mobile/sdk/player/view/model/UiPropertiesTranslator;->translatePropsTo(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;)V

    .line 69
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->contentControls:Lcom/aol/mobile/sdk/controls/ContentControls;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->contentControlsVm:[Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;

    iget v2, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->index:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/controls/ContentControls;->render(Lcom/aol/mobile/sdk/controls/ContentControls$ViewModel;)V

    .line 71
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->adVideoVm:[Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;

    iget v1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->index:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->adCallbacks:Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;

    invoke-static {p1, v0, v1}, Lcom/aol/mobile/sdk/player/view/model/VideoVMTranslator;->translatePropsToAdVideoVM(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;)V

    .line 72
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->adVideoRenderer:Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->adVideoVm:[Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;

    iget v2, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->index:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/renderer/VideoRenderer;->render(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;)V

    .line 74
    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->contentVideoVm:[Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;

    iget v1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->index:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->contentCallbacks:Lcom/aol/mobile/sdk/player/view/ui/StreamStreamListener;

    invoke-static {p1, v0, v1}, Lcom/aol/mobile/sdk/player/view/model/VideoVMTranslator;->translatePropsToContentVideoVM(Lcom/aol/mobile/sdk/player/model/properties/Properties;Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;)V

    .line 75
    iget-object p1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->playerView:Lcom/aol/mobile/sdk/player/view/PlayerViewport;

    invoke-interface {p1}, Lcom/aol/mobile/sdk/player/view/PlayerViewport;->getContentVideoRenderer()Lcom/aol/mobile/sdk/renderer/VideoRenderer;

    move-result-object p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->contentVideoVm:[Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;

    iget v1, p0, Lcom/aol/mobile/sdk/player/ContextObserver;->index:I

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Lcom/aol/mobile/sdk/renderer/VideoRenderer;->render(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;)V

    return-void
.end method
