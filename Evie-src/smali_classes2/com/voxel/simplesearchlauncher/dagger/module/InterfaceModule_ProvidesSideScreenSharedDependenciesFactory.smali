.class public final Lcom/voxel/simplesearchlauncher/dagger/module/InterfaceModule_ProvidesSideScreenSharedDependenciesFactory;
.super Ljava/lang/Object;
.source "InterfaceModule_ProvidesSideScreenSharedDependenciesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/SideScreenSharedDependencies;",
        ">;"
    }
.end annotation


# instance fields
.field private final launcherAppComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;",
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
            "Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/InterfaceModule_ProvidesSideScreenSharedDependenciesFactory;->launcherAppComponentProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/dagger/module/InterfaceModule_ProvidesSideScreenSharedDependenciesFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/dagger/module/InterfaceModule_ProvidesSideScreenSharedDependenciesFactory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/InterfaceModule_ProvidesSideScreenSharedDependenciesFactory;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/dagger/module/InterfaceModule_ProvidesSideScreenSharedDependenciesFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesSideScreenSharedDependencies(Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;)Lcom/evie/sidescreen/SideScreenSharedDependencies;
    .locals 1

    .line 37
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/InterfaceModule;->providesSideScreenSharedDependencies(Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;)Lcom/evie/sidescreen/SideScreenSharedDependencies;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 36
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/SideScreenSharedDependencies;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/SideScreenSharedDependencies;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/InterfaceModule_ProvidesSideScreenSharedDependenciesFactory;->launcherAppComponentProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/module/InterfaceModule_ProvidesSideScreenSharedDependenciesFactory;->proxyProvidesSideScreenSharedDependencies(Lcom/voxel/simplesearchlauncher/dagger/LauncherAppComponent;)Lcom/evie/sidescreen/SideScreenSharedDependencies;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/InterfaceModule_ProvidesSideScreenSharedDependenciesFactory;->get()Lcom/evie/sidescreen/SideScreenSharedDependencies;

    move-result-object v0

    return-object v0
.end method
