.class public final Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesTrackSelectorFactory;
.super Ljava/lang/Object;
.source "ExoPlayerModule_ProvidesTrackSelectorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/exoplayer2/trackselection/TrackSelector;",
        ">;"
    }
.end annotation


# instance fields
.field private final bandwidthMeterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/upstream/BandwidthMeter;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/evie/sidescreen/dagger/ExoPlayerModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/ExoPlayerModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/ExoPlayerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/upstream/BandwidthMeter;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesTrackSelectorFactory;->module:Lcom/evie/sidescreen/dagger/ExoPlayerModule;

    .line 22
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesTrackSelectorFactory;->bandwidthMeterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/ExoPlayerModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesTrackSelectorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/ExoPlayerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/exoplayer2/upstream/BandwidthMeter;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesTrackSelectorFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesTrackSelectorFactory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesTrackSelectorFactory;-><init>(Lcom/evie/sidescreen/dagger/ExoPlayerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesTrackSelector(Lcom/evie/sidescreen/dagger/ExoPlayerModule;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/ExoPlayerModule;->providesTrackSelector(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 37
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesTrackSelectorFactory;->module:Lcom/evie/sidescreen/dagger/ExoPlayerModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesTrackSelectorFactory;->bandwidthMeterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-static {v0, v1}, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesTrackSelectorFactory;->proxyProvidesTrackSelector(Lcom/evie/sidescreen/dagger/ExoPlayerModule;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/ExoPlayerModule_ProvidesTrackSelectorFactory;->get()Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-result-object v0

    return-object v0
.end method
