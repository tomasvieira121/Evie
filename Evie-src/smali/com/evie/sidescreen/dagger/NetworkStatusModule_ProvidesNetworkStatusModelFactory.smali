.class public final Lcom/evie/sidescreen/dagger/NetworkStatusModule_ProvidesNetworkStatusModelFactory;
.super Ljava/lang/Object;
.source "NetworkStatusModule_ProvidesNetworkStatusModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/network/NetworkStatusModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/sidescreen/dagger/NetworkStatusModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/NetworkStatusModule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/NetworkStatusModule_ProvidesNetworkStatusModelFactory;->module:Lcom/evie/sidescreen/dagger/NetworkStatusModule;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/NetworkStatusModule;)Lcom/evie/sidescreen/dagger/NetworkStatusModule_ProvidesNetworkStatusModelFactory;
    .locals 1

    .line 27
    new-instance v0, Lcom/evie/sidescreen/dagger/NetworkStatusModule_ProvidesNetworkStatusModelFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/NetworkStatusModule_ProvidesNetworkStatusModelFactory;-><init>(Lcom/evie/sidescreen/dagger/NetworkStatusModule;)V

    return-object v0
.end method

.method public static proxyProvidesNetworkStatusModel(Lcom/evie/sidescreen/dagger/NetworkStatusModule;)Lcom/evie/sidescreen/network/NetworkStatusModel;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/NetworkStatusModule;->providesNetworkStatusModel()Lcom/evie/sidescreen/network/NetworkStatusModel;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 31
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/network/NetworkStatusModel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/network/NetworkStatusModel;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/NetworkStatusModule_ProvidesNetworkStatusModelFactory;->module:Lcom/evie/sidescreen/dagger/NetworkStatusModule;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/NetworkStatusModule_ProvidesNetworkStatusModelFactory;->proxyProvidesNetworkStatusModel(Lcom/evie/sidescreen/dagger/NetworkStatusModule;)Lcom/evie/sidescreen/network/NetworkStatusModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/NetworkStatusModule_ProvidesNetworkStatusModelFactory;->get()Lcom/evie/sidescreen/network/NetworkStatusModel;

    move-result-object v0

    return-object v0
.end method
