.class public final Lcom/evie/sidescreen/dagger/ActivationModule_ProvidesActivationModelFactory;
.super Ljava/lang/Object;
.source "ActivationModule_ProvidesActivationModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/ActivationModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/sidescreen/dagger/ActivationModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/ActivationModule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/ActivationModule_ProvidesActivationModelFactory;->module:Lcom/evie/sidescreen/dagger/ActivationModule;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/ActivationModule;)Lcom/evie/sidescreen/dagger/ActivationModule_ProvidesActivationModelFactory;
    .locals 1

    .line 26
    new-instance v0, Lcom/evie/sidescreen/dagger/ActivationModule_ProvidesActivationModelFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/ActivationModule_ProvidesActivationModelFactory;-><init>(Lcom/evie/sidescreen/dagger/ActivationModule;)V

    return-object v0
.end method

.method public static proxyProvidesActivationModel(Lcom/evie/sidescreen/dagger/ActivationModule;)Lcom/evie/sidescreen/ActivationModel;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/ActivationModule;->providesActivationModel()Lcom/evie/sidescreen/ActivationModel;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/ActivationModel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/ActivationModel;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ActivationModule_ProvidesActivationModelFactory;->module:Lcom/evie/sidescreen/dagger/ActivationModule;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/ActivationModule_ProvidesActivationModelFactory;->proxyProvidesActivationModel(Lcom/evie/sidescreen/dagger/ActivationModule;)Lcom/evie/sidescreen/ActivationModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/ActivationModule_ProvidesActivationModelFactory;->get()Lcom/evie/sidescreen/ActivationModel;

    move-result-object v0

    return-object v0
.end method
