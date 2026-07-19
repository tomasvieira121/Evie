.class public final Lcom/evie/sidescreen/dagger/SideScreenModule_ProvidesPopupViewFactory;
.super Ljava/lang/Object;
.source "SideScreenModule_ProvidesPopupViewFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/sidescreen/dagger/SideScreenModule;

.field private final sideScreenViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/SideScreenModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/SideScreenModule;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenView;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/SideScreenModule_ProvidesPopupViewFactory;->module:Lcom/evie/sidescreen/dagger/SideScreenModule;

    .line 22
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/SideScreenModule_ProvidesPopupViewFactory;->sideScreenViewProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/SideScreenModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/SideScreenModule_ProvidesPopupViewFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/SideScreenModule;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenView;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/SideScreenModule_ProvidesPopupViewFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/evie/sidescreen/dagger/SideScreenModule_ProvidesPopupViewFactory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/dagger/SideScreenModule_ProvidesPopupViewFactory;-><init>(Lcom/evie/sidescreen/dagger/SideScreenModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesPopupView(Lcom/evie/sidescreen/dagger/SideScreenModule;Lcom/evie/sidescreen/SideScreenView;)Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/SideScreenModule;->providesPopupView(Lcom/evie/sidescreen/SideScreenView;)Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 37
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenModule_ProvidesPopupViewFactory;->module:Lcom/evie/sidescreen/dagger/SideScreenModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/SideScreenModule_ProvidesPopupViewFactory;->sideScreenViewProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/SideScreenView;

    invoke-static {v0, v1}, Lcom/evie/sidescreen/dagger/SideScreenModule_ProvidesPopupViewFactory;->proxyProvidesPopupView(Lcom/evie/sidescreen/dagger/SideScreenModule;Lcom/evie/sidescreen/SideScreenView;)Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SideScreenModule_ProvidesPopupViewFactory;->get()Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    move-result-object v0

    return-object v0
.end method
