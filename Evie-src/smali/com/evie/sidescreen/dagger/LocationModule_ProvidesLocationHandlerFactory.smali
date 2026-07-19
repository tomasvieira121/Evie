.class public final Lcom/evie/sidescreen/dagger/LocationModule_ProvidesLocationHandlerFactory;
.super Ljava/lang/Object;
.source "LocationModule_ProvidesLocationHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/voxel/simplesearchlauncher/api/LocationHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/sidescreen/dagger/LocationModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/LocationModule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/LocationModule_ProvidesLocationHandlerFactory;->module:Lcom/evie/sidescreen/dagger/LocationModule;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/LocationModule;)Lcom/evie/sidescreen/dagger/LocationModule_ProvidesLocationHandlerFactory;
    .locals 1

    .line 26
    new-instance v0, Lcom/evie/sidescreen/dagger/LocationModule_ProvidesLocationHandlerFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/LocationModule_ProvidesLocationHandlerFactory;-><init>(Lcom/evie/sidescreen/dagger/LocationModule;)V

    return-object v0
.end method

.method public static proxyProvidesLocationHandler(Lcom/evie/sidescreen/dagger/LocationModule;)Lcom/voxel/simplesearchlauncher/api/LocationHandler;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/LocationModule;->providesLocationHandler()Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/voxel/simplesearchlauncher/api/LocationHandler;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/LocationModule_ProvidesLocationHandlerFactory;->module:Lcom/evie/sidescreen/dagger/LocationModule;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/LocationModule_ProvidesLocationHandlerFactory;->proxyProvidesLocationHandler(Lcom/evie/sidescreen/dagger/LocationModule;)Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/LocationModule_ProvidesLocationHandlerFactory;->get()Lcom/voxel/simplesearchlauncher/api/LocationHandler;

    move-result-object v0

    return-object v0
.end method
