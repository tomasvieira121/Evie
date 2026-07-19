.class public final Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesActionPreferenceStoreFactory;
.super Ljava/lang/Object;
.source "JigsawModule_ProvidesActionPreferenceStoreFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

.field private final userProfileManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesActionPreferenceStoreFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

    .line 23
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesActionPreferenceStoreFactory;->userProfileManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesActionPreferenceStoreFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesActionPreferenceStoreFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesActionPreferenceStoreFactory;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesActionPreferenceStoreFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesActionPreferenceStore(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;)Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;->providesActionPreferenceStore(Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;)Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 39
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesActionPreferenceStoreFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesActionPreferenceStoreFactory;->userProfileManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesActionPreferenceStoreFactory;->proxyProvidesActionPreferenceStore(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;)Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesActionPreferenceStoreFactory;->get()Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    move-result-object v0

    return-object v0
.end method
