.class public final Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesAbTestConfigurationFactory;
.super Ljava/lang/Object;
.source "SideScreenDependenciesModule_ProvidesAbTestConfigurationFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/common/AbTestConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesAbTestConfigurationFactory;->module:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesAbTestConfigurationFactory;
    .locals 1

    .line 28
    new-instance v0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesAbTestConfigurationFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesAbTestConfigurationFactory;-><init>(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)V

    return-object v0
.end method

.method public static proxyProvidesAbTestConfiguration(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Lcom/evie/common/AbTestConfiguration;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;->providesAbTestConfiguration()Lcom/evie/common/AbTestConfiguration;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 33
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/common/AbTestConfiguration;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/common/AbTestConfiguration;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesAbTestConfigurationFactory;->module:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesAbTestConfigurationFactory;->proxyProvidesAbTestConfiguration(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Lcom/evie/common/AbTestConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesAbTestConfigurationFactory;->get()Lcom/evie/common/AbTestConfiguration;

    move-result-object v0

    return-object v0
.end method
