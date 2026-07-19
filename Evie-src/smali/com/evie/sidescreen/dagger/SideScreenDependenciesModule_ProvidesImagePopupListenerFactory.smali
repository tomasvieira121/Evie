.class public final Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesImagePopupListenerFactory;
.super Ljava/lang/Object;
.source "SideScreenDependenciesModule_ProvidesImagePopupListenerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;",
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
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesImagePopupListenerFactory;->module:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesImagePopupListenerFactory;
    .locals 1

    .line 29
    new-instance v0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesImagePopupListenerFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesImagePopupListenerFactory;-><init>(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)V

    return-object v0
.end method

.method public static proxyProvidesImagePopupListener(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;->providesImagePopupListener()Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesImagePopupListenerFactory;->module:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesImagePopupListenerFactory;->proxyProvidesImagePopupListener(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule_ProvidesImagePopupListenerFactory;->get()Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    move-result-object v0

    return-object v0
.end method
