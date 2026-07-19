.class public final Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesUserProfileManagerFactory;
.super Ljava/lang/Object;
.source "SingletonsModule_ProvidesUserProfileManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesUserProfileManagerFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;)Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesUserProfileManagerFactory;
    .locals 1

    .line 26
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesUserProfileManagerFactory;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesUserProfileManagerFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;)V

    return-object v0
.end method

.method public static proxyProvidesUserProfileManager(Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;)Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;->providesUserProfileManager()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesUserProfileManagerFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesUserProfileManagerFactory;->proxyProvidesUserProfileManager(Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;)Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesUserProfileManagerFactory;->get()Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;

    move-result-object v0

    return-object v0
.end method
