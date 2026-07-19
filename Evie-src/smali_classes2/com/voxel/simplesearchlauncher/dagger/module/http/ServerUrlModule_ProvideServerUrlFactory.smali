.class public final Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule_ProvideServerUrlFactory;
.super Ljava/lang/Object;
.source "ServerUrlModule_ProvideServerUrlFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/String;",
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

.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule_ProvideServerUrlFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;

    .line 21
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule_ProvideServerUrlFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule_ProvideServerUrlFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule_ProvideServerUrlFactory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule_ProvideServerUrlFactory;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule_ProvideServerUrlFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideServerUrl(Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;->provideServerUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 35
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule_ProvideServerUrlFactory;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule_ProvideServerUrlFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule_ProvideServerUrlFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule_ProvideServerUrlFactory;->proxyProvideServerUrl(Lcom/voxel/simplesearchlauncher/dagger/module/http/ServerUrlModule;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
