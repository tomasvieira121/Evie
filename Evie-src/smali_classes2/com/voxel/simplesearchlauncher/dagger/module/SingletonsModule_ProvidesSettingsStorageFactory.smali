.class public final Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesSettingsStorageFactory;
.super Ljava/lang/Object;
.source "SingletonsModule_ProvidesSettingsStorageFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;",
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

.field private final lazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/config/LauncherConfigModel;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/config/LauncherConfigModel;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesSettingsStorageFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;

    .line 30
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesSettingsStorageFactory;->contextProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesSettingsStorageFactory;->lazyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesSettingsStorageFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/config/LauncherConfigModel;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesSettingsStorageFactory;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesSettingsStorageFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesSettingsStorageFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesSettingsStorage(Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;Landroid/content/Context;Ldagger/Lazy;)Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/evie/config/LauncherConfigModel;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;->providesSettingsStorage(Landroid/content/Context;Ldagger/Lazy;)Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 50
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesSettingsStorageFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesSettingsStorageFactory;->contextProvider:Ljavax/inject/Provider;

    .line 37
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesSettingsStorageFactory;->lazyProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    .line 36
    invoke-static {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesSettingsStorageFactory;->proxyProvidesSettingsStorage(Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;Landroid/content/Context;Ldagger/Lazy;)Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesSettingsStorageFactory;->get()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    return-object v0
.end method
