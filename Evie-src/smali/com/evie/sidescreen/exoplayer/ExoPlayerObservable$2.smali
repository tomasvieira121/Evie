.class Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable$2;
.super Lcom/evie/sidescreen/exoplayer/listeners/BaseEventListener;
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

    .line 79
    iput-object p1, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable$2;->this$0:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-direct {p0}, Lcom/evie/sidescreen/exoplayer/listeners/BaseEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(ZI)V
    .locals 0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable$2;->this$0:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    invoke-static {p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->access$000(Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    new-instance p2, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Finished;

    invoke-direct {p2}, Lcom/evie/sidescreen/exoplayer/ExoPlayerEvent$Finished;-><init>()V

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
