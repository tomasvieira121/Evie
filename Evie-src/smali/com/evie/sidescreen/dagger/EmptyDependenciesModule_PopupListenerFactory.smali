.class public final Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;
.super Ljava/lang/Object;
.source "EmptyDependenciesModule_PopupListenerFactory.java"

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


# static fields
.field private static final INSTANCE:Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;

    invoke-direct {v0}, Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;-><init>()V

    sput-object v0, Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;->INSTANCE:Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;
    .locals 1

    .line 24
    sget-object v0, Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;->INSTANCE:Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;

    return-object v0
.end method

.method public static proxyPopupListener()Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;
    .locals 1

    .line 29
    invoke-static {}, Lcom/evie/sidescreen/dagger/EmptyDependenciesModule;->popupListener()Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;
    .locals 1

    .line 20
    invoke-static {}, Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;->proxyPopupListener()Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/EmptyDependenciesModule_PopupListenerFactory;->get()Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;

    move-result-object v0

    return-object v0
.end method
