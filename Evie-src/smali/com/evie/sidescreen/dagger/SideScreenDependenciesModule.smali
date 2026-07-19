.class public Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;
.super Ljava/lang/Object;
.source "SideScreenDependenciesModule.java"


# instance fields
.field private final mSideScreenDependencies:Lcom/evie/sidescreen/SideScreenDependencies;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/SideScreenDependencies;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;->mSideScreenDependencies:Lcom/evie/sidescreen/SideScreenDependencies;

    return-void
.end method


# virtual methods
.method providesAbTestConfiguration()Lcom/evie/common/AbTestConfiguration;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;->mSideScreenDependencies:Lcom/evie/sidescreen/SideScreenDependencies;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenDependencies;->getAbTestConfiguration()Lcom/evie/common/AbTestConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public providesCustomMainTabPresenters(Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;",
            ")",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;->mSideScreenDependencies:Lcom/evie/sidescreen/SideScreenDependencies;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenDependencies;->getCustomMainTabPresenterFactories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 71
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/dagger/ExternalPresenterFactory;

    .line 76
    invoke-interface {v2, p1}, Lcom/evie/sidescreen/dagger/ExternalPresenterFactory;->create(Lcom/evie/sidescreen/dagger/SideScreenSubcomponent;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v1

    .line 72
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method providesImagePopupListener()Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;->mSideScreenDependencies:Lcom/evie/sidescreen/SideScreenDependencies;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenDependencies;->getPopupListener()Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule$2;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule$2;-><init>(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)V

    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;->mSideScreenDependencies:Lcom/evie/sidescreen/SideScreenDependencies;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenDependencies;->getPopupListener()Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    move-result-object v0

    return-object v0
.end method

.method providesLauncherInfo()Lcom/evie/sidescreen/LauncherInfo;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;->mSideScreenDependencies:Lcom/evie/sidescreen/SideScreenDependencies;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenDependencies;->getLauncherInfo()Lcom/evie/sidescreen/LauncherInfo;

    move-result-object v0

    return-object v0
.end method

.method providesSearchBarOverrides()Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;->mSideScreenDependencies:Lcom/evie/sidescreen/SideScreenDependencies;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenDependencies;->getActivityOverrides()Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule$1;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule$1;-><init>(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)V

    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;->mSideScreenDependencies:Lcom/evie/sidescreen/SideScreenDependencies;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenDependencies;->getActivityOverrides()Lcom/evie/sidescreen/SideScreenDependencies$ActivityOverrides;

    move-result-object v0

    return-object v0
.end method

.method providesUnactivatedTilesSectionOverride()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;->mSideScreenDependencies:Lcom/evie/sidescreen/SideScreenDependencies;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenDependencies;->getUnactivatedTilesSectionOverride()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
