.class public final Lcom/voxel/simplesearchlauncher/dagger/module/AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory;
.super Ljava/lang/Object;
.source "AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/voxel/simplesearchlauncher/dagger/module/AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/dagger/module/AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory;-><init>()V

    sput-object v0, Lcom/voxel/simplesearchlauncher/dagger/module/AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory;->INSTANCE:Lcom/voxel/simplesearchlauncher/dagger/module/AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/voxel/simplesearchlauncher/dagger/module/AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory;
    .locals 1

    .line 22
    sget-object v0, Lcom/voxel/simplesearchlauncher/dagger/module/AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory;->INSTANCE:Lcom/voxel/simplesearchlauncher/dagger/module/AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory;

    return-object v0
.end method

.method public static proxyProvidesAppVersionCodeForSideScreen()Ljava/lang/Integer;
    .locals 2

    .line 27
    invoke-static {}, Lcom/voxel/simplesearchlauncher/dagger/module/AppBuildConfigModule;->providesAppVersionCodeForSideScreen()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 26
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 1

    .line 18
    invoke-static {}, Lcom/voxel/simplesearchlauncher/dagger/module/AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory;->proxyProvidesAppVersionCodeForSideScreen()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/AppBuildConfigModule_ProvidesAppVersionCodeForSideScreenFactory;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
