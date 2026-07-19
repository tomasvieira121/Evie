.class public final Lcom/evie/sidescreen/dagger/external/ExoPlayerCacheModule_ProvidesExoPlayerCacheFactory;
.super Ljava/lang/Object;
.source "ExoPlayerCacheModule_ProvidesExoPlayerCacheFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/exoplayer2/upstream/cache/Cache;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/external/ExoPlayerCacheModule_ProvidesExoPlayerCacheFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/external/ExoPlayerCacheModule_ProvidesExoPlayerCacheFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/external/ExoPlayerCacheModule_ProvidesExoPlayerCacheFactory;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/evie/sidescreen/dagger/external/ExoPlayerCacheModule_ProvidesExoPlayerCacheFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/external/ExoPlayerCacheModule_ProvidesExoPlayerCacheFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesExoPlayerCache(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 1

    .line 33
    invoke-static {p0}, Lcom/evie/sidescreen/dagger/external/ExoPlayerCacheModule;->providesExoPlayerCache(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 32
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/external/ExoPlayerCacheModule_ProvidesExoPlayerCacheFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/external/ExoPlayerCacheModule_ProvidesExoPlayerCacheFactory;->proxyProvidesExoPlayerCache(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/external/ExoPlayerCacheModule_ProvidesExoPlayerCacheFactory;->get()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    return-object v0
.end method
