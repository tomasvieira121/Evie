.class public final synthetic Lcom/evie/sidescreen/exoplayer/-$$Lambda$ExoPlayerObservable$GzxNTzWCEU78BlXYqHJgCNlHXJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/ExoPlayer;

.field private final synthetic f$2:Lcom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;Lcom/google/android/exoplayer2/ExoPlayer;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/exoplayer/-$$Lambda$ExoPlayerObservable$GzxNTzWCEU78BlXYqHJgCNlHXJU;->f$0:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    iput-object p2, p0, Lcom/evie/sidescreen/exoplayer/-$$Lambda$ExoPlayerObservable$GzxNTzWCEU78BlXYqHJgCNlHXJU;->f$1:Lcom/google/android/exoplayer2/ExoPlayer;

    iput-object p3, p0, Lcom/evie/sidescreen/exoplayer/-$$Lambda$ExoPlayerObservable$GzxNTzWCEU78BlXYqHJgCNlHXJU;->f$2:Lcom/google/android/exoplayer2/source/MediaSource;

    return-void
.end method


# virtual methods
.method public final onLoadError(Ljava/io/IOException;)V
    .locals 3

    iget-object v0, p0, Lcom/evie/sidescreen/exoplayer/-$$Lambda$ExoPlayerObservable$GzxNTzWCEU78BlXYqHJgCNlHXJU;->f$0:Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;

    iget-object v1, p0, Lcom/evie/sidescreen/exoplayer/-$$Lambda$ExoPlayerObservable$GzxNTzWCEU78BlXYqHJgCNlHXJU;->f$1:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v2, p0, Lcom/evie/sidescreen/exoplayer/-$$Lambda$ExoPlayerObservable$GzxNTzWCEU78BlXYqHJgCNlHXJU;->f$2:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-static {v0, v1, v2, p1}, Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;->lambda$prepare$0(Lcom/evie/sidescreen/exoplayer/ExoPlayerObservable;Lcom/google/android/exoplayer2/ExoPlayer;Lcom/google/android/exoplayer2/source/MediaSource;Ljava/io/IOException;)V

    return-void
.end method
