.class public Lcom/evie/sidescreen/dagger/DisposeModule;
.super Ljava/lang/Object;
.source "DisposeModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesCompositeDisposable()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1

    .line 18
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    return-object v0
.end method
