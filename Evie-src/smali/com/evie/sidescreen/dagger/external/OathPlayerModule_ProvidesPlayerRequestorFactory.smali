.class public final Lcom/evie/sidescreen/dagger/external/OathPlayerModule_ProvidesPlayerRequestorFactory;
.super Ljava/lang/Object;
.source "OathPlayerModule_ProvidesPlayerRequestorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;",
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

.field private final module:Lcom/evie/sidescreen/dagger/external/OathPlayerModule;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/dagger/external/OathPlayerModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/external/OathPlayerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/external/OathPlayerModule_ProvidesPlayerRequestorFactory;->module:Lcom/evie/sidescreen/dagger/external/OathPlayerModule;

    .line 22
    iput-object p2, p0, Lcom/evie/sidescreen/dagger/external/OathPlayerModule_ProvidesPlayerRequestorFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/evie/sidescreen/dagger/external/OathPlayerModule;Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/external/OathPlayerModule_ProvidesPlayerRequestorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/dagger/external/OathPlayerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/external/OathPlayerModule_ProvidesPlayerRequestorFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/evie/sidescreen/dagger/external/OathPlayerModule_ProvidesPlayerRequestorFactory;

    invoke-direct {v0, p0, p1}, Lcom/evie/sidescreen/dagger/external/OathPlayerModule_ProvidesPlayerRequestorFactory;-><init>(Lcom/evie/sidescreen/dagger/external/OathPlayerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidesPlayerRequestor(Lcom/evie/sidescreen/dagger/external/OathPlayerModule;Landroid/content/Context;)Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/dagger/external/OathPlayerModule;->providesPlayerRequestor(Landroid/content/Context;)Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 37
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/external/OathPlayerModule_ProvidesPlayerRequestorFactory;->module:Lcom/evie/sidescreen/dagger/external/OathPlayerModule;

    iget-object v1, p0, Lcom/evie/sidescreen/dagger/external/OathPlayerModule_ProvidesPlayerRequestorFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/evie/sidescreen/dagger/external/OathPlayerModule_ProvidesPlayerRequestorFactory;->proxyProvidesPlayerRequestor(Lcom/evie/sidescreen/dagger/external/OathPlayerModule;Landroid/content/Context;)Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/external/OathPlayerModule_ProvidesPlayerRequestorFactory;->get()Lcom/evie/sidescreen/dagger/external/PlayerBuilderRequestor;

    move-result-object v0

    return-object v0
.end method
