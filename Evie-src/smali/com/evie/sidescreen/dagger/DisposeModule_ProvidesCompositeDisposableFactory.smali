.class public final Lcom/evie/sidescreen/dagger/DisposeModule_ProvidesCompositeDisposableFactory;
.super Ljava/lang/Object;
.source "DisposeModule_ProvidesCompositeDisposableFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lio/reactivex/disposables/CompositeDisposable;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/sidescreen/dagger/DisposeModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/DisposeModule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DisposeModule_ProvidesCompositeDisposableFactory;->module:Lcom/evie/sidescreen/dagger/DisposeModule;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/DisposeModule;)Lcom/evie/sidescreen/dagger/DisposeModule_ProvidesCompositeDisposableFactory;
    .locals 1

    .line 26
    new-instance v0, Lcom/evie/sidescreen/dagger/DisposeModule_ProvidesCompositeDisposableFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/DisposeModule_ProvidesCompositeDisposableFactory;-><init>(Lcom/evie/sidescreen/dagger/DisposeModule;)V

    return-object v0
.end method

.method public static proxyProvidesCompositeDisposable(Lcom/evie/sidescreen/dagger/DisposeModule;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/DisposeModule;->providesCompositeDisposable()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method


# virtual methods
.method public get()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DisposeModule_ProvidesCompositeDisposableFactory;->module:Lcom/evie/sidescreen/dagger/DisposeModule;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/DisposeModule_ProvidesCompositeDisposableFactory;->proxyProvidesCompositeDisposable(Lcom/evie/sidescreen/dagger/DisposeModule;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/DisposeModule_ProvidesCompositeDisposableFactory;->get()Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v0

    return-object v0
.end method
