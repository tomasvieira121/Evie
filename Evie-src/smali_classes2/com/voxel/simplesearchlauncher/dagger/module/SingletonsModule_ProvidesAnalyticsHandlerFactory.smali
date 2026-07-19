.class public final Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesAnalyticsHandlerFactory;
.super Ljava/lang/Object;
.source "SingletonsModule_ProvidesAnalyticsHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
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
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesAnalyticsHandlerFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;)Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesAnalyticsHandlerFactory;
    .locals 1

    .line 26
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesAnalyticsHandlerFactory;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesAnalyticsHandlerFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;)V

    return-object v0
.end method

.method public static proxyProvidesAnalyticsHandler(Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;->providesAnalyticsHandler()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesAnalyticsHandlerFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesAnalyticsHandlerFactory;->proxyProvidesAnalyticsHandler(Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/SingletonsModule_ProvidesAnalyticsHandlerFactory;->get()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object v0

    return-object v0
.end method
