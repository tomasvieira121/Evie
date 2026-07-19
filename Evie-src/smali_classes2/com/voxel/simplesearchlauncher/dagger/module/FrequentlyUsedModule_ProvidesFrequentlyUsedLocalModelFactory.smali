.class public final Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedLocalModelFactory;
.super Ljava/lang/Object;
.source "FrequentlyUsedModule_ProvidesFrequentlyUsedLocalModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final appLaunchDatabaseProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedLocalModelFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;

    .line 23
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedLocalModelFactory;->appLaunchDatabaseProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedLocalModelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedLocalModelFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedLocalModelFactory;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedLocalModelFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesFrequentlyUsedLocalModel(Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;)Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;->providesFrequentlyUsedLocalModel(Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;)Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 39
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedLocalModelFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedLocalModelFactory;->appLaunchDatabaseProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedLocalModelFactory;->proxyProvidesFrequentlyUsedLocalModel(Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule;Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;)Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/FrequentlyUsedModule_ProvidesFrequentlyUsedLocalModelFactory;->get()Lcom/evie/models/frequentlyused/submodels/FrequentlyUsedLocalModel;

    move-result-object v0

    return-object v0
.end method
