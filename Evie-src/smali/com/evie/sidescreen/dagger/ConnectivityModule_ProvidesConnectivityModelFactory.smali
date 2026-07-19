.class public final Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;
.super Ljava/lang/Object;
.source "ConnectivityModule_ProvidesConnectivityModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/ConnectivityModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final compositeDisposableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ">;"
        }
    .end annotation
.end field

.field private final connectivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/evie/sidescreen/dagger/ConnectivityModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/ConnectivityModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/ConnectivityModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;->module:Lcom/evie/sidescreen/dagger/ConnectivityModule;

    .line 32
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;->connectivityManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;->compositeDisposableProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/ConnectivityModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/ConnectivityModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;-><init>(Lcom/evie/sidescreen/dagger/ConnectivityModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesConnectivityModel(Lcom/evie/sidescreen/dagger/ConnectivityModule;Landroid/content/Context;Landroid/net/ConnectivityManager;Lio/reactivex/disposables/CompositeDisposable;)Lcom/evie/sidescreen/ConnectivityModel;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/evie/sidescreen/dagger/ConnectivityModule;->providesConnectivityModel(Landroid/content/Context;Landroid/net/ConnectivityManager;Lio/reactivex/disposables/CompositeDisposable;)Lcom/evie/sidescreen/ConnectivityModel;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 60
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/ConnectivityModel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/ConnectivityModel;
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;->module:Lcom/evie/sidescreen/dagger/ConnectivityModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;->contextProvider:Ljavax/inject/Provider;

    .line 41
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;->connectivityManagerProvider:Ljavax/inject/Provider;

    .line 42
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;->compositeDisposableProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/disposables/CompositeDisposable;

    .line 39
    invoke-static {v0, v1, v2, v3}, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;->proxyProvidesConnectivityModel(Lcom/evie/sidescreen/dagger/ConnectivityModule;Landroid/content/Context;Landroid/net/ConnectivityManager;Lio/reactivex/disposables/CompositeDisposable;)Lcom/evie/sidescreen/ConnectivityModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityModelFactory;->get()Lcom/evie/sidescreen/ConnectivityModel;

    move-result-object v0

    return-object v0
.end method
