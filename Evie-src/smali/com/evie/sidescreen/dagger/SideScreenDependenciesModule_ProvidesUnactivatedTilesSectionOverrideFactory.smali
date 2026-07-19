.class public final Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesUnactivatedTilesSectionOverrideFactory;
.super Ljava/lang/Object;
.source "SideScreenDependenciesModule_ProvidesUnactivatedTilesSectionOverrideFactory.java"

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
.field private final module:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesUnactivatedTilesSectionOverrideFactory;->module:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesUnactivatedTilesSectionOverrideFactory;
    .locals 1

    .line 30
    new-instance v0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesUnactivatedTilesSectionOverrideFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesUnactivatedTilesSectionOverrideFactory;-><init>(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)V

    return-object v0
.end method

.method public static proxyProvidesUnactivatedTilesSectionOverride(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;",
            ")",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;->providesUnactivatedTilesSectionOverride()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesUnactivatedTilesSectionOverrideFactory;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesUnactivatedTilesSectionOverrideFactory;->module:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesUnactivatedTilesSectionOverrideFactory;->proxyProvidesUnactivatedTilesSectionOverride(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
