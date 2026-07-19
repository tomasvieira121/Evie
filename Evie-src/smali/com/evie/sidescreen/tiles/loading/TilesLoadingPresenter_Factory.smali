.class public final Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter_Factory;
.super Ljava/lang/Object;
.source "TilesLoadingPresenter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private final lifecycleCallbacksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;)",
            "Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter_Factory;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter_Factory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;
    .locals 2

    .line 21
    new-instance v0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;-><init>(Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter_Factory;->get()Lcom/evie/sidescreen/tiles/loading/TilesLoadingPresenter;

    move-result-object v0

    return-object v0
.end method
