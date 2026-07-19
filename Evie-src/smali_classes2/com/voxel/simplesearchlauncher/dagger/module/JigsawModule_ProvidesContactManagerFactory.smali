.class public final Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesContactManagerFactory;
.super Ljava/lang/Object;
.source "JigsawModule_ProvidesContactManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/search/local/ContactManager;",
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

.field private final module:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesContactManagerFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

    .line 22
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesContactManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Ljavax/inject/Provider;)Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesContactManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesContactManagerFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesContactManagerFactory;

    invoke-direct {v0, p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesContactManagerFactory;-><init>(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesContactManager(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Landroid/content/Context;)Lcom/evie/search/local/ContactManager;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;->providesContactManager(Landroid/content/Context;)Lcom/evie/search/local/ContactManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 36
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/search/local/ContactManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/search/local/ContactManager;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesContactManagerFactory;->module:Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesContactManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesContactManagerFactory;->proxyProvidesContactManager(Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;Landroid/content/Context;)Lcom/evie/search/local/ContactManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule_ProvidesContactManagerFactory;->get()Lcom/evie/search/local/ContactManager;

    move-result-object v0

    return-object v0
.end method
