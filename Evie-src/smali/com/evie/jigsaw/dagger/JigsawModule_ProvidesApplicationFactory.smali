.class public final Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesApplicationFactory;
.super Ljava/lang/Object;
.source "JigsawModule_ProvidesApplicationFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/app/Application;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/jigsaw/dagger/JigsawModule;


# direct methods
.method public constructor <init>(Lcom/evie/jigsaw/dagger/JigsawModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesApplicationFactory;->module:Lcom/evie/jigsaw/dagger/JigsawModule;

    return-void
.end method

.method public static create(Lcom/evie/jigsaw/dagger/JigsawModule;)Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesApplicationFactory;
    .locals 1

    .line 25
    new-instance v0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesApplicationFactory;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesApplicationFactory;-><init>(Lcom/evie/jigsaw/dagger/JigsawModule;)V

    return-object v0
.end method

.method public static proxyProvidesApplication(Lcom/evie/jigsaw/dagger/JigsawModule;)Landroid/app/Application;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/evie/jigsaw/dagger/JigsawModule;->providesApplication()Landroid/app/Application;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/app/Application;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesApplicationFactory;->module:Lcom/evie/jigsaw/dagger/JigsawModule;

    invoke-static {v0}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesApplicationFactory;->proxyProvidesApplication(Lcom/evie/jigsaw/dagger/JigsawModule;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesApplicationFactory;->get()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method
