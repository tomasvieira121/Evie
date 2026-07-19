.class public final Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory;
.super Ljava/lang/Object;
.source "LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory;->module:Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;)Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory;
    .locals 1

    .line 28
    new-instance v0, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory;-><init>(Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;)V

    return-object v0
.end method

.method public static proxyProvidesLifecycleCallbacks(Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;)Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;->providesLifecycleCallbacks()Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 33
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory;->module:Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory;->proxyProvidesLifecycleCallbacks(Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule;)Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/LifecycleCallbacksModule_ProvidesLifecycleCallbacksFactory;->get()Lcom/evie/sidescreen/lifecycle/LifecycleCallbacks;

    move-result-object v0

    return-object v0
.end method
