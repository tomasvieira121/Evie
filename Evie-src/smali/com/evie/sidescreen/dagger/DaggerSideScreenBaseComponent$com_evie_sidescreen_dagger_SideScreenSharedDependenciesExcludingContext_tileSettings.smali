.class Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_tileSettings;
.super Ljava/lang/Object;
.source "DaggerSideScreenBaseComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_tileSettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/evie/sidescreen/TileSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private final sideScreenSharedDependenciesExcludingContext:Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;)V
    .locals 0

    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_tileSettings;->sideScreenSharedDependenciesExcludingContext:Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;

    return-void
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/TileSettings;
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_tileSettings;->sideScreenSharedDependenciesExcludingContext:Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;

    .line 921
    invoke-interface {v0}, Lcom/evie/sidescreen/dagger/SideScreenSharedDependenciesExcludingContext;->tileSettings()Lcom/evie/sidescreen/TileSettings;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 920
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/sidescreen/TileSettings;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/DaggerSideScreenBaseComponent$com_evie_sidescreen_dagger_SideScreenSharedDependenciesExcludingContext_tileSettings;->get()Lcom/evie/sidescreen/TileSettings;

    move-result-object v0

    return-object v0
.end method
