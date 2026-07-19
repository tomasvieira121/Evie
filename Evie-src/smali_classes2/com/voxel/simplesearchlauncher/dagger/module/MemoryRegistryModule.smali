.class public Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;
.super Ljava/lang/Object;
.source "MemoryRegistryModule.java"


# instance fields
.field private memoryRegistry:Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;->memoryRegistry:Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;

    return-void
.end method


# virtual methods
.method public provideMemoryRegistry()Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/MemoryRegistryModule;->memoryRegistry:Lcom/voxel/simplesearchlauncher/utils/MemoryRegistry;

    return-object v0
.end method
