.class public final Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesCustomMainTabPresentersFactory;
.super Ljava/lang/Object;
.source "SideScreenDependenciesModule_ProvidesCustomMainTabPresentersFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/List<",
        "Lcom/evie/sidescreen/mvp/ItemPresenter;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final componentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesCustomMainTabPresentersFactory;->module:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

    .line 23
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesCustomMainTabPresentersFactory;->componentProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesCustomMainTabPresentersFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesCustomMainTabPresentersFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesCustomMainTabPresentersFactory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesCustomMainTabPresentersFactory;-><init>(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesCustomMainTabPresenters(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;",
            "Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;",
            ")",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;->providesCustomMainTabPresenters(Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;)Ljava/util/List;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 39
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesCustomMainTabPresentersFactory;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesCustomMainTabPresentersFactory;->module:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesCustomMainTabPresentersFactory;->componentProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;

    invoke-static {v0, v1}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesCustomMainTabPresentersFactory;->proxyProvidesCustomMainTabPresenters(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
