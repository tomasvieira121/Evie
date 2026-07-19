.class public final Lcom/evie/sidescreen/dagger/ContextModule_ProvidesContextFactory;
.super Ljava/lang/Object;
.source "ContextModule_ProvidesContextFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/evie/sidescreen/dagger/ContextModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/ContextModule;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/ContextModule_ProvidesContextFactory;->module:Lcom/evie/sidescreen/dagger/ContextModule;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/ContextModule;)Lcom/evie/sidescreen/dagger/ContextModule_ProvidesContextFactory;
    .locals 1

    .line 25
    new-instance v0, Lcom/evie/sidescreen/dagger/ContextModule_ProvidesContextFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/ContextModule_ProvidesContextFactory;-><init>(Lcom/evie/sidescreen/dagger/ContextModule;)V

    return-object v0
.end method

.method public static proxyProvidesContext(Lcom/evie/sidescreen/dagger/ContextModule;)Landroid/content/Context;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/ContextModule;->providesContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/ContextModule_ProvidesContextFactory;->module:Lcom/evie/sidescreen/dagger/ContextModule;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/ContextModule_ProvidesContextFactory;->proxyProvidesContext(Lcom/evie/sidescreen/dagger/ContextModule;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/ContextModule_ProvidesContextFactory;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
