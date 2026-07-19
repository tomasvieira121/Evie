.class Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable$1;
.super Lcom/evie/sidescreen/exoplayer/listeners/BaseVideoRendererEventListener;
.source "ExoPlayerObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable$1;->this$0:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-direct {p0}, Lcom/evie/sidescreen/exoplayer/listeners/BaseVideoRendererEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable$1;->this$0:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->access$000(Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    new-instance v0, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Ready;

    invoke-direct {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Ready;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable$1;->this$0:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-static {v0}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->access$000(Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;)Lio/reactivex/subjects/Subject;

    move-result-object v0

    new-instance v1, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$SizeChanged;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$SizeChanged;-><init>(IIIF)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
