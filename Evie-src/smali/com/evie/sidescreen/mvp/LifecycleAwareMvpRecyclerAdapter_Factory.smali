.class public final Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter_Factory;
.super Ljava/lang/Object;
.source "LifecycleAwareMvpRecyclerAdapter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final activationModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter_Factory;->activationModelProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/ActivationModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
            ">;)",
            "Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter_Factory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;
    .locals 3

    .line 28
    new-instance v0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    iget-object v1, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter_Factory;->activationModelProvider:Ljavax/inject/Provider;

    .line 29
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/sidescreen/ActivationModel;

    iget-object v2, p0, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter_Factory;->lifecycleCallbacksProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    invoke-direct {v0, v1, v2}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;-><init>(Lcom/evie/sidescreen/ActivationModel;Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter_Factory;->get()Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    move-result-object v0

    return-object v0
.end method
