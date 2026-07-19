.class public final Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule_ProvideMemoryRegistryFactory;
.super Ljava/lang/Object;
.source "MemoryRegistryModule_ProvideMemoryRegistryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule_ProvideMemoryRegistryFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;)Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule_ProvideMemoryRegistryFactory;
    .locals 1

    .line 27
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule_ProvideMemoryRegistryFactory;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule_ProvideMemoryRegistryFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;)V

    return-object v0
.end method

.method public static proxyProvideMemoryRegistry(Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;)Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;->provideMemoryRegistry()Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 31
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule_ProvideMemoryRegistryFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule_ProvideMemoryRegistryFactory;->proxyProvideMemoryRegistry(Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;)Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule_ProvideMemoryRegistryFactory;->get()Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;

    move-result-object v0

    return-object v0
.end method
