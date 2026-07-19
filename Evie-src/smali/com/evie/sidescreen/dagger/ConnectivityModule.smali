.class public Lcom/evie/sidescreen/dagger/ConnectivityModule;
.super Ljava/lang/Object;
.source "ConnectivityModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    const-string v0, "connectivity"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method public providesConnectivityModel(Landroid/content/Context;Landroid/net/ConnectivityManager;Lio/reactivex/disposables/CompositeDisposable;)Lcom/evie/sidescreen/ConnectivityModel;
    .locals 1

    .line 30
    new-instance v0, Lcom/evie/sidescreen/ConnectivityModel;

    invoke-direct {v0, p1, p2}, Lcom/evie/sidescreen/ConnectivityModel;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;)V

    .line 31
    invoke-virtual {p3, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-object v0
.end method
