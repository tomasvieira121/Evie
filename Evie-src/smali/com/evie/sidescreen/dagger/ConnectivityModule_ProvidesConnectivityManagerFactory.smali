.class public final Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityManagerFactory;
.super Ljava/lang/Object;
.source "ConnectivityModule_ProvidesConnectivityManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/net/ConnectivityManager;",
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

.field private final module:Lcom/evie/sidescreen/dagger/ConnectivityModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/ConnectivityModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/ConnectivityModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityManagerFactory;->module:Lcom/evie/sidescreen/dagger/ConnectivityModule;

    .line 23
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/ConnectivityModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/ConnectivityModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityManagerFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityManagerFactory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityManagerFactory;-><init>(Lcom/evie/sidescreen/dagger/ConnectivityModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesConnectivityManager(Lcom/evie/sidescreen/dagger/ConnectivityModule;Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/ConnectivityModule;->providesConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 38
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/net/ConnectivityManager;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityManagerFactory;->module:Lcom/evie/sidescreen/dagger/ConnectivityModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityManagerFactory;->proxyProvidesConnectivityManager(Lcom/evie/sidescreen/dagger/ConnectivityModule;Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/ConnectivityModule_ProvidesConnectivityManagerFactory;->get()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method
