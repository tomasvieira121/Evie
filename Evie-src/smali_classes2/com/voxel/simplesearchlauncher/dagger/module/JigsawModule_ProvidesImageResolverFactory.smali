.class public final Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesImageResolverFactory;
.super Ljava/lang/Object;
.source "JigsawModule_ProvidesImageResolverFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/jigsaw/services/images/ImageResolver;",
        ">;"
    }
.end annotation


# instance fields
.field private final localAppsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesImageResolverFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

    .line 22
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesImageResolverFactory;->localAppsManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesImageResolverFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesImageResolverFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesImageResolverFactory;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesImageResolverFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesImageResolver(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)Lcom/evie/jigsaw/services/images/ImageResolver;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;->providesImageResolver(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)Lcom/evie/jigsaw/services/images/ImageResolver;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 37
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/jigsaw/services/images/ImageResolver;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/jigsaw/services/images/ImageResolver;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesImageResolverFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesImageResolverFactory;->localAppsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesImageResolverFactory;->proxyProvidesImageResolver(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)Lcom/evie/jigsaw/services/images/ImageResolver;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesImageResolverFactory;->get()Lcom/evie/jigsaw/services/images/ImageResolver;

    move-result-object v0

    return-object v0
.end method
