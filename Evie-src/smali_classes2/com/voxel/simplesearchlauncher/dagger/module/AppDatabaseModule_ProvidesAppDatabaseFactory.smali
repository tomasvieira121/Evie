.class public final Lcom/voxel/simplesearchlauncher/dagger/module/AppDatabaseModule_ProvidesAppDatabaseFactory;
.super Ljava/lang/Object;
.source "AppDatabaseModule_ProvidesAppDatabaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/AppDatabaseModule_ProvidesAppDatabaseFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/dagger/module/AppDatabaseModule_ProvidesAppDatabaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/dagger/module/AppDatabaseModule_ProvidesAppDatabaseFactory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/AppDatabaseModule_ProvidesAppDatabaseFactory;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/dagger/module/AppDatabaseModule_ProvidesAppDatabaseFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesAppDatabase(Landroid/content/Context;)Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;
    .locals 1

    .line 34
    invoke-static {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/AppDatabaseModule;->providesAppDatabase(Landroid/content/Context;)Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 33
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/AppDatabaseModule_ProvidesAppDatabaseFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/module/AppDatabaseModule_ProvidesAppDatabaseFactory;->proxyProvidesAppDatabase(Landroid/content/Context;)Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/AppDatabaseModule_ProvidesAppDatabaseFactory;->get()Lcom/evie/models/frequentlyused/room/AppLaunchDatabase;

    move-result-object v0

    return-object v0
.end method
