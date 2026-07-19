.class public final Lcom/evie/sidescreen/dagger/LayerStackModule_ProvidesLayerStackFactory;
.super Ljava/lang/Object;
.source "LayerStackModule_ProvidesLayerStackFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/LayerStack;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/sidescreen/dagger/LayerStackModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/LayerStackModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/LayerStackModule_ProvidesLayerStackFactory;->module:Lcom/evie/sidescreen/dagger/LayerStackModule;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/LayerStackModule;)Lcom/evie/sidescreen/dagger/LayerStackModule_ProvidesLayerStackFactory;
    .locals 1

    .line 25
    new-instance v0, Lcom/evie/sidescreen/dagger/LayerStackModule_ProvidesLayerStackFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/LayerStackModule_ProvidesLayerStackFactory;-><init>(Lcom/evie/sidescreen/dagger/LayerStackModule;)V

    return-object v0
.end method

.method public static proxyProvidesLayerStack(Lcom/evie/sidescreen/dagger/LayerStackModule;)Lcom/evie/sidescreen/LayerStack;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/LayerStackModule;->providesLayerStack()Lcom/evie/sidescreen/LayerStack;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/LayerStack;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/LayerStack;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/LayerStackModule_ProvidesLayerStackFactory;->module:Lcom/evie/sidescreen/dagger/LayerStackModule;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/LayerStackModule_ProvidesLayerStackFactory;->proxyProvidesLayerStack(Lcom/evie/sidescreen/dagger/LayerStackModule;)Lcom/evie/sidescreen/LayerStack;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/LayerStackModule_ProvidesLayerStackFactory;->get()Lcom/evie/sidescreen/LayerStack;

    move-result-object v0

    return-object v0
.end method
