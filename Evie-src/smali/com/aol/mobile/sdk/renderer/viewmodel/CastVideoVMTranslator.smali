.class public Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

.field private b:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/chromecast/CastVideoVM;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a:Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

    return-void
.end method

.method static synthetic a(Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;)Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->b:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    return-object p0
.end method


# virtual methods
.method public translate(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;)Lcom/aol/mobile/sdk/chromecast/CastVideoVM;
    .locals 2

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a:Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

    iget-object v0, v0, Lcom/aol/mobile/sdk/chromecast/CastVideoVM;->callbacks:Lcom/aol/mobile/sdk/chromecast/CastVideoVM$Callbacks;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a:Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

    new-instance v1, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator$1;

    invoke-direct {v1, p0}, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator$1;-><init>(Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;)V

    iput-object v1, v0, Lcom/aol/mobile/sdk/chromecast/CastVideoVM;->callbacks:Lcom/aol/mobile/sdk/chromecast/CastVideoVM$Callbacks;

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a:Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

    iget-object v1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->videoUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/aol/mobile/sdk/chromecast/CastVideoVM;->videoUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a:Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

    iget-object v1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/aol/mobile/sdk/chromecast/CastVideoVM;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a:Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

    iget-object v1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->seekPosition:Ljava/lang/Long;

    iput-object v1, v0, Lcom/aol/mobile/sdk/chromecast/CastVideoVM;->seekPosition:Ljava/lang/Long;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a:Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

    iget-object v1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->currentPosition:Ljava/lang/Long;

    iput-object v1, v0, Lcom/aol/mobile/sdk/chromecast/CastVideoVM;->currentPosition:Ljava/lang/Long;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a:Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

    iget-boolean v1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isMuted:Z

    iput-boolean v1, v0, Lcom/aol/mobile/sdk/chromecast/CastVideoVM;->isMuted:Z

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a:Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

    iget-boolean v1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->shouldPlay:Z

    iput-boolean v1, v0, Lcom/aol/mobile/sdk/chromecast/CastVideoVM;->shouldPlay:Z

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a:Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

    iget-boolean v1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isLive:Z

    iput-boolean v1, v0, Lcom/aol/mobile/sdk/chromecast/CastVideoVM;->isLive:Z

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a:Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

    iget-boolean v1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isActive:Z

    iput-boolean v1, v0, Lcom/aol/mobile/sdk/chromecast/CastVideoVM;->isActive:Z

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a:Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

    iget-boolean v1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isCasting:Z

    iput-boolean v1, v0, Lcom/aol/mobile/sdk/chromecast/CastVideoVM;->isCasting:Z

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a:Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

    iget-boolean v1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->isAd:Z

    iput-boolean v1, v0, Lcom/aol/mobile/sdk/chromecast/CastVideoVM;->isAd:Z

    iget-object p1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->b:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/viewmodel/CastVideoVMTranslator;->a:Lcom/aol/mobile/sdk/chromecast/CastVideoVM;

    return-object p1
.end method
